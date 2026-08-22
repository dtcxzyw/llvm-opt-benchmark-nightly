Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 288
loop-unroll.NumUnrolled: 487
begin_hunk_0_@_ZL9_get_pathPKN2OT4cff113accelerator_tEP9hb_font_tjR17hb_draw_session_tbPN3CFF7point_tEPl:bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.m

bb.m:                                             ; preds = %bb.v, %_ZN3CFF20cff1_cs_interp_env_tC2IKN2OT4cff113accelerator_tEEERK10hb_array_tIKhERT_jPKij.exit
  %i.co = phi i32 [ %i.br, %_ZN3CFF20cff1_cs_interp_env_tC2IKN2OT4cff113accelerator_tEEERK10hb_array_tIKhERT_jPKij.exit ], [ %.pre36, %bb.v ] ; 2 uses
  %i.cp = phi i32 [ 0, %_ZN3CFF20cff1_cs_interp_env_tC2IKN2OT4cff113accelerator_tEEERK10hb_array_tIKhERT_jPKij.exit ], [ %i.dk, %bb.v ] ; 3 uses
  %.0.i15 = phi i32 [ 200000, %_ZN3CFF20cff1_cs_interp_env_tC2IKN2OT4cff113accelerator_tEEERK10hb_array_tIKhERT_jPKij.exit ], [ %i.dp, %bb.v ] ; 3 uses
  %i.cq = add i32 %i.cp, 1                        ; 3 uses
  %.not.i17 = icmp ugt i32 %i.cq, %i.co
  br i1 %.not.i17, label %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit.thread, label %bb.n, !prof !48

bb.n:                                             ; preds = %bb.m
  %i.cr = load ptr, ptr %7, align 8, !tbaa !306   ; 2 uses
  %i.cs = zext i32 %i.cp to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !61  ; 2 uses
  %i.cv = zext i8 %i.cu to i32
  store i32 %i.cq, ptr %i.bd, align 4, !tbaa !263
  %i.cw = icmp eq i8 %i.cu, 12
  br i1 %i.cw, label %bb.o, label %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit

bb.o:                                             ; preds = %bb.n
  %i.cx = add i32 %i.cp, 2                        ; 2 uses
  %.not5.i = icmp ugt i32 %i.cx, %i.co
  br i1 %.not5.i, label %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit.thread, label %bb.p, !prof !48

bb.p:                                             ; preds = %bb.o
  %i.cy = zext i32 %i.cq to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !61
  %i.db = zext i8 %i.da to i32
  %i.dc = or disjoint i32 %i.db, 256
  store i32 %i.cx, ptr %i.bd, align 4, !tbaa !263
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit

_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit: ; preds = %bb.n, %bb.p
  %.03.i = phi i32 [ %i.dc, %bb.p ], [ %i.cv, %bb.n ] ; 2 uses
  switch i32 %.03.i, label %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit.thread [
    i32 256, label %bb.q
    i32 14, label %bb.r
  ]

bb.q:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit
  store i32 0, ptr %i.cf, align 4, !tbaa !1546
  store i32 0, ptr %i.bb, align 4, !tbaa !1554
  br label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_path_t17cff1_path_param_t22cff1_path_procs_path_tE10process_opEjRNS_20cff1_cs_interp_env_tERS2_.exit

bb.r:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit
  %i.dd = load i8, ptr %i.cd, align 8, !tbaa !1543, !range !220, !noundef !74
  %i.de = trunc nuw i8 %i.dd to i1
  %.pre = load i32, ptr %i.bb, align 4, !tbaa !1554 ; 2 uses
  br i1 %i.de, label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_path_t17cff1_path_param_t22cff1_path_procs_path_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.df = trunc i32 %.pre to i1
  br i1 %i.df, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i.i, label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i.i, !prof !729

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i.i: ; preds = %bb.s
  %i.dg = load i64, ptr %i.cm, align 8, !tbaa !795
  store i64 %i.dg, ptr %i.cc, align 8, !tbaa !795
  store i8 1, ptr %i.ce, align 1, !tbaa !1545
  store i32 1, ptr %i.cf, align 4, !tbaa !1546
  br label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i.i

_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i.i: ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i.i, %bb.s
  store i8 1, ptr %i.cd, align 8, !tbaa !1543
  br label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_path_t17cff1_path_param_t22cff1_path_procs_path_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit.i

_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_path_t17cff1_path_param_t22cff1_path_procs_path_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit.i: ; preds = %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i.i, %bb.r
  %i.dh = icmp ugt i32 %.pre, 3
  br i1 %i.dh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_path_t17cff1_path_param_t22cff1_path_procs_path_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit.i
  call void @_ZN20cff1_cs_opset_path_t12process_seacERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_t(ptr noundef nonnull align 8 dereferenceable(4481) %7, ptr noundef nonnull align 8 dereferenceable(32) %8), !inline_history !1564
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_path_t17cff1_path_param_t22cff1_path_procs_path_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit.i
  store i32 0, ptr %i.cf, align 4, !tbaa !1546
  store i32 0, ptr %i.bb, align 4, !tbaa !1554
  store i8 1, ptr %i.cl, align 8, !tbaa !1553
  br label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_path_t17cff1_path_param_t22cff1_path_procs_path_tE10process_opEjRNS_20cff1_cs_interp_env_tERS2_.exit

_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit.thread: ; preds = %bb.m, %bb.o, %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit
  %.03.i25 = phi i32 [ %.03.i, %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit ], [ 65535, %bb.o ], [ 65535, %bb.m ]
  call void @_ZN3CFF10cs_opset_tINS_8number_tE20cff1_cs_opset_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_t22cff1_path_procs_path_tE10process_opEjRS3_RS4_(i32 noundef %.03.i25, ptr noundef nonnull align 8 dereferenceable(4481) %7, ptr noundef nonnull align 8 dereferenceable(32) %8), !inline_history !1564
  br label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_path_t17cff1_path_param_t22cff1_path_procs_path_tE10process_opEjRNS_20cff1_cs_interp_env_tERS2_.exit

_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_path_t17cff1_path_param_t22cff1_path_procs_path_tE10process_opEjRNS_20cff1_cs_interp_env_tERS2_.exit: ; preds = %bb.q, %bb.u, %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit.thread
  %i.di = load i8, ptr %i.bf, align 8, !tbaa !265, !range !220, !noundef !74
  %i.dj = trunc nuw i8 %i.di to i1
  %.pre36 = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !308 ; 3 uses
  br i1 %i.dj, label %.thread, label %_ZNK3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE8in_errorEv.exit

_ZNK3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE8in_errorEv.exit: ; preds = %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_path_t17cff1_path_param_t22cff1_path_procs_path_tE10process_opEjRNS_20cff1_cs_interp_env_tERS2_.exit
  %i.dk = load i32, ptr %i.bd, align 4, !tbaa !263 ; 2 uses
  %i.dl = icmp ugt i32 %i.dk, %.pre36
  %i.dm = load i8, ptr %i.cn, align 8, !range !220
  %i.dn = trunc nuw i8 %i.dm to i1
  %i.do = select i1 %i.dl, i1 true, i1 %i.dn
  %cond.fr = freeze i1 %i.do                      ; 2 uses
  %i.dp = add i32 %.0.i15, -1                     ; 4 uses
  %.not.i = icmp eq i32 %i.dp, 0
  %brmerge = select i1 %cond.fr, i1 true, i1 %.not.i, !prof !309
  br i1 %brmerge, label %.thread.split.loop.exit, label %bb.v, !prof !309

.thread.split.loop.exit:                          ; preds = %_ZNK3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE8in_errorEv.exit
  %.0.i15.mux.le = select i1 %cond.fr, i32 %.0.i15, i32 %i.dp, !prof !309
  br label %.thread

.thread:                                          ; preds = %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_path_t17cff1_path_param_t22cff1_path_procs_path_tE10process_opEjRNS_20cff1_cs_interp_env_tERS2_.exit, %.thread.split.loop.exit
  %i.dq = phi i32 [ %.0.i15.mux.le, %.thread.split.loop.exit ], [ %.0.i15, %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_path_t17cff1_path_param_t22cff1_path_procs_path_tE10process_opEjRNS_20cff1_cs_interp_env_tERS2_.exit ]
  %i.dr = add i32 %.pre36, 1
  store i32 %i.dr, ptr %i.bd, align 4, !tbaa !263
  br label %.loopexit

bb.v:                                             ; preds = %_ZNK3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE8in_errorEv.exit
  %i.ds = load i8, ptr %i.cl, align 8, !tbaa !1553, !range !220, !noundef !74
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %.loopexit, label %bb.m, !llvm.loop !1565

.loopexit:                                        ; preds = %bb.v, %.thread
  %.06.i = phi i1 [ false, %.thread ], [ true, %bb.v ] ; 2 uses
  %i.du = phi i32 [ %i.dq, %.thread ], [ %i.dp, %bb.v ]
  %.not8.i = icmp eq ptr %6, null
  br i1 %.not8.i, label %_ZN3CFF16cs_interpreter_tINS_20cff1_cs_interp_env_tE20cff1_cs_opset_path_t17cff1_path_param_tE9interpretERS3_Pl.exit, label %bb.w

bb.w:                                             ; preds = %.loopexit
  %i.dv = sub i32 200000, %i.du
  %i.dw = zext i32 %i.dv to i64
  %i.dx = load i64, ptr %6, align 8, !tbaa !196
  %i.dy = sub nsw i64 %i.dx, %i.dw
  store i64 %i.dy, ptr %6, align 8, !tbaa !196
  br label %_ZN3CFF16cs_interpreter_tINS_20cff1_cs_interp_env_tE20cff1_cs_opset_path_t17cff1_path_param_tE9interpretERS3_Pl.exit

_ZN3CFF16cs_interpreter_tINS_20cff1_cs_interp_env_tE20cff1_cs_opset_path_t17cff1_path_param_tE9interpretERS3_Pl.exit: ; preds = %.loopexit, %bb.w
  br i1 %.06.i, label %bb.x, label %bb.ad, !prof !49

bb.x:                                             ; preds = %_ZN3CFF16cs_interpreter_tINS_20cff1_cs_interp_env_tE20cff1_cs_opset_path_t17cff1_path_param_tE9interpretERS3_Pl.exit
  %i.dz = load ptr, ptr %i.ci, align 8, !tbaa !1558 ; 7 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !175 ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !178 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 4 uses
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !197
  %.not.i.i.i = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i.i, label %_ZN17cff1_path_param_t8end_pathEv.exit, label %bb.y, !prof !48

bb.y:                                             ; preds = %bb.x
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dz, i64 20
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !198 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dz, i64 28
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !199
  %i.ej = fcmp une float %i.eg, %i.ei
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 8, !tbaa !200 ; 2 uses
  br i1 %i.ej, label %._crit_edge.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.el = load float, ptr %i.ek, align 8, !tbaa !820
  %i.em = fcmp une float %.pre.i, %i.el
  br i1 %i.em, label %._crit_edge.i, label %bb.ab

._crit_edge.i:                                    ; preds = %bb.z, %bb.y
  %i.en = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !201
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !204 ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i16, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !205
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i: ; preds = %bb.aa, %._crit_edge.i
  %i.et = phi ptr [ %i.es, %bb.aa ], [ null, %._crit_edge.i ]
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(72) %i.ea, ptr noundef %i.ec, ptr noundef nonnull align 4 dereferenceable(48) %i.ed, float noundef %i.eg, float noundef %.pre.i, ptr noundef %i.et) #63, !inline_history !1566
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i, %bb.z
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !208
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !204 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.ex, null
  br i1 %.not.i1.i, label %_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !209
  br label %_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit.i

_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit.i: ; preds = %bb.ac, %bb.ab
  %i.fa = phi ptr [ %i.ez, %bb.ac ], [ null, %bb.ab ]
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(72) %i.ea, ptr noundef %i.ec, ptr noundef nonnull align 4 dereferenceable(48) %i.ed, ptr noundef %i.fa) #63, !inline_history !1567
  br label %_ZN17cff1_path_param_t8end_pathEv.exit

_ZN17cff1_path_param_t8end_pathEv.exit:           ; preds = %bb.x, %_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ed, i8 0, i64 20, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN3CFF16cs_interpreter_tINS_20cff1_cs_interp_env_tE20cff1_cs_opset_path_t17cff1_path_param_tE9interpretERS3_Pl.exit, %_ZN17cff1_path_param_t8end_pathEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #63
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b, %bb.ad
  %.1 = phi i1 [ %.06.i, %bb.ad ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2OT4cff120accelerator_subset_t19get_seac_componentsEjPjS2_(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.CFF::cff1_cs_interp_env_t", align 8 ; 38 uses
  %5 = alloca %"struct.CFF::cs_interpreter_t", align 8 ; 4 uses
  %6 = alloca %struct.get_seac_param_t, align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1568
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp uge i32 %1, %i.e
  %or.cond = select i1 %i.c, i1 true, i1 %i.f, !prof !252
  br i1 %or.cond, label %.critedge, label %bb.b, !prof !252

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1572 ; 5 uses
  %i.i = icmp eq ptr %i.h, @_hb_NullPool
  br i1 %i.i, label %_ZNK3CFF8FDSelect6get_fdEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %i.h, align 1, !tbaa !92
  switch i8 %i.j, label %_ZNK3CFF8FDSelect6get_fdEj.exit [
    i8 0, label %bb.d
    i8 3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.l = zext i32 %1 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !92
  br label %_ZNK3CFF8FDSelect6get_fdEj.exit

bb.e:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 3 uses
  %i.p = load i16, ptr %i.o, align 1, !tbaa !62
  %.not.i.not.i.i = icmp eq i16 %i.p, 0
  br i1 %.not.i.not.i.i, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit.i.i, label %bb.f, !prof !48

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %.sroa.0.0.copyload.i.pre.i.i = load i16, ptr %i.o, align 1, !tbaa !61
  br label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit.i.i

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.copyload.i.i.i = phi i16 [ %.sroa.0.0.copyload.i.pre.i.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.q, %bb.f ], [ @_hb_NullPool, %bb.e ]
  %i.r = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i.i) ; 3 uses
  %.not3.i.i.i.i = icmp ugt i16 %i.r, 1
  br i1 %.not3.i.i.i.i, label %.lr.ph.preheader.i.i.i.i, label %.loopexit.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit.i.i
  %i.s = zext i16 %i.r to i32
  %i.t = add nsw i32 %i.s, -2
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %.lr.ph.preheader.i.i.i.i
  %.0205.i.i.i.i = phi i32 [ %.2.i.i.i.i, %bb.h ], [ %i.t, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.0214.i.i.i.i = phi i32 [ %.223.i.i.i.i, %bb.h ], [ 0, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %i.u = add i32 %.0214.i.i.i.i, %.0205.i.i.i.i
  %i.v = lshr i32 %i.u, 1                         ; 3 uses
  %i.w = zext nneg i32 %i.v to i64
  %i.x = mul nuw nsw i64 %i.w, 3
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.x ; 3 uses
  %i.z = load i16, ptr %i.y, align 1, !tbaa !62
  %i.aa = tail call noundef i16 @llvm.bswap.i16(i16 %i.z)
  %i.ab = zext i16 %i.aa to i32
  %i.ac = icmp ult i32 %1, %i.ab
  br i1 %i.ac, label %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i.i, label %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.i.i.i.i

_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.ae = load i16, ptr %i.ad, align 1, !tbaa !62
  %i.af = tail call noundef i16 @llvm.bswap.i16(i16 %i.ae)
  %i.ag = zext i16 %i.af to i32
  %.not2.i.i.i.i = icmp ult i32 %1, %i.ag
  br i1 %.not2.i.i.i.i, label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE6get_fdEj.exit.i, label %bb.g

_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ah = add nsw i32 %i.v, -1
  br label %bb.h

bb.g:                                             ; preds = %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.i.i.i.i
  %i.ai = add nuw nsw i32 %i.v, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i.i
  %.223.i.i.i.i = phi i32 [ %i.ai, %bb.g ], [ %.0214.i.i.i.i, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i.i ] ; 2 uses
  %.2.i.i.i.i = phi i32 [ %.0205.i.i.i.i, %bb.g ], [ %i.ah, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i.i ] ; 2 uses
  %.not.not.i.i.i.i = icmp sgt i32 %.223.i.i.i.i, %.2.i.i.i.i
  br i1 %.not.not.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1528

.loopexit.i.i:                                    ; preds = %bb.h, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit.i.i
  %.not.i4.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %.not.i4.not.i.i, label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE6get_fdEj.exit.i, label %bb.i, !prof !48

bb.i:                                             ; preds = %.loopexit.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.aj = zext i16 %i.r to i64
  %i.ak = getelementptr [3 x i8], ptr %i.o, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 -1
  br label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE6get_fdEj.exit.i

_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE6get_fdEj.exit.i: ; preds = %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.i.i.i.i, %bb.i, %.loopexit.i.i
  %.pn.i.i = phi ptr [ @_hb_NullPool, %.loopexit.i.i ], [ %i.al, %bb.i ], [ %i.y, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !92
  br label %_ZNK3CFF8FDSelect6get_fdEj.exit

_ZNK3CFF8FDSelect6get_fdEj.exit:                  ; preds = %bb.b, %bb.c, %bb.d, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE6get_fdEj.exit.i
  %.0.shrunk.i = phi i8 [ %i.an, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE6get_fdEj.exit.i ], [ 0, %bb.b ], [ %i.n, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.0.i = zext i8 %.0.shrunk.i to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1573
  %i.aq = tail call { ptr, i64 } @_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEEixEj(ptr noundef nonnull align 1 dereferenceable(4) %i.ap, i32 noundef %1) ; 2 uses
  %i.ar = extractvalue { ptr, i64 } %i.aq, 0      ; 2 uses
  %i.as = extractvalue { ptr, i64 } %i.aq, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #63
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1574 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !1575
  %.not.i.i = icmp ugt i32 %i.aw, %.0.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = zext i8 %.0.shrunk.i to i64
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %i.ay, i64 %i.az
  %.0.i.i = select i1 %.not.i.i, ptr %i.ba, ptr @_hb_NullPool, !prof !49
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1576 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4108) %i.bd, i8 0, i64 4108, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %i.be, align 8
  store ptr %i.ar, ptr %4, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.as, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.bf, align 4, !tbaa !263
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 4128
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 4168
  store i8 0, ptr %i.bh, align 8, !tbaa !265
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 4172
  %.ptr.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.1.i.i.i.i, i8 0, i64 16, i1 false)
  %.ptr.2.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.2.i.i.i.i, i8 0, i64 16, i1 false)
  %.ptr.3.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.3.i.i.i.i, i8 0, i64 16, i1 false)
  %.ptr.4.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.4.i.i.i.i, i8 0, i64 16, i1 false)
  %.ptr.5.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.5.i.i.i.i, i8 0, i64 16, i1 false)
  %.ptr.6.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.6.i.i.i.i, i8 0, i64 16, i1 false)
  %.ptr.7.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.7.i.i.i.i, i8 0, i64 16, i1 false)
  %.ptr.8.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4368
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.8.i.i.i.i, i8 0, i64 16, i1 false)
  %.ptr.9.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4392
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.9.i.i.i.i, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bi, i8 0, i64 20, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 4448
  %.sroa.2.12.insert.mask.i.i = and i64 %i.as, 4294967295
  store ptr %i.ar, ptr %i.bg, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4136
  store i64 %.sroa.2.12.insert.mask.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 4144
  store i32 0, ptr %i.bk, align 8, !tbaa !267
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 4148
  store i32 0, ptr %i.bl, align 4, !tbaa !270
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 4153
  store i8 1, ptr %i.bm, align 1, !tbaa !1534
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 4154
  store i8 0, ptr %i.bn, align 2, !tbaa !1537
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 4156
  store i32 0, ptr %i.bo, align 4, !tbaa !1538
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 4160
  store i32 0, ptr %i.bp, align 8, !tbaa !1539
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 4164
  store i32 0, ptr %i.bq, align 4, !tbaa !1540
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 4416
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 4424
end_hunk_0
begin_hunk_1_@_ZNK2OT18glyf_accelerator_t10get_pointsINS_9glyf_impl14path_builder_tEEEbP9hb_font_tjT_10hb_array_tIKiER17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE:bb.a
  %i.p = shl nuw nsw i32 %i.o, 1
  %i.q = add nuw i32 %2, 1
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.r
  %i.t = load i16, ptr %i.s, align 1, !tbaa !62, !noalias !2556
  %i.u = tail call noundef i16 @llvm.bswap.i16(i16 %i.t)
  %i.v = zext i16 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.k
  %i.y = load i32, ptr %i.x, align 1, !tbaa !58, !noalias !2556
  %i.z = tail call noundef i32 @llvm.bswap.i32(i32 %i.y)
  %i.aa = add nuw i32 %2, 1
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 1, !tbaa !58, !noalias !2556
  %i.ae = tail call noundef i32 @llvm.bswap.i32(i32 %i.ad)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.018.i = phi i32 [ %i.w, %bb.c ], [ %i.ae, %bb.d ] ; 3 uses
  %.0.i = phi i32 [ %i.p, %bb.c ], [ %i.z, %bb.d ] ; 3 uses
  %i.af = icmp ugt i32 %.0.i, %.018.i
  br i1 %i.af, label %.critedge.i, label %bb.f, !prof !48

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !51, !noalias !2556 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr @_hb_NullPool, ptr %i.ah ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !57, !noalias !2556
  %i.ak = icmp ugt i32 %.018.i, %i.aj
  br i1 %i.ak, label %.critedge.i, label %_ZN2OT9glyf_impl5GlyphC2E10hb_array_tIKcEj.exit.i, !prof !48

.critedge.i:                                      ; preds = %bb.f, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 16, i1 false), !alias.scope !2556
  store ptr @_hb_NullPool, ptr %i.al, align 8, !tbaa !2559, !alias.scope !2556
  br label %_ZNK2OT18glyf_accelerator_t13glyph_for_gidEjb.exit

_ZN2OT9glyf_impl5GlyphC2E10hb_array_tIKcEj.exit.i: ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !54, !noalias !2556
  %i.ao = zext i32 %.0.i to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao ; 2 uses
  %i.aq = sub i32 %.018.i, %.0.i                  ; 2 uses
  %.sroa.2.8.insert.ext.i = zext i32 %i.aq to i64
  %i.ar = icmp ult i32 %i.aq, 10
  %spec.select.i.i24.i = select i1 %i.ar, ptr @_hb_NullPool, ptr %i.ap ; 2 uses
  %i.as = load i16, ptr %spec.select.i.i24.i, align 1, !tbaa !62, !noalias !2556 ; 2 uses
  %i.at = icmp eq i16 %i.as, 0
  %i.au = tail call i16 @llvm.bswap.i16(i16 %i.as)
  %i.av = icmp sgt i16 %i.au, 0
  %spec.select = select i1 %i.av, i32 1, i32 2
  %.sroa.7.0 = select i1 %i.at, i32 0, i32 %spec.select, !prof !48
  store ptr %i.ap, ptr %8, align 8
  %.sroa.4520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.sroa.2.8.insert.ext.i, ptr %.sroa.4520.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %spec.select.i.i24.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %_ZNK2OT18glyf_accelerator_t13glyph_for_gidEjb.exit

_ZNK2OT18glyf_accelerator_t13glyph_for_gidEjb.exit: ; preds = %.critedge.i, %_ZN2OT9glyf_impl5GlyphC2E10hb_array_tIKcEj.exit.i
  %.sink605 = phi i32 [ -1, %.critedge.i ], [ %2, %_ZN2OT9glyf_impl5GlyphC2E10hb_array_tIKcEj.exit.i ]
  %.sink = phi i32 [ 0, %.critedge.i ], [ %.sroa.7.0, %_ZN2OT9glyf_impl5GlyphC2E10hb_array_tIKcEj.exit.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 %.sink605, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i32 %.sink, ptr %i.ax, align 4
  store ptr %4, ptr %9, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %5, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ay = call noundef zeroext i1 @_ZNK2OT9glyf_impl5Glyph10get_pointsINS_18glyf_accelerator_tEEEbP9hb_font_tRKT_R22contour_point_vector_tR17hb_glyf_scratch_tPS9_P16head_maxp_info_tPjbbb10hb_array_tIKiEPNS_17hb_scalar_cache_tEjSG_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(152) %6, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull byval(%struct.hb_array_t.0) align 8 %9, ptr noundef %7, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #63
  br i1 %i.ay, label %bb.g, label %.loopexit522, !prof !49

bb.g:                                             ; preds = %_ZNK2OT18glyf_accelerator_t13glyph_for_gidEjb.exit
  %i.az = load i32, ptr %i.c, align 4, !tbaa !193
  %i.ba = add i32 %i.az, -4                       ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !2564 ; 4 uses
  %.not536 = icmp eq i32 %i.ba, 0
  br i1 %.not536, label %.loopexit522, label %.lr.ph535

.lr.ph535:                                        ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %.sroa_idx447 = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 15 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 6 uses
  %.sroa_idx451 = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 15 uses
  %.sroa_idx455 = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 18 uses
  %.sroa.15433.0..sroa_idx436 = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %wide.trip.count = zext i32 %i.ba to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph535, %.loopexit
  %.050533 = phi i32 [ 0, %.lr.ph535 ], [ %i.tn, %.loopexit ] ; 6 uses
  %i.bk = zext i32 %.050533 to i64                ; 4 uses
  %i.bl = getelementptr inbounds nuw [12 x i8], ptr %i.bc, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i8, ptr %i.bm, align 4, !tbaa !2565
  %i.bo = and i8 %i.bn, 1
  %.not57 = icmp eq i8 %i.bo, 0
  %i.bp = icmp ult i32 %.050533, %i.ba            ; 2 uses
  br i1 %.not57, label %.preheader, label %.preheader521

.preheader521:                                    ; preds = %bb.h
  br i1 %i.bp, label %.lr.ph, label %.loopexit

.preheader:                                       ; preds = %bb.h
  br i1 %i.bp, label %.lr.ph528, label %.critedge

.lr.ph:                                           ; preds = %.preheader521, %bb.aq
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.aq ], [ %i.bk, %.preheader521 ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %i.bc, i64 %indvars.iv ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !2565
  %i.bt = and i8 %i.bs, 1
  %.not.i77 = icmp eq i8 %i.bt, 0                 ; 3 uses
  %i.bu = load ptr, ptr %3, align 8, !tbaa !188
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 80
  %i.bw = load <2 x float>, ptr %i.bq, align 4, !tbaa !94
  %i.bx = load <2 x float>, ptr %i.bv, align 8, !tbaa !94
  %i.by = fmul <2 x float> %i.bw, %i.bx           ; 17 uses
  %i.bz = load i8, ptr %i.bd, align 8, !tbaa !192, !range !220, !noundef !74
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.x, label %bb.i, !prof !49

bb.i:                                             ; preds = %.lr.ph
  br i1 %.not.i77, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %i.bd, align 8
  store <2 x float> %i.by, ptr %.sroa_idx447, align 4
  %i.cb = load ptr, ptr %i.be, align 8, !tbaa !191 ; 8 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !175 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !178 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 4 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !197
  %.not.i.i96 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i96, label %_ZN17hb_draw_session_t7move_toEff.exit99, label %bb.k, !prof !49

bb.k:                                             ; preds = %bb.j
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 20
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !198 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 28
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !199
  %i.cl = fcmp une float %i.ci, %i.ck
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %.pre = load float, ptr %.phi.trans.insert, align 8, !tbaa !200 ; 2 uses
  br i1 %i.cl, label %._crit_edge553, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cn = load float, ptr %i.cm, align 8, !tbaa !820
  %i.co = fcmp une float %.pre, %i.cn
  br i1 %i.co, label %._crit_edge553, label %bb.n

._crit_edge553:                                   ; preds = %bb.k, %bb.l
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !201
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !204 ; 2 uses
  %.not.i138 = icmp eq ptr %i.cs, null
  br i1 %.not.i138, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge553
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !205
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit: ; preds = %._crit_edge553, %bb.m
  %i.cv = phi ptr [ %i.cu, %bb.m ], [ null, %._crit_edge553 ]
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(72) %i.cc, ptr noundef %i.ce, ptr noundef nonnull align 4 dereferenceable(48) %i.cf, float noundef %i.ci, float noundef %.pre, ptr noundef %i.cv) #63, !inline_history !821
  br label %bb.n

bb.n:                                             ; preds = %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit, %bb.l
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !208
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !204 ; 2 uses
  %.not.i139 = icmp eq ptr %i.cz, null
  br i1 %.not.i139, label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i98, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !209
  br label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i98

_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i98: ; preds = %bb.o, %bb.n
  %i.dc = phi ptr [ %i.db, %bb.o ], [ null, %bb.n ]
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(72) %i.cc, ptr noundef %i.ce, ptr noundef nonnull align 4 dereferenceable(48) %i.cf, ptr noundef %i.dc) #63, !inline_history !822
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cf, i8 0, i64 12, i1 false)
  br label %_ZN17hb_draw_session_t7move_toEff.exit99

_ZN17hb_draw_session_t7move_toEff.exit99:         ; preds = %bb.j, %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i98
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cb, i64 28
  store <2 x float> %i.by, ptr %i.dd, align 4, !tbaa !94
  br label %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit95

bb.p:                                             ; preds = %bb.i
  %i.de = load i8, ptr %i.bf, align 4, !tbaa !192, !range !220, !noundef !74
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.dg = load <2 x float>, ptr %.sroa_idx451, align 8, !tbaa !94
  %i.dh = fadd <2 x float> %i.by, %i.dg
  %i.di = fmul <2 x float> %i.dh, splat (float 5.000000e-01) ; 2 uses
  store i32 1, ptr %i.bd, align 8
  store <2 x float> %i.di, ptr %.sroa_idx447, align 4, !tbaa !94
  store i32 1, ptr %i.bg, align 4
  store <2 x float> %i.by, ptr %.sroa_idx455, align 8
  %i.dj = load ptr, ptr %i.be, align 8, !tbaa !191 ; 8 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !175 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !178 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 4 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !197
  %.not.i.i = icmp eq i32 %i.do, 0
  br i1 %.not.i.i, label %_ZN17hb_draw_session_t7move_toEff.exit, label %bb.r, !prof !49

bb.r:                                             ; preds = %bb.q
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !198 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 28
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !199
  %i.dt = fcmp une float %i.dq, %i.ds
  %.phi.trans.insert555 = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %.pre556 = load float, ptr %.phi.trans.insert555, align 8, !tbaa !200 ; 2 uses
  br i1 %i.dt, label %._crit_edge554, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.du = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.dv = load float, ptr %i.du, align 8, !tbaa !820
  %i.dw = fcmp une float %.pre556, %i.dv
  br i1 %i.dw, label %._crit_edge554, label %bb.u

._crit_edge554:                                   ; preds = %bb.r, %bb.s
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !201
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dk, i64 56
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !204 ; 2 uses
  %.not.i140 = icmp eq ptr %i.ea, null
  br i1 %.not.i140, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit141, label %bb.t

bb.t:                                             ; preds = %._crit_edge554
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !205
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit141

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit141: ; preds = %._crit_edge554, %bb.t
  %i.ed = phi ptr [ %i.ec, %bb.t ], [ null, %._crit_edge554 ]
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(72) %i.dk, ptr noundef %i.dm, ptr noundef nonnull align 4 dereferenceable(48) %i.dn, float noundef %i.dq, float noundef %.pre556, ptr noundef %i.ed) #63, !inline_history !821
  br label %bb.u

bb.u:                                             ; preds = %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit141, %bb.s
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !208
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dk, i64 56
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !204 ; 2 uses
  %.not.i142 = icmp eq ptr %i.eh, null
  br i1 %.not.i142, label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !209
  br label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i

_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i: ; preds = %bb.v, %bb.u
  %i.ek = phi ptr [ %i.ej, %bb.v ], [ null, %bb.u ]
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(72) %i.dk, ptr noundef %i.dm, ptr noundef nonnull align 4 dereferenceable(48) %i.dn, ptr noundef %i.ek) #63, !inline_history !822
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dn, i8 0, i64 12, i1 false)
  br label %_ZN17hb_draw_session_t7move_toEff.exit

_ZN17hb_draw_session_t7move_toEff.exit:           ; preds = %bb.q, %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.dj, i64 28
  store <2 x float> %i.di, ptr %i.el, align 4, !tbaa !94
  br label %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit95

bb.w:                                             ; preds = %bb.p
  store i32 1, ptr %i.bf, align 4
  store <2 x float> %i.by, ptr %.sroa_idx451, align 8
  br label %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit95

bb.x:                                             ; preds = %.lr.ph
  %i.em = load i8, ptr %i.bg, align 4, !tbaa !192, !range !220, !noundef !74
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.y, label %bb.ak

bb.y:                                             ; preds = %bb.x
  br i1 %.not.i77, label %bb.ah, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eo = load i8, ptr %i.bh, align 8, !tbaa !192, !range !220, !noundef !74
  %i.ep = trunc nuw i8 %i.eo to i1
  %i.eq = load ptr, ptr %i.be, align 8, !tbaa !191 ; 8 uses
  br i1 %i.ep, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.er = load float, ptr %i.bi, align 4, !tbaa !2567
  %i.es = load float, ptr %i.bj, align 8, !tbaa !2568
  %i.et = load float, ptr %.sroa_idx455, align 8, !tbaa !2569
  %i.eu = load float, ptr %.sroa.15433.0..sroa_idx436, align 4, !tbaa !2570
  %i.ev = load ptr, ptr %i.eq, align 8, !tbaa !175 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !178 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 3 uses
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !197
  %.not.i.i116 = icmp eq i32 %i.ez, 0
  br i1 %.not.i.i116, label %bb.ab, label %_ZN17hb_draw_session_t8cubic_toEffffff.exit, !prof !48

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.ev, ptr noundef %i.ex, ptr noundef nonnull align 4 dereferenceable(48) %i.ey)
  br label %_ZN17hb_draw_session_t8cubic_toEffffff.exit

_ZN17hb_draw_session_t8cubic_toEffffff.exit:      ; preds = %bb.aa, %bb.ab
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 40
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !814
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 56
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !204 ; 2 uses
  %.not.i144 = icmp eq ptr %i.fd, null
  br i1 %.not.i144, label %_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !815
  br label %_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit

_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit: ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit, %bb.ac
  %i.fg = phi ptr [ %i.ff, %bb.ac ], [ null, %_ZN17hb_draw_session_t8cubic_toEffffff.exit ]
  %i.fh = extractelement <2 x float> %i.by, i64 0
  %i.fi = extractelement <2 x float> %i.by, i64 1
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(72) %i.ev, ptr noundef %i.ex, ptr noundef nonnull align 4 dereferenceable(48) %i.ey, float noundef %i.er, float noundef %i.es, float noundef %i.et, float noundef %i.eu, float noundef %i.fh, float noundef %i.fi, ptr noundef %i.fg) #63, !inline_history !816
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eq, i64 28
  store <2 x float> %i.by, ptr %i.fj, align 4, !tbaa !94
  store i8 0, ptr %i.bh, align 8, !tbaa !444
  br label %bb.ag

bb.ad:                                            ; preds = %bb.z
  %i.fk = load float, ptr %.sroa_idx455, align 8, !tbaa !2569
  %i.fl = load float, ptr %.sroa.15433.0..sroa_idx436, align 4, !tbaa !2570
  %i.fm = load ptr, ptr %i.eq, align 8, !tbaa !175 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !178 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 3 uses
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !197
  %.not.i.i122 = icmp eq i32 %i.fq, 0
  br i1 %.not.i.i122, label %bb.ae, label %_ZN17hb_draw_session_t12quadratic_toEffff.exit123, !prof !48

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.fm, ptr noundef %i.fo, ptr noundef nonnull align 4 dereferenceable(48) %i.fp)
  br label %_ZN17hb_draw_session_t12quadratic_toEffff.exit123

_ZN17hb_draw_session_t12quadratic_toEffff.exit123: ; preds = %bb.ad, %bb.ae
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !813
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fm, i64 56
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !204 ; 2 uses
  %.not.i145 = icmp eq ptr %i.fu, null
  br i1 %.not.i145, label %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit, label %bb.af

bb.af:                                            ; preds = %_ZN17hb_draw_session_t12quadratic_toEffff.exit123
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !812
  br label %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit

_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit: ; preds = %_ZN17hb_draw_session_t12quadratic_toEffff.exit123, %bb.af
  %i.fx = phi ptr [ %i.fw, %bb.af ], [ null, %_ZN17hb_draw_session_t12quadratic_toEffff.exit123 ]
  %i.fy = extractelement <2 x float> %i.by, i64 0
  %i.fz = extractelement <2 x float> %i.by, i64 1
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(72) %i.fm, ptr noundef %i.fo, ptr noundef nonnull align 4 dereferenceable(48) %i.fp, float noundef %i.fk, float noundef %i.fl, float noundef %i.fy, float noundef %i.fz, ptr noundef %i.fx) #63, !inline_history !823
  %i.ga = getelementptr inbounds nuw i8, ptr %i.eq, i64 28
  store <2 x float> %i.by, ptr %i.ga, align 4, !tbaa !94
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit, %_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit
  store i8 0, ptr %i.bg, align 4, !tbaa !444
  br label %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit95

bb.ah:                                            ; preds = %bb.y
  %i.gb = load <2 x float>, ptr %.sroa_idx455, align 8, !tbaa !94 ; 3 uses
  %i.gc = fadd <2 x float> %i.by, %i.gb
  %i.gd = fmul <2 x float> %i.gc, splat (float 5.000000e-01) ; 3 uses
  %i.ge = load ptr, ptr %i.be, align 8, !tbaa !191 ; 4 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !175 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !178 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 3 uses
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !197
  %.not.i.i121 = icmp eq i32 %i.gj, 0
  br i1 %.not.i.i121, label %bb.ai, label %_ZN17hb_draw_session_t12quadratic_toEffff.exit, !prof !48

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.gf, ptr noundef %i.gh, ptr noundef nonnull align 4 dereferenceable(48) %i.gi)
  br label %_ZN17hb_draw_session_t12quadratic_toEffff.exit

_ZN17hb_draw_session_t12quadratic_toEffff.exit:   ; preds = %bb.ah, %bb.ai
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !813
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gf, i64 56
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !204 ; 2 uses
  %.not.i153 = icmp eq ptr %i.gn, null
  br i1 %.not.i153, label %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit154, label %bb.aj

bb.aj:                                            ; preds = %_ZN17hb_draw_session_t12quadratic_toEffff.exit
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !812
  br label %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit154

_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit154: ; preds = %_ZN17hb_draw_session_t12quadratic_toEffff.exit, %bb.aj
  %i.gq = phi ptr [ %i.gp, %bb.aj ], [ null, %_ZN17hb_draw_session_t12quadratic_toEffff.exit ]
  %i.gr = extractelement <2 x float> %i.gd, i64 0
  %i.gs = extractelement <2 x float> %i.gd, i64 1
  %i.gt = extractelement <2 x float> %i.gb, i64 0
  %i.gu = extractelement <2 x float> %i.gb, i64 1
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(72) %i.gf, ptr noundef %i.gh, ptr noundef nonnull align 4 dereferenceable(48) %i.gi, float noundef %i.gt, float noundef %i.gu, float noundef %i.gr, float noundef %i.gs, ptr noundef %i.gq) #63, !inline_history !823
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ge, i64 28
  store <2 x float> %i.gd, ptr %i.gv, align 4, !tbaa !94
  store i32 1, ptr %i.bg, align 4
  store <2 x float> %i.by, ptr %.sroa_idx455, align 8
  br label %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit95

bb.ak:                                            ; preds = %bb.x
  br i1 %.not.i77, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gw = load ptr, ptr %i.be, align 8, !tbaa !191 ; 4 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !175 ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !178 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 3 uses
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !197
  %.not.i.i132 = icmp eq i32 %i.hb, 0
  br i1 %.not.i.i132, label %bb.am, label %_ZN17hb_draw_session_t7line_toEff.exit, !prof !48

bb.am:                                            ; preds = %bb.al
  call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.gx, ptr noundef %i.gz, ptr noundef nonnull align 4 dereferenceable(48) %i.ha)
  br label %_ZN17hb_draw_session_t7line_toEff.exit

_ZN17hb_draw_session_t7line_toEff.exit:           ; preds = %bb.al, %bb.am
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !201
  %i.he = getelementptr inbounds nuw i8, ptr %i.gx, i64 56
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !204 ; 2 uses
  %.not.i155 = icmp eq ptr %i.hf, null
  br i1 %.not.i155, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit156, label %bb.an

bb.an:                                            ; preds = %_ZN17hb_draw_session_t7line_toEff.exit
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !205
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit156

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit156: ; preds = %_ZN17hb_draw_session_t7line_toEff.exit, %bb.an
  %i.hi = phi ptr [ %i.hh, %bb.an ], [ null, %_ZN17hb_draw_session_t7line_toEff.exit ]
  %i.hj = extractelement <2 x float> %i.by, i64 0
  %i.hk = extractelement <2 x float> %i.by, i64 1
  call void %i.hd(ptr noundef nonnull align 8 dereferenceable(72) %i.gx, ptr noundef %i.gz, ptr noundef nonnull align 4 dereferenceable(48) %i.ha, float noundef %i.hj, float noundef %i.hk, ptr noundef %i.hi) #63, !inline_history !821
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gw, i64 28
  store <2 x float> %i.by, ptr %i.hl, align 4, !tbaa !94
  br label %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit95

bb.ao:                                            ; preds = %bb.ak
  store i32 1, ptr %i.bg, align 4
  store <2 x float> %i.by, ptr %.sroa_idx455, align 8
  br label %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit95

_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit95: ; preds = %_ZN17hb_draw_session_t7move_toEff.exit99, %_ZN17hb_draw_session_t7move_toEff.exit, %bb.w, %bb.ag, %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit154, %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit156, %bb.ao
  %i.hm = getelementptr inbounds nuw i8, ptr %i.bq, i64 9
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !2571, !range !220, !noundef !74
  %i.ho = trunc nuw i8 %i.hn to i1
  br i1 %i.ho, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit95
  %i.hp = trunc nuw i64 %indvars.iv to i32
  br label %.loopexit.sink.split

bb.aq:                                            ; preds = %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit95
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !2572

.lr.ph528:                                        ; preds = %.preheader, %bb.ar
  %indvars.iv544 = phi i64 [ %indvars.iv.next545, %bb.ar ], [ %i.bk, %.preheader ] ; 3 uses
  %i.hq = getelementptr inbounds nuw [12 x i8], ptr %i.bc, i64 %indvars.iv544 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 9
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !2571, !range !220, !noundef !74
  %i.ht = trunc nuw i8 %i.hs to i1
  br i1 %i.ht, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph528
  %indvars.iv.next545 = add nuw nsw i64 %indvars.iv544, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next545 to i32
  %exitcond547.not = icmp eq i32 %i.ba, %lftr.wideiv
  br i1 %exitcond547.not, label %.critedge, label %.lr.ph528, !llvm.loop !2573

bb.as:                                            ; preds = %.lr.ph528
  %i.hu = trunc nuw i64 %indvars.iv544 to i32     ; 7 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hw = load i8, ptr %i.hv, align 4, !tbaa !2565
  %i.hx = and i8 %i.hw, 1
  %.not.i58 = icmp eq i8 %i.hx, 0                 ; 3 uses
  %i.hy = load ptr, ptr %3, align 8, !tbaa !188
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 80
  %i.ia = load <2 x float>, ptr %i.hq, align 4, !tbaa !94
  %i.ib = load <2 x float>, ptr %i.hz, align 8, !tbaa !94
  %i.ic = fmul <2 x float> %i.ia, %i.ib           ; 17 uses
  %i.id = load i8, ptr %i.bd, align 8, !tbaa !192, !range !220, !noundef !74
  %i.ie = trunc nuw i8 %i.id to i1
  br i1 %i.ie, label %bb.bi, label %bb.at, !prof !49

bb.at:                                            ; preds = %bb.as
  br i1 %.not.i58, label %bb.ba, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i32 1, ptr %i.bd, align 8
  store <2 x float> %i.ic, ptr %.sroa_idx447, align 4
  %i.if = load ptr, ptr %i.be, align 8, !tbaa !191 ; 8 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !175 ; 6 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !178 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 16 ; 4 uses
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !197
  %.not.i.i104 = icmp eq i32 %i.ik, 0
  br i1 %.not.i.i104, label %_ZN17hb_draw_session_t7move_toEff.exit107, label %bb.av, !prof !49

bb.av:                                            ; preds = %bb.au
  %i.il = getelementptr inbounds nuw i8, ptr %i.if, i64 20
  %i.im = load float, ptr %i.il, align 4, !tbaa !198 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.if, i64 28
  %i.io = load float, ptr %i.in, align 4, !tbaa !199
  %i.ip = fcmp une float %i.im, %i.io
  %.phi.trans.insert558 = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %.pre559 = load float, ptr %.phi.trans.insert558, align 8, !tbaa !200 ; 2 uses
  br i1 %i.ip, label %._crit_edge557, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.iq = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %i.ir = load float, ptr %i.iq, align 8, !tbaa !820
  %i.is = fcmp une float %.pre559, %i.ir
  br i1 %i.is, label %._crit_edge557, label %bb.ay

._crit_edge557:                                   ; preds = %bb.av, %bb.aw
  %i.it = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !201
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ig, i64 56
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !204 ; 2 uses
  %.not.i157 = icmp eq ptr %i.iw, null
  br i1 %.not.i157, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit158, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge557
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !205
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit158

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit158: ; preds = %._crit_edge557, %bb.ax
  %i.iz = phi ptr [ %i.iy, %bb.ax ], [ null, %._crit_edge557 ]
  call void %i.iu(ptr noundef nonnull align 8 dereferenceable(72) %i.ig, ptr noundef %i.ii, ptr noundef nonnull align 4 dereferenceable(48) %i.ij, float noundef %i.im, float noundef %.pre559, ptr noundef %i.iz) #63, !inline_history !821
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit158, %bb.aw
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ig, i64 48
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !208
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ig, i64 56
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !204 ; 2 uses
  %.not.i159 = icmp eq ptr %i.jd, null
  br i1 %.not.i159, label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i106, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 32
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !209
  br label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i106

_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i106: ; preds = %bb.az, %bb.ay
  %i.jg = phi ptr [ %i.jf, %bb.az ], [ null, %bb.ay ]
  call void %i.jb(ptr noundef nonnull align 8 dereferenceable(72) %i.ig, ptr noundef %i.ii, ptr noundef nonnull align 4 dereferenceable(48) %i.ij, ptr noundef %i.jg) #63, !inline_history !822
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ij, i8 0, i64 12, i1 false)
  br label %_ZN17hb_draw_session_t7move_toEff.exit107

_ZN17hb_draw_session_t7move_toEff.exit107:        ; preds = %bb.au, %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i106
  %i.jh = getelementptr inbounds nuw i8, ptr %i.if, i64 28
  store <2 x float> %i.ic, ptr %i.jh, align 4, !tbaa !94
  br label %.critedge

bb.ba:                                            ; preds = %bb.at
  %i.ji = load i8, ptr %i.bf, align 4, !tbaa !192, !range !220, !noundef !74
  %i.jj = trunc nuw i8 %i.ji to i1
  br i1 %i.jj, label %bb.bb, label %bb.bh

bb.bb:                                            ; preds = %bb.ba
  %i.jk = load <2 x float>, ptr %.sroa_idx451, align 8, !tbaa !94
  %i.jl = fadd <2 x float> %i.ic, %i.jk
  %i.jm = fmul <2 x float> %i.jl, splat (float 5.000000e-01) ; 2 uses
  store i32 1, ptr %i.bd, align 8
  store <2 x float> %i.jm, ptr %.sroa_idx447, align 4, !tbaa !94
  store i32 1, ptr %i.bg, align 4
  store <2 x float> %i.ic, ptr %.sroa_idx455, align 8
  %i.jn = load ptr, ptr %i.be, align 8, !tbaa !191 ; 8 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !175 ; 6 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !178 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 4 uses
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !197
  %.not.i.i100 = icmp eq i32 %i.js, 0
  br i1 %.not.i.i100, label %_ZN17hb_draw_session_t7move_toEff.exit103, label %bb.bc, !prof !49

bb.bc:                                            ; preds = %bb.bb
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jn, i64 20
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !198 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jn, i64 28
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !199
  %i.jx = fcmp une float %i.ju, %i.jw
  %.phi.trans.insert561 = getelementptr inbounds nuw i8, ptr %i.jn, i64 24
  %.pre562 = load float, ptr %.phi.trans.insert561, align 8, !tbaa !200 ; 2 uses
  br i1 %i.jx, label %._crit_edge560, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jn, i64 32
  %i.jz = load float, ptr %i.jy, align 8, !tbaa !820
  %i.ka = fcmp une float %.pre562, %i.jz
  br i1 %i.ka, label %._crit_edge560, label %bb.bf

._crit_edge560:                                   ; preds = %bb.bc, %bb.bd
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !201
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jo, i64 56
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !204 ; 2 uses
  %.not.i168 = icmp eq ptr %i.ke, null
  br i1 %.not.i168, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit169, label %bb.be

bb.be:                                            ; preds = %._crit_edge560
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !205
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit169

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit169: ; preds = %._crit_edge560, %bb.be
  %i.kh = phi ptr [ %i.kg, %bb.be ], [ null, %._crit_edge560 ]
  call void %i.kc(ptr noundef nonnull align 8 dereferenceable(72) %i.jo, ptr noundef %i.jq, ptr noundef nonnull align 4 dereferenceable(48) %i.jr, float noundef %i.ju, float noundef %.pre562, ptr noundef %i.kh) #63, !inline_history !821
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit169, %bb.bd
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jo, i64 48
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !208
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jo, i64 56
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !204 ; 2 uses
  %.not.i170 = icmp eq ptr %i.kl, null
  br i1 %.not.i170, label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i102, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 32
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !209
  br label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i102

_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i102: ; preds = %bb.bg, %bb.bf
  %i.ko = phi ptr [ %i.kn, %bb.bg ], [ null, %bb.bf ]
  call void %i.kj(ptr noundef nonnull align 8 dereferenceable(72) %i.jo, ptr noundef %i.jq, ptr noundef nonnull align 4 dereferenceable(48) %i.jr, ptr noundef %i.ko) #63, !inline_history !822
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jr, i8 0, i64 12, i1 false)
  br label %_ZN17hb_draw_session_t7move_toEff.exit103

_ZN17hb_draw_session_t7move_toEff.exit103:        ; preds = %bb.bb, %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i102
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jn, i64 28
  store <2 x float> %i.jm, ptr %i.kp, align 4, !tbaa !94
  br label %.critedge

bb.bh:                                            ; preds = %bb.ba
  store i32 1, ptr %i.bf, align 4
  store <2 x float> %i.ic, ptr %.sroa_idx451, align 8
  br label %.critedge

bb.bi:                                            ; preds = %bb.as
  %i.kq = load i8, ptr %i.bg, align 4, !tbaa !192, !range !220, !noundef !74
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %bb.bj, label %bb.bv

bb.bj:                                            ; preds = %bb.bi
  br i1 %.not.i58, label %bb.bs, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ks = load i8, ptr %i.bh, align 8, !tbaa !192, !range !220, !noundef !74
  %i.kt = trunc nuw i8 %i.ks to i1
  %i.ku = load ptr, ptr %i.be, align 8, !tbaa !191 ; 8 uses
  br i1 %i.kt, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.kv = load float, ptr %i.bi, align 4, !tbaa !2567
  %i.kw = load float, ptr %i.bj, align 8, !tbaa !2568
  %i.kx = load float, ptr %.sroa_idx455, align 8, !tbaa !2569
  %i.ky = load float, ptr %.sroa.15433.0..sroa_idx436, align 4, !tbaa !2570
  %i.kz = load ptr, ptr %i.ku, align 8, !tbaa !175 ; 4 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !178 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ku, i64 16 ; 3 uses
  %i.ld = load i32, ptr %i.lc, align 8, !tbaa !197
  %.not.i.i117 = icmp eq i32 %i.ld, 0
  br i1 %.not.i.i117, label %bb.bm, label %_ZN17hb_draw_session_t8cubic_toEffffff.exit118, !prof !48

bb.bm:                                            ; preds = %bb.bl
  call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.kz, ptr noundef %i.lb, ptr noundef nonnull align 4 dereferenceable(48) %i.lc)
  br label %_ZN17hb_draw_session_t8cubic_toEffffff.exit118

_ZN17hb_draw_session_t8cubic_toEffffff.exit118:   ; preds = %bb.bl, %bb.bm
  %i.le = getelementptr inbounds nuw i8, ptr %i.kz, i64 40
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !814
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kz, i64 56
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !204 ; 2 uses
  %.not.i172 = icmp eq ptr %i.lh, null
  br i1 %.not.i172, label %_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit173, label %bb.bn

bb.bn:                                            ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit118
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !815
  br label %_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit173

_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit173: ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit118, %bb.bn
  %i.lk = phi ptr [ %i.lj, %bb.bn ], [ null, %_ZN17hb_draw_session_t8cubic_toEffffff.exit118 ]
  %i.ll = extractelement <2 x float> %i.ic, i64 0
  %i.lm = extractelement <2 x float> %i.ic, i64 1
  call void %i.lf(ptr noundef nonnull align 8 dereferenceable(72) %i.kz, ptr noundef %i.lb, ptr noundef nonnull align 4 dereferenceable(48) %i.lc, float noundef %i.kv, float noundef %i.kw, float noundef %i.kx, float noundef %i.ky, float noundef %i.ll, float noundef %i.lm, ptr noundef %i.lk) #63, !inline_history !816
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ku, i64 28
  store <2 x float> %i.ic, ptr %i.ln, align 4, !tbaa !94
  store i8 0, ptr %i.bh, align 8, !tbaa !444
  br label %bb.br

bb.bo:                                            ; preds = %bb.bk
  %i.lo = load float, ptr %.sroa_idx455, align 8, !tbaa !2569
  %i.lp = load float, ptr %.sroa.15433.0..sroa_idx436, align 4, !tbaa !2570
  %i.lq = load ptr, ptr %i.ku, align 8, !tbaa !175 ; 4 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !178 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ku, i64 16 ; 3 uses
  %i.lu = load i32, ptr %i.lt, align 8, !tbaa !197
  %.not.i.i126 = icmp eq i32 %i.lu, 0
  br i1 %.not.i.i126, label %bb.bp, label %_ZN17hb_draw_session_t12quadratic_toEffff.exit127, !prof !48

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.lq, ptr noundef %i.ls, ptr noundef nonnull align 4 dereferenceable(48) %i.lt)
  br label %_ZN17hb_draw_session_t12quadratic_toEffff.exit127

_ZN17hb_draw_session_t12quadratic_toEffff.exit127: ; preds = %bb.bo, %bb.bp
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lq, i64 32
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !813
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lq, i64 56
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !204 ; 2 uses
  %.not.i174 = icmp eq ptr %i.ly, null
  br i1 %.not.i174, label %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit175, label %bb.bq

bb.bq:                                            ; preds = %_ZN17hb_draw_session_t12quadratic_toEffff.exit127
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !812
  br label %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit175

_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit175: ; preds = %_ZN17hb_draw_session_t12quadratic_toEffff.exit127, %bb.bq
  %i.mb = phi ptr [ %i.ma, %bb.bq ], [ null, %_ZN17hb_draw_session_t12quadratic_toEffff.exit127 ]
  %i.mc = extractelement <2 x float> %i.ic, i64 0
  %i.md = extractelement <2 x float> %i.ic, i64 1
  call void %i.lw(ptr noundef nonnull align 8 dereferenceable(72) %i.lq, ptr noundef %i.ls, ptr noundef nonnull align 4 dereferenceable(48) %i.lt, float noundef %i.lo, float noundef %i.lp, float noundef %i.mc, float noundef %i.md, ptr noundef %i.mb) #63, !inline_history !823
  %i.me = getelementptr inbounds nuw i8, ptr %i.ku, i64 28
  store <2 x float> %i.ic, ptr %i.me, align 4, !tbaa !94
  br label %bb.br

bb.br:                                            ; preds = %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit175, %_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit173
  store i8 0, ptr %i.bg, align 4, !tbaa !444
  br label %.critedge

bb.bs:                                            ; preds = %bb.bj
  %i.mf = load <2 x float>, ptr %.sroa_idx455, align 8, !tbaa !94 ; 3 uses
  %i.mg = fadd <2 x float> %i.ic, %i.mf
  %i.mh = fmul <2 x float> %i.mg, splat (float 5.000000e-01) ; 3 uses
  %i.mi = load ptr, ptr %i.be, align 8, !tbaa !191 ; 4 uses
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !175 ; 4 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !178 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mi, i64 16 ; 3 uses
  %i.mn = load i32, ptr %i.mm, align 8, !tbaa !197
  %.not.i.i124 = icmp eq i32 %i.mn, 0
  br i1 %.not.i.i124, label %bb.bt, label %_ZN17hb_draw_session_t12quadratic_toEffff.exit125, !prof !48

bb.bt:                                            ; preds = %bb.bs
  call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.mj, ptr noundef %i.ml, ptr noundef nonnull align 4 dereferenceable(48) %i.mm)
  br label %_ZN17hb_draw_session_t12quadratic_toEffff.exit125

_ZN17hb_draw_session_t12quadratic_toEffff.exit125: ; preds = %bb.bs, %bb.bt
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mj, i64 32
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !813
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mj, i64 56
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !204 ; 2 uses
  %.not.i183 = icmp eq ptr %i.mr, null
  br i1 %.not.i183, label %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit184, label %bb.bu

bb.bu:                                            ; preds = %_ZN17hb_draw_session_t12quadratic_toEffff.exit125
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !812
  br label %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit184

_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit184: ; preds = %_ZN17hb_draw_session_t12quadratic_toEffff.exit125, %bb.bu
  %i.mu = phi ptr [ %i.mt, %bb.bu ], [ null, %_ZN17hb_draw_session_t12quadratic_toEffff.exit125 ]
  %i.mv = extractelement <2 x float> %i.mh, i64 0
  %i.mw = extractelement <2 x float> %i.mh, i64 1
  %i.mx = extractelement <2 x float> %i.mf, i64 0
  %i.my = extractelement <2 x float> %i.mf, i64 1
  call void %i.mp(ptr noundef nonnull align 8 dereferenceable(72) %i.mj, ptr noundef %i.ml, ptr noundef nonnull align 4 dereferenceable(48) %i.mm, float noundef %i.mx, float noundef %i.my, float noundef %i.mv, float noundef %i.mw, ptr noundef %i.mu) #63, !inline_history !823
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mi, i64 28
  store <2 x float> %i.mh, ptr %i.mz, align 4, !tbaa !94
  store i32 1, ptr %i.bg, align 4
  store <2 x float> %i.ic, ptr %.sroa_idx455, align 8
  br label %.critedge

bb.bv:                                            ; preds = %bb.bi
  br i1 %.not.i58, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.na = load ptr, ptr %i.be, align 8, !tbaa !191 ; 4 uses
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !175 ; 4 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !178 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.na, i64 16 ; 3 uses
  %i.nf = load i32, ptr %i.ne, align 8, !tbaa !197
  %.not.i.i133 = icmp eq i32 %i.nf, 0
  br i1 %.not.i.i133, label %bb.bx, label %_ZN17hb_draw_session_t7line_toEff.exit134, !prof !48

bb.bx:                                            ; preds = %bb.bw
  call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.nb, ptr noundef %i.nd, ptr noundef nonnull align 4 dereferenceable(48) %i.ne)
  br label %_ZN17hb_draw_session_t7line_toEff.exit134

_ZN17hb_draw_session_t7line_toEff.exit134:        ; preds = %bb.bw, %bb.bx
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nb, i64 24
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !201
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nb, i64 56
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !204 ; 2 uses
  %.not.i185 = icmp eq ptr %i.nj, null
  br i1 %.not.i185, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit186, label %bb.by

bb.by:                                            ; preds = %_ZN17hb_draw_session_t7line_toEff.exit134
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !205
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit186

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit186: ; preds = %_ZN17hb_draw_session_t7line_toEff.exit134, %bb.by
  %i.nm = phi ptr [ %i.nl, %bb.by ], [ null, %_ZN17hb_draw_session_t7line_toEff.exit134 ]
  %i.nn = extractelement <2 x float> %i.ic, i64 0
  %i.no = extractelement <2 x float> %i.ic, i64 1
  call void %i.nh(ptr noundef nonnull align 8 dereferenceable(72) %i.nb, ptr noundef %i.nd, ptr noundef nonnull align 4 dereferenceable(48) %i.ne, float noundef %i.nn, float noundef %i.no, ptr noundef %i.nm) #63, !inline_history !821
  %i.np = getelementptr inbounds nuw i8, ptr %i.na, i64 28
  store <2 x float> %i.ic, ptr %i.np, align 4, !tbaa !94
  br label %.critedge

bb.bz:                                            ; preds = %bb.bv
  store i32 1, ptr %i.bg, align 4
  store <2 x float> %i.ic, ptr %.sroa_idx455, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.ar, %.preheader, %bb.bz, %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit186, %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit184, %bb.br, %bb.bh, %_ZN17hb_draw_session_t7move_toEff.exit103, %_ZN17hb_draw_session_t7move_toEff.exit107
  %.2525 = phi i32 [ %i.hu, %_ZN17hb_draw_session_t7move_toEff.exit107 ], [ %i.hu, %bb.bz ], [ %i.hu, %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit186 ], [ %i.hu, %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit184 ], [ %i.hu, %bb.br ], [ %i.hu, %bb.bh ], [ %i.hu, %_ZN17hb_draw_session_t7move_toEff.exit103 ], [ %.050533, %.preheader ], [ %i.ba, %bb.ar ] ; 3 uses
  %i.nq = icmp ult i32 %.050533, %.2525
  br i1 %i.nq, label %.lr.ph531, label %.loopexit.sink.split

.lr.ph531:                                        ; preds = %.critedge, %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit
  %indvars.iv548 = phi i64 [ %indvars.iv.next549, %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit ], [ %i.bk, %.critedge ] ; 2 uses
  %i.nr = getelementptr inbounds nuw [12 x i8], ptr %i.bc, i64 %indvars.iv548 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  %i.nt = load i8, ptr %i.ns, align 4, !tbaa !2565
  %i.nu = and i8 %i.nt, 1
  %.not.i = icmp eq i8 %i.nu, 0                   ; 3 uses
  %i.nv = load ptr, ptr %3, align 8, !tbaa !188
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 80
  %i.nx = load <2 x float>, ptr %i.nr, align 4, !tbaa !94
  %i.ny = load <2 x float>, ptr %i.nw, align 8, !tbaa !94
  %i.nz = fmul <2 x float> %i.nx, %i.ny           ; 17 uses
  %i.oa = load i8, ptr %i.bd, align 8, !tbaa !192, !range !220, !noundef !74
  %i.ob = trunc nuw i8 %i.oa to i1
  br i1 %i.ob, label %bb.cp, label %bb.ca, !prof !49

bb.ca:                                            ; preds = %.lr.ph531
  br i1 %.not.i, label %bb.ch, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  store i32 1, ptr %i.bd, align 8
  store <2 x float> %i.nz, ptr %.sroa_idx447, align 4
  %i.oc = load ptr, ptr %i.be, align 8, !tbaa !191 ; 8 uses
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !175 ; 6 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !178 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.oc, i64 16 ; 4 uses
  %i.oh = load i32, ptr %i.og, align 8, !tbaa !197
  %.not.i.i112 = icmp eq i32 %i.oh, 0
  br i1 %.not.i.i112, label %_ZN17hb_draw_session_t7move_toEff.exit115, label %bb.cc, !prof !49

bb.cc:                                            ; preds = %bb.cb
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oc, i64 20
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !198 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oc, i64 28
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !199
  %i.om = fcmp une float %i.oj, %i.ol
  %.phi.trans.insert564 = getelementptr inbounds nuw i8, ptr %i.oc, i64 24
  %.pre565 = load float, ptr %.phi.trans.insert564, align 8, !tbaa !200 ; 2 uses
  br i1 %i.om, label %._crit_edge563, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.on = getelementptr inbounds nuw i8, ptr %i.oc, i64 32
  %i.oo = load float, ptr %i.on, align 8, !tbaa !820
  %i.op = fcmp une float %.pre565, %i.oo
  br i1 %i.op, label %._crit_edge563, label %bb.cf

._crit_edge563:                                   ; preds = %bb.cc, %bb.cd
  %i.oq = getelementptr inbounds nuw i8, ptr %i.od, i64 24
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !201
  %i.os = getelementptr inbounds nuw i8, ptr %i.od, i64 56
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !204 ; 2 uses
  %.not.i187 = icmp eq ptr %i.ot, null
  br i1 %.not.i187, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit188, label %bb.ce

bb.ce:                                            ; preds = %._crit_edge563
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !205
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit188

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit188: ; preds = %._crit_edge563, %bb.ce
  %i.ow = phi ptr [ %i.ov, %bb.ce ], [ null, %._crit_edge563 ]
  call void %i.or(ptr noundef nonnull align 8 dereferenceable(72) %i.od, ptr noundef %i.of, ptr noundef nonnull align 4 dereferenceable(48) %i.og, float noundef %i.oj, float noundef %.pre565, ptr noundef %i.ow) #63, !inline_history !821
  br label %bb.cf

bb.cf:                                            ; preds = %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit188, %bb.cd
  %i.ox = getelementptr inbounds nuw i8, ptr %i.od, i64 48
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !208
  %i.oz = getelementptr inbounds nuw i8, ptr %i.od, i64 56
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !204 ; 2 uses
  %.not.i189 = icmp eq ptr %i.pa, null
  br i1 %.not.i189, label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i114, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 32
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !209
  br label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i114

_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i114: ; preds = %bb.cg, %bb.cf
  %i.pd = phi ptr [ %i.pc, %bb.cg ], [ null, %bb.cf ]
  call void %i.oy(ptr noundef nonnull align 8 dereferenceable(72) %i.od, ptr noundef %i.of, ptr noundef nonnull align 4 dereferenceable(48) %i.og, ptr noundef %i.pd) #63, !inline_history !822
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.og, i8 0, i64 12, i1 false)
  br label %_ZN17hb_draw_session_t7move_toEff.exit115

_ZN17hb_draw_session_t7move_toEff.exit115:        ; preds = %bb.cb, %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i114
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oc, i64 28
  store <2 x float> %i.nz, ptr %i.pe, align 4, !tbaa !94
  br label %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit

bb.ch:                                            ; preds = %bb.ca
  %i.pf = load i8, ptr %i.bf, align 4, !tbaa !192, !range !220, !noundef !74
  %i.pg = trunc nuw i8 %i.pf to i1
  br i1 %i.pg, label %bb.ci, label %bb.co

bb.ci:                                            ; preds = %bb.ch
  %i.ph = load <2 x float>, ptr %.sroa_idx451, align 8, !tbaa !94
  %i.pi = fadd <2 x float> %i.nz, %i.ph
  %i.pj = fmul <2 x float> %i.pi, splat (float 5.000000e-01) ; 2 uses
  store i32 1, ptr %i.bd, align 8
  store <2 x float> %i.pj, ptr %.sroa_idx447, align 4, !tbaa !94
  store i32 1, ptr %i.bg, align 4
  store <2 x float> %i.nz, ptr %.sroa_idx455, align 8
  %i.pk = load ptr, ptr %i.be, align 8, !tbaa !191 ; 8 uses
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !175 ; 6 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !178 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pk, i64 16 ; 4 uses
  %i.pp = load i32, ptr %i.po, align 8, !tbaa !197
  %.not.i.i108 = icmp eq i32 %i.pp, 0
  br i1 %.not.i.i108, label %_ZN17hb_draw_session_t7move_toEff.exit111, label %bb.cj, !prof !49

bb.cj:                                            ; preds = %bb.ci
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pk, i64 20
  %i.pr = load float, ptr %i.pq, align 4, !tbaa !198 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pk, i64 28
  %i.pt = load float, ptr %i.ps, align 4, !tbaa !199
  %i.pu = fcmp une float %i.pr, %i.pt
  %.phi.trans.insert567 = getelementptr inbounds nuw i8, ptr %i.pk, i64 24
  %.pre568 = load float, ptr %.phi.trans.insert567, align 8, !tbaa !200 ; 2 uses
  br i1 %i.pu, label %._crit_edge566, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pk, i64 32
  %i.pw = load float, ptr %i.pv, align 8, !tbaa !820
  %i.px = fcmp une float %.pre568, %i.pw
  br i1 %i.px, label %._crit_edge566, label %bb.cm

._crit_edge566:                                   ; preds = %bb.cj, %bb.ck
  %i.py = getelementptr inbounds nuw i8, ptr %i.pl, i64 24
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !201
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pl, i64 56
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !204 ; 2 uses
  %.not.i198 = icmp eq ptr %i.qb, null
  br i1 %.not.i198, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit199, label %bb.cl

bb.cl:                                            ; preds = %._crit_edge566
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !205
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit199

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit199: ; preds = %._crit_edge566, %bb.cl
  %i.qe = phi ptr [ %i.qd, %bb.cl ], [ null, %._crit_edge566 ]
  call void %i.pz(ptr noundef nonnull align 8 dereferenceable(72) %i.pl, ptr noundef %i.pn, ptr noundef nonnull align 4 dereferenceable(48) %i.po, float noundef %i.pr, float noundef %.pre568, ptr noundef %i.qe) #63, !inline_history !821
  br label %bb.cm

bb.cm:                                            ; preds = %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit199, %bb.ck
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pl, i64 48
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !208
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pl, i64 56
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !204 ; 2 uses
  %.not.i200 = icmp eq ptr %i.qi, null
  br i1 %.not.i200, label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i110, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 32
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !209
  br label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i110

_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i110: ; preds = %bb.cn, %bb.cm
  %i.ql = phi ptr [ %i.qk, %bb.cn ], [ null, %bb.cm ]
  call void %i.qg(ptr noundef nonnull align 8 dereferenceable(72) %i.pl, ptr noundef %i.pn, ptr noundef nonnull align 4 dereferenceable(48) %i.po, ptr noundef %i.ql) #63, !inline_history !822
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.po, i8 0, i64 12, i1 false)
  br label %_ZN17hb_draw_session_t7move_toEff.exit111

_ZN17hb_draw_session_t7move_toEff.exit111:        ; preds = %bb.ci, %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i110
  %i.qm = getelementptr inbounds nuw i8, ptr %i.pk, i64 28
  store <2 x float> %i.pj, ptr %i.qm, align 4, !tbaa !94
  br label %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit

bb.co:                                            ; preds = %bb.ch
  store i32 1, ptr %i.bf, align 4
  store <2 x float> %i.nz, ptr %.sroa_idx451, align 8
  br label %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit

bb.cp:                                            ; preds = %.lr.ph531
  %i.qn = load i8, ptr %i.bg, align 4, !tbaa !192, !range !220, !noundef !74
  %i.qo = trunc nuw i8 %i.qn to i1
  br i1 %i.qo, label %bb.cq, label %bb.dc

bb.cq:                                            ; preds = %bb.cp
  br i1 %.not.i, label %bb.cz, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.qp = load i8, ptr %i.bh, align 8, !tbaa !192, !range !220, !noundef !74
  %i.qq = trunc nuw i8 %i.qp to i1
  %i.qr = load ptr, ptr %i.be, align 8, !tbaa !191 ; 8 uses
  br i1 %i.qq, label %bb.cs, label %bb.cv

bb.cs:                                            ; preds = %bb.cr
  %i.qs = load float, ptr %i.bi, align 4, !tbaa !2567
  %i.qt = load float, ptr %i.bj, align 8, !tbaa !2568
  %i.qu = load float, ptr %.sroa_idx455, align 8, !tbaa !2569
  %i.qv = load float, ptr %.sroa.15433.0..sroa_idx436, align 4, !tbaa !2570
  %i.qw = load ptr, ptr %i.qr, align 8, !tbaa !175 ; 4 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !178 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qr, i64 16 ; 3 uses
  %i.ra = load i32, ptr %i.qz, align 8, !tbaa !197
  %.not.i.i119 = icmp eq i32 %i.ra, 0
  br i1 %.not.i.i119, label %bb.ct, label %_ZN17hb_draw_session_t8cubic_toEffffff.exit120, !prof !48

bb.ct:                                            ; preds = %bb.cs
  call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.qw, ptr noundef %i.qy, ptr noundef nonnull align 4 dereferenceable(48) %i.qz)
  br label %_ZN17hb_draw_session_t8cubic_toEffffff.exit120

_ZN17hb_draw_session_t8cubic_toEffffff.exit120:   ; preds = %bb.cs, %bb.ct
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qw, i64 40
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !814
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qw, i64 56
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !204 ; 2 uses
  %.not.i202 = icmp eq ptr %i.re, null
  br i1 %.not.i202, label %_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit203, label %bb.cu

bb.cu:                                            ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit120
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 24
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !815
  br label %_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit203

_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit203: ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit120, %bb.cu
  %i.rh = phi ptr [ %i.rg, %bb.cu ], [ null, %_ZN17hb_draw_session_t8cubic_toEffffff.exit120 ]
  %i.ri = extractelement <2 x float> %i.nz, i64 0
  %i.rj = extractelement <2 x float> %i.nz, i64 1
  call void %i.rc(ptr noundef nonnull align 8 dereferenceable(72) %i.qw, ptr noundef %i.qy, ptr noundef nonnull align 4 dereferenceable(48) %i.qz, float noundef %i.qs, float noundef %i.qt, float noundef %i.qu, float noundef %i.qv, float noundef %i.ri, float noundef %i.rj, ptr noundef %i.rh) #63, !inline_history !816
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qr, i64 28
  store <2 x float> %i.nz, ptr %i.rk, align 4, !tbaa !94
  store i8 0, ptr %i.bh, align 8, !tbaa !444
  br label %bb.cy

bb.cv:                                            ; preds = %bb.cr
  %i.rl = load float, ptr %.sroa_idx455, align 8, !tbaa !2569
  %i.rm = load float, ptr %.sroa.15433.0..sroa_idx436, align 4, !tbaa !2570
  %i.rn = load ptr, ptr %i.qr, align 8, !tbaa !175 ; 4 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !178 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qr, i64 16 ; 3 uses
  %i.rr = load i32, ptr %i.rq, align 8, !tbaa !197
  %.not.i.i130 = icmp eq i32 %i.rr, 0
  br i1 %.not.i.i130, label %bb.cw, label %_ZN17hb_draw_session_t12quadratic_toEffff.exit131, !prof !48

bb.cw:                                            ; preds = %bb.cv
  call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.rn, ptr noundef %i.rp, ptr noundef nonnull align 4 dereferenceable(48) %i.rq)
  br label %_ZN17hb_draw_session_t12quadratic_toEffff.exit131

_ZN17hb_draw_session_t12quadratic_toEffff.exit131: ; preds = %bb.cv, %bb.cw
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rn, i64 32
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !813
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rn, i64 56
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !204 ; 2 uses
  %.not.i204 = icmp eq ptr %i.rv, null
  br i1 %.not.i204, label %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit205, label %bb.cx

bb.cx:                                            ; preds = %_ZN17hb_draw_session_t12quadratic_toEffff.exit131
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 16
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !812
  br label %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit205

_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit205: ; preds = %_ZN17hb_draw_session_t12quadratic_toEffff.exit131, %bb.cx
  %i.ry = phi ptr [ %i.rx, %bb.cx ], [ null, %_ZN17hb_draw_session_t12quadratic_toEffff.exit131 ]
  %i.rz = extractelement <2 x float> %i.nz, i64 0
  %i.sa = extractelement <2 x float> %i.nz, i64 1
  call void %i.rt(ptr noundef nonnull align 8 dereferenceable(72) %i.rn, ptr noundef %i.rp, ptr noundef nonnull align 4 dereferenceable(48) %i.rq, float noundef %i.rl, float noundef %i.rm, float noundef %i.rz, float noundef %i.sa, ptr noundef %i.ry) #63, !inline_history !823
  %i.sb = getelementptr inbounds nuw i8, ptr %i.qr, i64 28
  store <2 x float> %i.nz, ptr %i.sb, align 4, !tbaa !94
  br label %bb.cy

bb.cy:                                            ; preds = %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit205, %_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit203
  store i8 0, ptr %i.bg, align 4, !tbaa !444
  br label %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit

bb.cz:                                            ; preds = %bb.cq
  %i.sc = load <2 x float>, ptr %.sroa_idx455, align 8, !tbaa !94 ; 3 uses
  %i.sd = fadd <2 x float> %i.nz, %i.sc
  %i.se = fmul <2 x float> %i.sd, splat (float 5.000000e-01) ; 3 uses
  %i.sf = load ptr, ptr %i.be, align 8, !tbaa !191 ; 4 uses
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !175 ; 4 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !178 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sf, i64 16 ; 3 uses
  %i.sk = load i32, ptr %i.sj, align 8, !tbaa !197
  %.not.i.i128 = icmp eq i32 %i.sk, 0
  br i1 %.not.i.i128, label %bb.da, label %_ZN17hb_draw_session_t12quadratic_toEffff.exit129, !prof !48

bb.da:                                            ; preds = %bb.cz
  call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.sg, ptr noundef %i.si, ptr noundef nonnull align 4 dereferenceable(48) %i.sj)
  br label %_ZN17hb_draw_session_t12quadratic_toEffff.exit129

_ZN17hb_draw_session_t12quadratic_toEffff.exit129: ; preds = %bb.cz, %bb.da
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sg, i64 32
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !813
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sg, i64 56
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !204 ; 2 uses
  %.not.i213 = icmp eq ptr %i.so, null
  br i1 %.not.i213, label %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit214, label %bb.db

bb.db:                                            ; preds = %_ZN17hb_draw_session_t12quadratic_toEffff.exit129
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 16
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !812
  br label %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit214

_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit214: ; preds = %_ZN17hb_draw_session_t12quadratic_toEffff.exit129, %bb.db
  %i.sr = phi ptr [ %i.sq, %bb.db ], [ null, %_ZN17hb_draw_session_t12quadratic_toEffff.exit129 ]
  %i.ss = extractelement <2 x float> %i.se, i64 0
  %i.st = extractelement <2 x float> %i.se, i64 1
  %i.su = extractelement <2 x float> %i.sc, i64 0
  %i.sv = extractelement <2 x float> %i.sc, i64 1
  call void %i.sm(ptr noundef nonnull align 8 dereferenceable(72) %i.sg, ptr noundef %i.si, ptr noundef nonnull align 4 dereferenceable(48) %i.sj, float noundef %i.su, float noundef %i.sv, float noundef %i.ss, float noundef %i.st, ptr noundef %i.sr) #63, !inline_history !823
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sf, i64 28
  store <2 x float> %i.se, ptr %i.sw, align 4, !tbaa !94
  store i32 1, ptr %i.bg, align 4
  store <2 x float> %i.nz, ptr %.sroa_idx455, align 8
  br label %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit

bb.dc:                                            ; preds = %bb.cp
  br i1 %.not.i, label %bb.dg, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.sx = load ptr, ptr %i.be, align 8, !tbaa !191 ; 4 uses
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !175 ; 4 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !178 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sx, i64 16 ; 3 uses
  %i.tc = load i32, ptr %i.tb, align 8, !tbaa !197
  %.not.i.i135 = icmp eq i32 %i.tc, 0
  br i1 %.not.i.i135, label %bb.de, label %_ZN17hb_draw_session_t7line_toEff.exit136, !prof !48

bb.de:                                            ; preds = %bb.dd
  call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.sy, ptr noundef %i.ta, ptr noundef nonnull align 4 dereferenceable(48) %i.tb)
  br label %_ZN17hb_draw_session_t7line_toEff.exit136

_ZN17hb_draw_session_t7line_toEff.exit136:        ; preds = %bb.dd, %bb.de
  %i.td = getelementptr inbounds nuw i8, ptr %i.sy, i64 24
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !201
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sy, i64 56
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !204 ; 2 uses
  %.not.i215 = icmp eq ptr %i.tg, null
  br i1 %.not.i215, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit216, label %bb.df

bb.df:                                            ; preds = %_ZN17hb_draw_session_t7line_toEff.exit136
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !205
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit216

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit216: ; preds = %_ZN17hb_draw_session_t7line_toEff.exit136, %bb.df
  %i.tj = phi ptr [ %i.ti, %bb.df ], [ null, %_ZN17hb_draw_session_t7line_toEff.exit136 ]
  %i.tk = extractelement <2 x float> %i.nz, i64 0
  %i.tl = extractelement <2 x float> %i.nz, i64 1
  call void %i.te(ptr noundef nonnull align 8 dereferenceable(72) %i.sy, ptr noundef %i.ta, ptr noundef nonnull align 4 dereferenceable(48) %i.tb, float noundef %i.tk, float noundef %i.tl, ptr noundef %i.tj) #63, !inline_history !821
  %i.tm = getelementptr inbounds nuw i8, ptr %i.sx, i64 28
  store <2 x float> %i.nz, ptr %i.tm, align 4, !tbaa !94
  br label %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit

bb.dg:                                            ; preds = %bb.dc
  store i32 1, ptr %i.bg, align 4
  store <2 x float> %i.nz, ptr %.sroa_idx455, align 8
  br label %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit

_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit: ; preds = %_ZN17hb_draw_session_t7move_toEff.exit115, %_ZN17hb_draw_session_t7move_toEff.exit111, %bb.co, %bb.cy, %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit214, %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit216, %bb.dg
  %indvars.iv.next549 = add nuw nsw i64 %indvars.iv548, 1 ; 2 uses
  %lftr.wideiv551 = trunc i64 %indvars.iv.next549 to i32
  %exitcond552.not = icmp eq i32 %.2525, %lftr.wideiv551
  br i1 %exitcond552.not, label %.loopexit.sink.split, label %.lr.ph531, !llvm.loop !2574

end_hunk_1
begin_hunk_2_@_ZN2OT9glyf_impl14path_builder_t11contour_endEv:bb.a
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !191 ; 8 uses
  br i1 %i.dm, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !2567
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ds = load float, ptr %i.dr, align 8, !tbaa !2568
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.du = load float, ptr %i.dt, align 8, !tbaa !2569
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !2570
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !2648 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ea = load float, ptr %i.dz, align 8, !tbaa !2649 ; 2 uses
  %i.eb = load ptr, ptr %i.do, align 8, !tbaa !175 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !178 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 3 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !197
  %.not.i.i16 = icmp eq i32 %i.ef, 0
  br i1 %.not.i.i16, label %bb.u, label %_ZN17hb_draw_session_t8cubic_toEffffff.exit, !prof !48

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.eb, ptr noundef %i.ed, ptr noundef nonnull align 4 dereferenceable(48) %i.ee)
  br label %_ZN17hb_draw_session_t8cubic_toEffffff.exit

_ZN17hb_draw_session_t8cubic_toEffffff.exit:      ; preds = %bb.t, %bb.u
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !814
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 56
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !204 ; 2 uses
  %.not.i36 = icmp eq ptr %i.ej, null
  br i1 %.not.i36, label %_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit37, label %bb.v

bb.v:                                             ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !815
  br label %_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit37

_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit37: ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit, %bb.v
  %i.em = phi ptr [ %i.el, %bb.v ], [ null, %_ZN17hb_draw_session_t8cubic_toEffffff.exit ]
  tail call void %i.eh(ptr noundef nonnull align 8 dereferenceable(72) %i.eb, ptr noundef %i.ed, ptr noundef nonnull align 4 dereferenceable(48) %i.ee, float noundef %i.dq, float noundef %i.ds, float noundef %i.du, float noundef %i.dw, float noundef %i.dy, float noundef %i.ea, ptr noundef %i.em) #63, !inline_history !816
  br label %.sink.split

bb.w:                                             ; preds = %bb.s
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.eo = load float, ptr %i.en, align 8, !tbaa !2569
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !2570
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.es = load float, ptr %i.er, align 4, !tbaa !2648 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eu = load float, ptr %i.et, align 8, !tbaa !2649 ; 2 uses
  %i.ev = load ptr, ptr %i.do, align 8, !tbaa !175 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !178 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 3 uses
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !197
  %.not.i.i22 = icmp eq i32 %i.ez, 0
  br i1 %.not.i.i22, label %bb.x, label %_ZN17hb_draw_session_t12quadratic_toEffff.exit23, !prof !48

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.ev, ptr noundef %i.ex, ptr noundef nonnull align 4 dereferenceable(48) %i.ey)
  br label %_ZN17hb_draw_session_t12quadratic_toEffff.exit23

_ZN17hb_draw_session_t12quadratic_toEffff.exit23: ; preds = %bb.w, %bb.x
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !813
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 56
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !204 ; 2 uses
  %.not.i38 = icmp eq ptr %i.fd, null
  br i1 %.not.i38, label %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit39, label %bb.y

bb.y:                                             ; preds = %_ZN17hb_draw_session_t12quadratic_toEffff.exit23
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !812
  br label %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit39

_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit39: ; preds = %_ZN17hb_draw_session_t12quadratic_toEffff.exit23, %bb.y
  %i.fg = phi ptr [ %i.ff, %bb.y ], [ null, %_ZN17hb_draw_session_t12quadratic_toEffff.exit23 ]
  tail call void %i.fb(ptr noundef nonnull align 8 dereferenceable(72) %i.ev, ptr noundef %i.ex, ptr noundef nonnull align 4 dereferenceable(48) %i.ey, float noundef %i.eo, float noundef %i.eq, float noundef %i.es, float noundef %i.eu, ptr noundef %i.fg) #63, !inline_history !823
  br label %.sink.split

bb.z:                                             ; preds = %.thread78
  br i1 %i.dj, label %bb.aa, label %.thread79

bb.aa:                                            ; preds = %bb.z
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !191 ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !2648 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fm = load float, ptr %i.fl, align 8, !tbaa !2649 ; 2 uses
  %i.fn = load ptr, ptr %i.fi, align 8, !tbaa !175 ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !178 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 3 uses
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !197
  %.not.i.i28 = icmp eq i32 %i.fr, 0
  br i1 %.not.i.i28, label %bb.ab, label %_ZN17hb_draw_session_t7line_toEff.exit, !prof !48

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.fn, ptr noundef %i.fp, ptr noundef nonnull align 4 dereferenceable(48) %i.fq)
  br label %_ZN17hb_draw_session_t7line_toEff.exit

_ZN17hb_draw_session_t7line_toEff.exit:           ; preds = %bb.aa, %bb.ab
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !201
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fn, i64 56
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !204 ; 2 uses
  %.not.i40 = icmp eq ptr %i.fv, null
  br i1 %.not.i40, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN17hb_draw_session_t7line_toEff.exit
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !205
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit: ; preds = %_ZN17hb_draw_session_t7line_toEff.exit, %bb.ac
  %i.fy = phi ptr [ %i.fx, %bb.ac ], [ null, %_ZN17hb_draw_session_t7line_toEff.exit ]
  tail call void %i.ft(ptr noundef nonnull align 8 dereferenceable(72) %i.fn, ptr noundef %i.fp, ptr noundef nonnull align 4 dereferenceable(48) %i.fq, float noundef %i.fk, float noundef %i.fm, ptr noundef %i.fy) #63, !inline_history !821
  br label %.sink.split

.thread79:                                        ; preds = %bb.r, %bb.z
  br i1 %i.dd, label %bb.ad, label %bb.al

bb.ad:                                            ; preds = %.thread79
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ga = load <2 x float>, ptr %i.fz, align 8, !tbaa !94 ; 4 uses
  %i.gb = extractelement <2 x float> %i.ga, i64 1 ; 3 uses
  %i.gc = extractelement <2 x float> %i.ga, i64 0 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !191 ; 11 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !175 ; 7 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !178 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 4 uses
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !197
  %.not.i.i = icmp eq i32 %i.gj, 0
  br i1 %.not.i.i, label %_ZN17hb_draw_session_t7move_toEff.exit.thread, label %bb.ae, !prof !49

_ZN17hb_draw_session_t7move_toEff.exit.thread:    ; preds = %bb.ad
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 28
  store <2 x float> %i.ga, ptr %i.gk, align 4, !tbaa !94
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  br label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ge, i64 20
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !198 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.ge, i64 28
  %i.gp = load float, ptr %i.go, align 4, !tbaa !199
  %i.gq = fcmp une float %i.gn, %i.gp
  %.phi.trans.insert54 = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %.pre55 = load float, ptr %.phi.trans.insert54, align 8, !tbaa !200 ; 2 uses
  br i1 %i.gq, label %._crit_edge53, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %i.gs = load float, ptr %i.gr, align 8, !tbaa !820
  %i.gt = fcmp une float %.pre55, %i.gs
  br i1 %i.gt, label %._crit_edge53, label %bb.ah

._crit_edge53:                                    ; preds = %bb.ae, %bb.af
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !201
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gf, i64 56
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !204 ; 2 uses
  %.not.i41 = icmp eq ptr %i.gx, null
  br i1 %.not.i41, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit42, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge53
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !205
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit42

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit42: ; preds = %._crit_edge53, %bb.ag
  %i.ha = phi ptr [ %i.gz, %bb.ag ], [ null, %._crit_edge53 ]
  tail call void %i.gv(ptr noundef nonnull align 8 dereferenceable(72) %i.gf, ptr noundef %i.gh, ptr noundef nonnull align 4 dereferenceable(48) %i.gi, float noundef %i.gn, float noundef %.pre55, ptr noundef %i.ha) #63, !inline_history !821
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit42, %bb.af
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gf, i64 48
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !208
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gf, i64 56
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !204 ; 2 uses
  %.not.i43 = icmp eq ptr %i.he, null
  br i1 %.not.i43, label %_ZN17hb_draw_session_t7move_toEff.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !209
  br label %_ZN17hb_draw_session_t7move_toEff.exit

_ZN17hb_draw_session_t7move_toEff.exit:           ; preds = %bb.ah, %bb.ai
  %i.hh = phi ptr [ %i.hg, %bb.ai ], [ null, %bb.ah ]
  tail call void %i.hc(ptr noundef nonnull align 8 dereferenceable(72) %i.gf, ptr noundef %i.gh, ptr noundef nonnull align 4 dereferenceable(48) %i.gi, ptr noundef %i.hh) #63, !inline_history !822
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gi, i8 0, i64 20, i1 false)
  %.pre56 = load ptr, ptr %i.gd, align 8, !tbaa !191 ; 6 uses
  %.pre57 = load ptr, ptr %.pre56, align 8, !tbaa !175 ; 2 uses
  %.phi.trans.insert58 = getelementptr inbounds nuw i8, ptr %.pre56, i64 8
  %.pre59 = load ptr, ptr %.phi.trans.insert58, align 8, !tbaa !178 ; 2 uses
  %.phi.trans.insert60 = getelementptr inbounds nuw i8, ptr %.pre56, i64 16
  %.pre61 = load i32, ptr %.phi.trans.insert60, align 8, !tbaa !197
  %i.hi = icmp eq i32 %.pre61, 0
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ge, i64 28
  store <2 x float> %i.ga, ptr %i.hj, align 4, !tbaa !94
  %i.hk = getelementptr inbounds nuw i8, ptr %.pre56, i64 16 ; 2 uses
  br i1 %i.hi, label %bb.aj, label %_ZN17hb_draw_session_t12quadratic_toEffff.exit, !prof !124

bb.aj:                                            ; preds = %_ZN17hb_draw_session_t7move_toEff.exit.thread, %_ZN17hb_draw_session_t7move_toEff.exit
  %i.hl = phi ptr [ %i.gl, %_ZN17hb_draw_session_t7move_toEff.exit.thread ], [ %i.hk, %_ZN17hb_draw_session_t7move_toEff.exit ] ; 2 uses
  %i.hm = phi ptr [ %i.ge, %_ZN17hb_draw_session_t7move_toEff.exit.thread ], [ %.pre56, %_ZN17hb_draw_session_t7move_toEff.exit ]
  %i.hn = phi ptr [ %i.gf, %_ZN17hb_draw_session_t7move_toEff.exit.thread ], [ %.pre57, %_ZN17hb_draw_session_t7move_toEff.exit ] ; 2 uses
  %i.ho = phi ptr [ %i.gh, %_ZN17hb_draw_session_t7move_toEff.exit.thread ], [ %.pre59, %_ZN17hb_draw_session_t7move_toEff.exit ] ; 2 uses
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.hn, ptr noundef %i.ho, ptr noundef nonnull align 4 dereferenceable(48) %i.hl)
  br label %_ZN17hb_draw_session_t12quadratic_toEffff.exit

_ZN17hb_draw_session_t12quadratic_toEffff.exit:   ; preds = %_ZN17hb_draw_session_t7move_toEff.exit, %bb.aj
  %i.hp = phi ptr [ %i.hk, %_ZN17hb_draw_session_t7move_toEff.exit ], [ %i.hl, %bb.aj ]
  %i.hq = phi ptr [ %.pre56, %_ZN17hb_draw_session_t7move_toEff.exit ], [ %i.hm, %bb.aj ]
  %i.hr = phi ptr [ %.pre57, %_ZN17hb_draw_session_t7move_toEff.exit ], [ %i.hn, %bb.aj ] ; 3 uses
  %i.hs = phi ptr [ %.pre59, %_ZN17hb_draw_session_t7move_toEff.exit ], [ %i.ho, %bb.aj ]
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 32
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !813
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hr, i64 56
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !204 ; 2 uses
  %.not.i44 = icmp eq ptr %i.hw, null
  br i1 %.not.i44, label %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit45, label %bb.ak

bb.ak:                                            ; preds = %_ZN17hb_draw_session_t12quadratic_toEffff.exit
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !812
  br label %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit45

_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit45: ; preds = %_ZN17hb_draw_session_t12quadratic_toEffff.exit, %bb.ak
  %i.hz = phi ptr [ %i.hy, %bb.ak ], [ null, %_ZN17hb_draw_session_t12quadratic_toEffff.exit ]
  tail call void %i.hu(ptr noundef nonnull align 8 dereferenceable(72) %i.hr, ptr noundef %i.hs, ptr noundef nonnull align 4 dereferenceable(48) %i.hp, float noundef %i.gc, float noundef %i.gb, float noundef %i.gc, float noundef %i.gb, ptr noundef %i.hz) #63, !inline_history !823
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit35, %_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit33, %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit, %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit45, %_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit37, %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit39
  %.sink85 = phi ptr [ %i.do, %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit39 ], [ %i.do, %_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit37 ], [ %i.hq, %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit45 ], [ %i.fi, %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit ], [ %i.bk, %_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit33 ], [ %i.bk, %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit35 ] ; 2 uses
  %.sink83 = phi float [ %i.es, %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit39 ], [ %i.dy, %_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit37 ], [ %i.gc, %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit45 ], [ %i.fk, %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit ], [ %i.bu, %_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit33 ], [ %i.co, %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit35 ]
  %.sink = phi float [ %i.eu, %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit39 ], [ %i.ea, %_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit37 ], [ %i.gb, %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit45 ], [ %i.fm, %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit ], [ %i.bw, %_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit33 ], [ %i.cq, %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit35 ]
  %i.ia = getelementptr inbounds nuw i8, ptr %.sink85, i64 28
  store float %.sink83, ptr %i.ia, align 4, !tbaa !199
  %i.ib = getelementptr inbounds nuw i8, ptr %.sink85, i64 32
  store float %.sink, ptr %i.ib, align 4, !tbaa !820
  br label %bb.al

bb.al:                                            ; preds = %.sink.split, %.thread79
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  store i8 0, ptr %i.ic, align 8, !tbaa !444
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.id, ptr noundef nonnull align 8 dereferenceable(12) %i.ic, i64 12, i1 false), !tbaa.struct !2650
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 8 dereferenceable(12) %i.ic, i64 12, i1 false)
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ie, ptr noundef nonnull align 8 dereferenceable(12) %i.ic, i64 12, i1 false)
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !191 ; 7 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !175 ; 6 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !178 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 16 ; 4 uses
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !197
  %.not.i.i29 = icmp eq i32 %i.il, 0
  br i1 %.not.i.i29, label %_ZN17hb_draw_session_t10close_pathEv.exit, label %bb.am, !prof !48

bb.am:                                            ; preds = %bb.al
  %i.im = getelementptr inbounds nuw i8, ptr %i.ig, i64 20
  %i.in = load float, ptr %i.im, align 4, !tbaa !198 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ig, i64 28
  %i.ip = load float, ptr %i.io, align 4, !tbaa !199
  %i.iq = fcmp une float %i.in, %i.ip
  %.phi.trans.insert63 = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %.pre64 = load float, ptr %.phi.trans.insert63, align 8, !tbaa !200 ; 2 uses
  br i1 %i.iq, label %._crit_edge62, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ig, i64 32
  %i.is = load float, ptr %i.ir, align 8, !tbaa !820
  %i.it = fcmp une float %.pre64, %i.is
  br i1 %i.it, label %._crit_edge62, label %bb.ap

._crit_edge62:                                    ; preds = %bb.am, %bb.an
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ih, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !201
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ih, i64 56
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !204 ; 2 uses
  %.not.i46 = icmp eq ptr %i.ix, null
  br i1 %.not.i46, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit47, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge62
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !205
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit47

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit47: ; preds = %._crit_edge62, %bb.ao
  %i.ja = phi ptr [ %i.iz, %bb.ao ], [ null, %._crit_edge62 ]
  tail call void %i.iv(ptr noundef nonnull align 8 dereferenceable(72) %i.ih, ptr noundef %i.ij, ptr noundef nonnull align 4 dereferenceable(48) %i.ik, float noundef %i.in, float noundef %.pre64, ptr noundef %i.ja) #63, !inline_history !821
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit47, %bb.an
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ih, i64 48
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !208
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ih, i64 56
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !204 ; 2 uses
  %.not.i48 = icmp eq ptr %i.je, null
  br i1 %.not.i48, label %_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit49, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 32
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !209
  br label %_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit49

_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit49: ; preds = %bb.ap, %bb.aq
  %i.jh = phi ptr [ %i.jg, %bb.aq ], [ null, %bb.ap ]
  tail call void %i.jc(ptr noundef nonnull align 8 dereferenceable(72) %i.ih, ptr noundef %i.ij, ptr noundef nonnull align 4 dereferenceable(48) %i.ik, ptr noundef %i.jh) #63, !inline_history !822
  br label %_ZN17hb_draw_session_t10close_pathEv.exit

_ZN17hb_draw_session_t10close_pathEv.exit:        ; preds = %bb.al, %_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ik, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT9glyf_impl11SimpleGlyph18get_contour_pointsER22contour_point_vector_tb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2651, !nonnull !74 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 10 ; 4 uses
  %i.c = load i16, ptr %i.a, align 1, !tbaa !62   ; 2 uses
  %i.d = tail call noundef i16 @llvm.bswap.i16(i16 %i.c) ; 4 uses
  %i.e = sext i16 %i.d to i32                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = sext i16 %i.d to i64
  %i.h = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.g ; 6 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !2653 ; 2 uses
  %.not.i = icmp ugt ptr %i.i, %i.h
  br i1 %.not.i, label %.critedge, label %bb.b, !prof !787

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !2654
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l ; 2 uses
  %.not6.i = icmp ule ptr %i.h, %i.m
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.h to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = and i64 %i.p, 4294967294
  %i.r = icmp ne i64 %i.q, 0
  %or.cond = and i1 %.not6.i, %i.r
  br i1 %or.cond, label %bb.c, label %.critedge, !prof !2655

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %i.h, i64 -2
  %i.t = load i16, ptr %i.s, align 1, !tbaa !62
  %i.u = tail call noundef i16 @llvm.bswap.i16(i16 %i.t)
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  %i.w = add nuw nsw i32 %i.v, 1                  ; 3 uses
  %i.x = icmp ult i32 %i.w, %i.e
  br i1 %i.x, label %.critedge, label %bb.d, !prof !48

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !193  ; 4 uses
  %i.aa = add nuw nsw i32 %i.v, 5
  %i.ab = add i32 %i.aa, %i.z
  %i.ac = tail call noundef zeroext i1 @_ZN11hb_vector_tI15contour_point_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.ab, i1 noundef zeroext false) ; 0 uses
  %i.ad = load i32, ptr %i.y, align 4, !tbaa !193
  %i.ae = add i32 %i.ad, %i.w                     ; 5 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %.critedge, label %bb.e, !prof !48

bb.e:                                             ; preds = %bb.d
  %i.ag = tail call noundef zeroext i1 @_ZN11hb_vector_tI15contour_point_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.ae, i1 noundef zeroext false)
  br i1 %i.ag, label %bb.f, label %.critedge, !prof !383

bb.f:                                             ; preds = %bb.e
  store i32 %i.ae, ptr %i.y, align 4, !tbaa !193
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !2564 ; 2 uses
  %.not83 = icmp eq i32 %i.z, 0
  br i1 %.not83, label %_ZNK10hb_array_tI15contour_point_tE9sub_arrayEjPj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %storemerge.i = tail call i32 @llvm.usub.sat.i32(i32 %i.ae, i32 %i.z)
  %i.aj = zext i32 %i.z to i64
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %i.ai, i64 %i.aj
  br label %_ZNK10hb_array_tI15contour_point_tE9sub_arrayEjPj.exit

_ZNK10hb_array_tI15contour_point_tE9sub_arrayEjPj.exit: ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.in = phi i32 [ %storemerge.i, %bb.g ], [ %i.ae, %bb.f ] ; 7 uses
  %.sroa.0.0.i = phi ptr [ %i.ak, %bb.g ], [ %i.ai, %bb.f ] ; 17 uses
  %.sroa.3.0.i = zext nneg i32 %.sroa.3.0.i.in to i64
  br i1 %2, label %.critedge, label %_ZL9hb_memsetPvij.exit

_ZL9hb_memsetPvij.exit:                           ; preds = %_ZNK10hb_array_tI15contour_point_tE9sub_arrayEjPj.exit
  %i.al = mul nuw nsw i32 %i.w, 12
  %i.am = zext nneg i32 %i.al to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.i, i8 0, i64 %i.am, i1 false)
  %i.an = icmp sgt i16 %i.d, 0
  br i1 %i.an, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZL9hb_memsetPvij.exit
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ao = icmp eq i16 %i.c, 256
  br i1 %i.ao, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 32766
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod116 = trunc i16 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod116)
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.epil.init
  %i.aq = load i16, ptr %i.ap, align 1, !tbaa !62
  %i.ar = tail call noundef i16 @llvm.bswap.i16(i16 %i.aq) ; 2 uses
  %i.as = zext i16 %i.ar to i32
  %.not.i.i.epil = icmp ugt i32 %.sroa.3.0.i.in, %i.as
  br i1 %.not.i.i.epil, label %bb.i, label %bb.h, !prof !49

bb.h:                                             ; preds = %.lr.ph.epil.preheader
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, i8 0, i64 12, i1 false)
  br label %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit.epil

bb.i:                                             ; preds = %.lr.ph.epil.preheader
  %i.at = zext i16 %i.ar to i64
  %i.au = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i, i64 %i.at
  br label %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit.epil

_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit.epil: ; preds = %bb.i, %bb.h
  %.0.i.i.epil = phi ptr [ @_hb_CrapPool, %bb.h ], [ %i.au, %bb.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i.epil, i64 9
  store i8 1, ptr %i.av, align 1, !tbaa !2571
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit.epil, %._crit_edge.loopexit.unr-lcssa, %_ZL9hb_memsetPvij.exit
  %i.aw = getelementptr i8, ptr %i.h, i64 2
  %i.ax = load i16, ptr %i.h, align 1, !tbaa !62
  %i.ay = tail call noundef i16 @llvm.bswap.i16(i16 %i.ax)
  %i.az = zext i16 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.az ; 3 uses
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !2656 ; 2 uses
  %i.bc = icmp ult ptr %i.ba, %i.bb
  br i1 %i.bc, label %.critedge, label %bb.n, !prof !48

.lr.ph:                                           ; preds = %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit.1, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit.1 ]
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv
  %i.be = load i16, ptr %i.bd, align 1, !tbaa !62
  %i.bf = tail call noundef i16 @llvm.bswap.i16(i16 %i.be) ; 2 uses
  %i.bg = zext i16 %i.bf to i32
  %.not.i.i = icmp ugt i32 %.sroa.3.0.i.in, %i.bg
  br i1 %.not.i.i, label %bb.k, label %bb.j, !prof !49

bb.j:                                             ; preds = %.lr.ph
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, i8 0, i64 12, i1 false)
  br label %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit

bb.k:                                             ; preds = %.lr.ph
  %i.bh = zext i16 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i, i64 %i.bh
  br label %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit

_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit: ; preds = %bb.j, %bb.k
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.j ], [ %i.bi, %bb.k ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 9
  store i8 1, ptr %i.bj, align 1, !tbaa !2571
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bm = load i16, ptr %i.bl, align 1, !tbaa !62
  %i.bn = tail call noundef i16 @llvm.bswap.i16(i16 %i.bm) ; 2 uses
  %i.bo = zext i16 %i.bn to i32
  %.not.i.i.1 = icmp ugt i32 %.sroa.3.0.i.in, %i.bo
  br i1 %.not.i.i.1, label %bb.m, label %bb.l, !prof !49

bb.l:                                             ; preds = %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, i8 0, i64 12, i1 false)
  br label %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit.1

bb.m:                                             ; preds = %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit
  %i.bp = zext i16 %i.bn to i64
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i, i64 %i.bp
  br label %_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit.1

_ZN9hb_iter_tI10hb_array_tI15contour_point_tERS1_EixEj.exit.1: ; preds = %bb.m, %bb.l
  %.0.i.i.1 = phi ptr [ @_hb_CrapPool, %bb.l ], [ %i.bq, %bb.m ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i.1, i64 9
  store i8 1, ptr %i.br, align 1, !tbaa !2571
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !2657

bb.n:                                             ; preds = %._crit_edge
  %i.bs = load i32, ptr %i.j, align 8, !tbaa !2658
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bt ; 7 uses
  %.not = icmp ult ptr %i.ba, %i.bu
  br i1 %.not, label %bb.o, label %.critedge, !prof !49

bb.o:                                             ; preds = %bb.n
  %.not3139.i = icmp eq i32 %.sroa.3.0.i.in, 0
  br i1 %.not3139.i, label %.critedge, label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %bb.o, %.loopexit.i
  %.02240.i = phi i32 [ %.3.i, %.loopexit.i ], [ 0, %bb.o ] ; 4 uses
  %i.bv = phi ptr [ %.168, %.loopexit.i ], [ %i.ba, %bb.o ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1 ; 3 uses
  %i.bx = icmp ugt ptr %i.bw, %i.bu
  br i1 %i.bx, label %.critedge, label %bb.p, !prof !48

bb.p:                                             ; preds = %.lr.ph42.i
end_hunk_2
begin_hunk_3_@_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_:bb.a
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %1) #63 ; 0 uses
  %i.h = load i32, ptr %i.a, align 4, !tbaa !2807 ; 2 uses
  %.not59 = icmp eq i32 %i.h, 0
  br i1 %.not59, label %._crit_edge, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit: ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph, %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit
  %i.j = phi i32 [ %i.h, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4tailEv.exit.lr.ph ], [ %i.q, %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit ]
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !555
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %.sroa.3.0..0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..0.i.i.sroa_idx, align 8, !tbaa !170
  %.sroa.4.0..0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..0.i.i.sroa_idx, align 8, !tbaa !170 ; 2 uses
  store i32 %i.k, ptr %i.a, align 4, !tbaa !558, !noalias !2810
  %i.o = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #63 ; 0 uses
  %.not.i6 = icmp eq ptr %.sroa.4.0.copyload, null
  br i1 %.not.i6, label %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit
  tail call void %.sroa.4.0.copyload(ptr noundef %.sroa.3.0.copyload) #63, !inline_history !2813
  br label %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit

_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit: ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit, %bb.e
  %i.p = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %1) #63 ; 0 uses
  %i.q = load i32, ptr %i.a, align 4, !tbaa !2807 ; 2 uses
  %.not5 = icmp eq i32 %i.q, 0
  br i1 %.not5, label %._crit_edge, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit, !llvm.loop !2814

._crit_edge:                                      ; preds = %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit, %bb.d
  %i.r = load i32, ptr %0, align 8, !tbaa !2809
  %i.s = add i32 %i.r, -1
  %spec.select.i.i7 = icmp ult i32 %i.s, -2
  br i1 %spec.select.i.i7, label %bb.f, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8

bb.f:                                             ; preds = %._crit_edge
  store i32 0, ptr %i.a, align 4, !tbaa !558
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !555
  tail call void @free(ptr noundef %i.u) #63
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8: ; preds = %._crit_edge, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.v = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #63 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit8, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4finiEv.exit
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !1018   ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !139
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !48

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !1019

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 536870911
  br i1 %i.j, label %.critedge, label %bb.e, !prof !48

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not50 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not50, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1020
  tail call void @free(ptr noundef %i.m) #63
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1020 ; 3 uses
  br i1 %.not50, label %bb.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 3
  %i.q = zext i32 %i.p to i64
  %i.r = tail call noalias noundef ptr @malloc(i64 noundef %i.q) #65 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread54, label %bb.k, !prof !48

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !1017 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !48

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %i.o, i64 %i.v, i1 false), !alias.scope !2815
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.w = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.x = shl nuw i32 %.138, 3
  %i.y = zext i32 %i.x to i64
  %i.z = tail call noalias noundef ptr @realloc(ptr noundef %i.w, i64 noundef %i.y) #66 ; 2 uses
  %.not22 = icmp eq ptr %i.z, null
  br i1 %.not22, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread54, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread, !prof !130

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread54: ; preds = %bb.j, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit
  %i.aa = load i32, ptr %0, align 8, !tbaa !1018  ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.aa
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread54
  %i.ab = xor i32 %i.aa, -1
  br label %.sink.split

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.z, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ac, align 8, !tbaa !1020
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ab, %bb.m ], [ %.138, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !1018
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread54, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread54 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN2OT16OpenTypeFontFileEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1012
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2793 ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !48

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1025
  store ptr %i.f, ptr %i.d, align 8, !tbaa !2793
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !2819
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !49

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.l = tail call noalias noundef dereferenceable_or_null(1792) ptr @malloc(i64 noundef 1792) #65 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !2796
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !48

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !2796
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !2793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1025
  store ptr %i.p, ptr %i.d, align 8, !tbaa !2793
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !1012
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !1012
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
  %i.r = phi ptr [ %i.e, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9 ], [ %i.o, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !574
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !574
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1054
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !2805
  store ptr %i.r, ptr %i.u, align 8, !tbaa !1054
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !1013
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !2799   ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !139
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !48

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !2820

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 536870911
  br i1 %i.j, label %.critedge, label %bb.e, !prof !48

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not50 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not50, label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2795
  tail call void @free(ptr noundef %i.m) #63
  br label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2795 ; 3 uses
  br i1 %.not50, label %bb.i, label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.138, 3
  %i.q = zext i32 %i.p to i64
  %i.r = tail call noalias noundef ptr @malloc(i64 noundef %i.q) #65 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread54, label %bb.k, !prof !48

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !2794 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !48

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %i.o, i64 %i.v, i1 false), !alias.scope !2821
  br label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.w = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.x = shl nuw i32 %.138, 3
  %i.y = zext i32 %i.x to i64
  %i.z = tail call noalias noundef ptr @realloc(ptr noundef %i.w, i64 noundef %i.y) #66 ; 2 uses
  %.not22 = icmp eq ptr %i.z, null
  br i1 %.not22, label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread54, label %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread, !prof !130

_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread54: ; preds = %bb.j, %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit
  %i.aa = load i32, ptr %0, align 8, !tbaa !2799  ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.aa
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread54
  %i.ab = xor i32 %i.aa, -1
  br label %.sink.split

_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.z, %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ac, align 8, !tbaa !2795
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ab, %bb.m ], [ %.138, %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !2799
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread54, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE14realloc_vectorIS5_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS5_j11hb_priorityILj0EE.exit.thread54 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !2794 ; 3 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !2799
  %.not = icmp slt i32 %i.b, %i.c
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, 1
  %i.e = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.d, i1 noundef zeroext false)
  br i1 %i.e, label %..critedge_crit_edge, label %bb.c, !prof !49

..critedge_crit_edge:                             ; preds = %bb.b
  %.pre = load i32, ptr %i.a, align 4, !tbaa !2794
  br label %.critedge

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %bb.d

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.a
  %i.f = phi i32 [ %.pre, %..critedge_crit_edge ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2795
  %i.i = add i32 %i.f, 1
  store i32 %i.i, ptr %i.a, align 4, !tbaa !2794
  %i.j = zext i32 %i.f to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !2796
  store ptr %i.l, ptr %i.k, align 8, !tbaa !2796
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  %.0 = phi ptr [ @_hb_CrapPool, %bb.c ], [ %i.k, %.critedge ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !1025
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !1025
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !1025
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !1025
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !1025
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !1025
end_hunk_3
begin_hunk_4_@_ZN3CFF12path_procs_tI25cff1_path_procs_extents_tNS_20cff1_cs_interp_env_tE20cff1_extents_param_tE9hvcurvetoERS2_RS3_:bb.a
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.cl
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit115

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit115: ; preds = %bb.w, %bb.x
  %.0.i.i114 = phi ptr [ @_hb_CrapPool, %bb.w ], [ %i.cm, %bb.x ]
  %i.cn = or disjoint i32 %.1141, 2               ; 2 uses
  %.not.i.i116 = icmp ult i32 %i.cn, %i.cd
  br i1 %.not.i.i116, label %bb.z, label %bb.y, !prof !49

bb.y:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit115
  store i8 1, ptr %i.a, align 8, !tbaa !2953
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit118

bb.z:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit115
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.co
  %.pre154 = load double, ptr %i.cp, align 8, !tbaa !325
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit118

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit118: ; preds = %bb.y, %bb.z
  %i.cq = phi double [ 0.000000e+00, %bb.y ], [ %.pre154, %bb.z ]
  %i.cr = load double, ptr %.0.i.i114, align 8, !tbaa !325
  %i.cs = load <2 x double>, ptr %3, align 16, !tbaa !325
  %i.ct = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.cu = insertelement <2 x double> %i.ct, double %i.cq, i64 1
  %i.cv = fadd <2 x double> %i.cs, %i.cu
  store <2 x double> %i.cv, ptr %3, align 16, !tbaa !325
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !2963
  %i.cw = or disjoint i32 %.1141, 3               ; 2 uses
  %.not.i.i119 = icmp ult i32 %i.cw, %i.cd
  br i1 %.not.i.i119, label %bb.ab, label %bb.aa, !prof !49

bb.aa:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit118
  store i8 1, ptr %i.a, align 8, !tbaa !2953
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121

bb.ab:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit118
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.cx
  %.pre155 = load double, ptr %i.cy, align 8, !tbaa !325
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121: ; preds = %bb.aa, %bb.ab
  %i.cz = phi double [ 0.000000e+00, %bb.aa ], [ %.pre155, %bb.ab ]
  %i.da = load double, ptr %i.g, align 8, !tbaa !325
  %i.db = fadd double %i.da, %i.cz
  store double %i.db, ptr %i.g, align 8, !tbaa !325
  call void @_ZN25cff1_path_procs_extents_t5curveERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tES7_S7_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !2963
  %i.dc = or disjoint i32 %.1141, 4               ; 2 uses
  %i.dd = load i32, ptr %i.b, align 4, !tbaa !1554 ; 7 uses
  %.not.i.i122 = icmp ult i32 %i.dc, %i.dd
  br i1 %.not.i.i122, label %bb.ad, label %bb.ac, !prof !49

bb.ac:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121
  store i8 1, ptr %i.a, align 8, !tbaa !2953
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit124

bb.ad:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit121
  %i.de = zext i32 %i.dc to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.de
  %.pre156 = load double, ptr %i.df, align 8, !tbaa !325
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit124

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit124: ; preds = %bb.ac, %bb.ad
  %i.dg = phi double [ 0.000000e+00, %bb.ac ], [ %.pre156, %bb.ad ]
  %i.dh = load double, ptr %i.h, align 8, !tbaa !325
  %i.di = fadd double %i.dh, %i.dg
  store double %i.di, ptr %i.h, align 8, !tbaa !325
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !2963
  %i.dj = or disjoint i32 %.1141, 5               ; 2 uses
  %.not.i.i125 = icmp ult i32 %i.dj, %i.dd
  br i1 %.not.i.i125, label %bb.af, label %bb.ae, !prof !49

bb.ae:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit124
  store i8 1, ptr %i.a, align 8, !tbaa !2953
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit127

bb.af:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit124
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.dk
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit127

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit127: ; preds = %bb.ae, %bb.af
  %.0.i.i126 = phi ptr [ @_hb_CrapPool, %bb.ae ], [ %i.dl, %bb.af ]
  %i.dm = or disjoint i32 %.1141, 6               ; 2 uses
  %.not.i.i128 = icmp ult i32 %i.dm, %i.dd
  br i1 %.not.i.i128, label %bb.ah, label %bb.ag, !prof !49

bb.ag:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit127
  store i8 1, ptr %i.a, align 8, !tbaa !2953
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit130

bb.ah:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit127
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.dn
  %.pre157 = load double, ptr %i.do, align 8, !tbaa !325
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit130

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit130: ; preds = %bb.ag, %bb.ah
  %i.dp = phi double [ 0.000000e+00, %bb.ag ], [ %.pre157, %bb.ah ]
  %i.dq = load double, ptr %.0.i.i126, align 8, !tbaa !325
  %i.dr = load <2 x double>, ptr %3, align 16, !tbaa !325
  %i.ds = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.dt = insertelement <2 x double> %i.ds, double %i.dp, i64 1
  %i.du = fadd <2 x double> %i.dr, %i.dt
  store <2 x double> %i.du, ptr %3, align 16, !tbaa !325
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !2963
  %i.dv = or disjoint i32 %.1141, 7               ; 2 uses
  %.not.i.i131 = icmp ult i32 %i.dv, %i.dd
  br i1 %.not.i.i131, label %bb.aj, label %bb.ai, !prof !49

bb.ai:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit130
  store i8 1, ptr %i.a, align 8, !tbaa !2953
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133

bb.aj:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit130
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.dw
  %.pre158 = load double, ptr %i.dx, align 8, !tbaa !325
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133: ; preds = %bb.ai, %bb.aj
  %i.dy = phi double [ 0.000000e+00, %bb.ai ], [ %.pre158, %bb.aj ]
  %i.dz = load double, ptr %4, align 8, !tbaa !325
  %i.ea = fadd double %i.dz, %i.dy
  store double %i.ea, ptr %4, align 8, !tbaa !325
  %i.eb = sub i32 %i.dd, %.1141
  %i.ec = icmp ugt i32 %i.eb, 15
  %i.ed = and i32 %i.dd, 1
  %.not72 = icmp eq i32 %i.ed, 0
  %or.cond = or i1 %i.ec, %.not72
  br i1 %or.cond, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133
  %.not.i.i134 = icmp ult i32 %i.ce, %i.dd
  br i1 %.not.i.i134, label %bb.am, label %bb.al, !prof !49

bb.al:                                            ; preds = %bb.ak
  store i8 1, ptr %i.a, align 8, !tbaa !2953
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit136

bb.am:                                            ; preds = %bb.ak
  %i.ee = zext i32 %i.ce to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ee
  %.pre159 = load double, ptr %i.ef, align 8, !tbaa !325
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit136

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit136: ; preds = %bb.al, %bb.am
  %i.eg = phi double [ 0.000000e+00, %bb.al ], [ %.pre159, %bb.am ]
  %i.eh = load double, ptr %i.g, align 8, !tbaa !325
  %i.ei = fadd double %i.eh, %i.eg
  store double %i.ei, ptr %i.g, align 8, !tbaa !325
  br label %bb.an

bb.an:                                            ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit136, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit133
  call void @_ZN25cff1_path_procs_extents_t5curveERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tES7_S7_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.ej = add i32 %i.ce, 8                        ; 2 uses
  %i.ek = load i32, ptr %i.b, align 4, !tbaa !1554 ; 2 uses
  %.not71 = icmp ugt i32 %i.ej, %i.ek
  br i1 %.not71, label %.loopexit, label %bb.t, !llvm.loop !2972

.loopexit:                                        ; preds = %bb.an, %.preheader, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #63
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI25cff1_path_procs_extents_tNS_20cff1_cs_interp_env_tE20cff1_extents_param_tE5hflexERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.CFF::point_t", align 8     ; 8 uses
  %3 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %4 = alloca %"struct.CFF::point_t", align 8     ; 7 uses
  %5 = alloca %"struct.CFF::point_t", align 8     ; 7 uses
  %6 = alloca %"struct.CFF::point_t", align 8     ; 8 uses
  %7 = alloca %"struct.CFF::point_t", align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1554
  %i.c = icmp eq i32 %i.b, 7
  br i1 %i.c, label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit29, label %bb.b, !prof !49

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit29: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #63
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !2963
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load double, ptr %2, align 8, !tbaa !325
  %i.g = load double, ptr %i.e, align 8, !tbaa !325
  %i.h = fadd double %i.f, %i.g
  store double %i.h, ptr %2, align 8, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !2963
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load <2 x double>, ptr %i.i, align 8, !tbaa !325
  %i.k = load <2 x double>, ptr %3, align 16, !tbaa !325
  %i.l = fadd <2 x double> %i.k, %i.j
  store <2 x double> %i.l, ptr %3, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !2963
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre30 = load double, ptr %i.m, align 8, !tbaa !325
  %i.n = load double, ptr %4, align 8, !tbaa !325
  %i.o = fadd double %i.n, %.pre30
  store double %i.o, ptr %4, align 8, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !2963
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre31 = load double, ptr %i.p, align 8, !tbaa !325
  %i.q = load double, ptr %5, align 8, !tbaa !325
  %i.r = fadd double %i.q, %.pre31
  store double %i.r, ptr %5, align 8, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !2963
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre32 = load double, ptr %i.s, align 8, !tbaa !325
  %i.t = load double, ptr %6, align 8, !tbaa !325
  %i.u = fadd double %i.t, %.pre32
  store double %i.u, ptr %6, align 8, !tbaa !325
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.x = load i64, ptr %i.v, align 8, !tbaa !795
  store i64 %i.x, ptr %i.w, align 8, !tbaa !795
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !2963
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre33 = load double, ptr %i.y, align 8, !tbaa !325
  %i.z = load double, ptr %7, align 8, !tbaa !325
  %i.aa = fadd double %i.z, %.pre33
  store double %i.aa, ptr %7, align 8, !tbaa !325
  call void @_ZN25cff1_path_procs_extents_t5curveERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tES7_S7_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @_ZN25cff1_path_procs_extents_t5curveERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tES7_S7_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #63
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !308
  %i.ad = add i32 %i.ac, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !263
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI25cff1_path_procs_extents_tNS_20cff1_cs_interp_env_tE20cff1_extents_param_tE4flexERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %3 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %4 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %5 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %6 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %7 = alloca %"struct.CFF::point_t", align 16    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1554
  %i.c = icmp eq i32 %i.b, 13
  br i1 %i.c, label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49, label %bb.b, !prof !49

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #63
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !2963
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !325
  %i.g = load <2 x double>, ptr %2, align 16, !tbaa !325
  %i.h = fadd <2 x double> %i.g, %i.f
  store <2 x double> %i.h, ptr %2, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !2963
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load <2 x double>, ptr %i.i, align 8, !tbaa !325
  %i.k = load <2 x double>, ptr %3, align 16, !tbaa !325
  %i.l = fadd <2 x double> %i.k, %i.j
  store <2 x double> %i.l, ptr %3, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !2963
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load <2 x double>, ptr %i.m, align 8, !tbaa !325
  %i.o = load <2 x double>, ptr %4, align 16, !tbaa !325
  %i.p = fadd <2 x double> %i.o, %i.n
  store <2 x double> %i.p, ptr %4, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !2963
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load <2 x double>, ptr %i.q, align 8, !tbaa !325
  %i.s = load <2 x double>, ptr %5, align 16, !tbaa !325
  %i.t = fadd <2 x double> %i.s, %i.r
  store <2 x double> %i.t, ptr %5, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !2963
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load <2 x double>, ptr %i.u, align 8, !tbaa !325
  %i.w = load <2 x double>, ptr %6, align 16, !tbaa !325
  %i.x = fadd <2 x double> %i.w, %i.v
  store <2 x double> %i.x, ptr %6, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !2963
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = load <2 x double>, ptr %i.y, align 8, !tbaa !325
  %i.aa = load <2 x double>, ptr %7, align 16, !tbaa !325
  %i.ab = fadd <2 x double> %i.aa, %i.z
  store <2 x double> %i.ab, ptr %7, align 16, !tbaa !325
  call void @_ZN25cff1_path_procs_extents_t5curveERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tES7_S7_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @_ZN25cff1_path_procs_extents_t5curveERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tES7_S7_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #63
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !308
  %i.ae = add i32 %i.ad, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !263
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI25cff1_path_procs_extents_tNS_20cff1_cs_interp_env_tE20cff1_extents_param_tE6hflex1ERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %3 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %4 = alloca %"struct.CFF::point_t", align 8     ; 7 uses
  %5 = alloca %"struct.CFF::point_t", align 8     ; 7 uses
  %6 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %7 = alloca %"struct.CFF::point_t", align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1554
  %i.c = icmp eq i32 %i.b, 9
  br i1 %i.c, label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit38, label %bb.b, !prof !49

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit38: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #63
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !2963
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !325
  %i.g = load <2 x double>, ptr %2, align 16, !tbaa !325
  %i.h = fadd <2 x double> %i.g, %i.f
  store <2 x double> %i.h, ptr %2, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !2963
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load <2 x double>, ptr %i.i, align 8, !tbaa !325
  %i.k = load <2 x double>, ptr %3, align 16, !tbaa !325
  %i.l = fadd <2 x double> %i.k, %i.j
  store <2 x double> %i.l, ptr %3, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !2963
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre40 = load double, ptr %i.m, align 8, !tbaa !325
  %i.n = load double, ptr %4, align 8, !tbaa !325
  %i.o = fadd double %i.n, %.pre40
  store double %i.o, ptr %4, align 8, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !2963
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre41 = load double, ptr %i.p, align 8, !tbaa !325
  %i.q = load double, ptr %5, align 8, !tbaa !325
  %i.r = fadd double %i.q, %.pre41
  store double %i.r, ptr %5, align 8, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !2963
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load <2 x double>, ptr %i.s, align 8, !tbaa !325
  %i.u = load <2 x double>, ptr %6, align 16, !tbaa !325
  %i.v = fadd <2 x double> %i.u, %i.t
  store <2 x double> %i.v, ptr %6, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !2963
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre43 = load double, ptr %i.w, align 8, !tbaa !325
  %i.x = load double, ptr %7, align 8, !tbaa !325
  %i.y = fadd double %i.x, %.pre43
  store double %i.y, ptr %7, align 8, !tbaa !325
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4456
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !795
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !795
  call void @_ZN25cff1_path_procs_extents_t5curveERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tES7_S7_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @_ZN25cff1_path_procs_extents_t5curveERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tES7_S7_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #63
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !308
  %i.ae = add i32 %i.ad, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !263
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI25cff1_path_procs_extents_tNS_20cff1_cs_interp_env_tE20cff1_extents_param_tE5flex1ERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %3 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %4 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %5 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %6 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %7 = alloca %"struct.CFF::point_t", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1554
  %i.c = icmp eq i32 %i.b, 11
  br i1 %i.c, label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit50, label %bb.c, !prof !49

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit50: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load double, ptr %i.e, align 8, !tbaa !325
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #63
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !2963
  %i.k = load <2 x double>, ptr %i.d, align 8, !tbaa !325 ; 2 uses
  %i.l = load <2 x double>, ptr %2, align 16, !tbaa !325
  %i.m = fadd <2 x double> %i.l, %i.k
  store <2 x double> %i.m, ptr %2, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !2963
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load <2 x double>, ptr %i.n, align 8, !tbaa !325
  %i.p = load <2 x double>, ptr %3, align 16, !tbaa !325
  %i.q = fadd <2 x double> %i.p, %i.o
  store <2 x double> %i.q, ptr %3, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !2963
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load <2 x double>, ptr %i.r, align 8, !tbaa !325
  %i.t = load <2 x double>, ptr %4, align 16, !tbaa !325
  %i.u = fadd <2 x double> %i.t, %i.s
  store <2 x double> %i.u, ptr %4, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !2963
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load <2 x double>, ptr %i.v, align 8, !tbaa !325
  %i.x = load <2 x double>, ptr %5, align 16, !tbaa !325
  %i.y = fadd <2 x double> %i.x, %i.w
  store <2 x double> %i.y, ptr %5, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !2963
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aa = load <2 x double>, ptr %i.z, align 8, !tbaa !325
  %i.ab = load <2 x double>, ptr %6, align 16, !tbaa !325
  %i.ac = fadd <2 x double> %i.ab, %i.aa
  store <2 x double> %i.ac, ptr %6, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !2963
  %i.ad = load <2 x double>, ptr %i.f, align 8, !tbaa !325
  %i.ae = load <2 x double>, ptr %i.g, align 8, !tbaa !325
  %i.af = load <2 x double>, ptr %i.h, align 8, !tbaa !325
  %i.ag = load <2 x double>, ptr %i.i, align 8, !tbaa !325
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
  br i1 %i.aq, label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit59, label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit62

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit59: ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit50
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre80 = load double, ptr %i.ar, align 8, !tbaa !325
  %i.as = load double, ptr %7, align 8, !tbaa !325
  %i.at = fadd double %i.as, %.pre80
  store double %i.at, ptr %7, align 8, !tbaa !325
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4456
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !795
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !795
  br label %bb.b

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit62: ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit50
  %i.ax = load i64, ptr %i.j, align 8, !tbaa !795
  store i64 %i.ax, ptr %7, align 8, !tbaa !795
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre79 = load double, ptr %i.ay, align 8, !tbaa !325
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !325
  %i.bb = fadd double %i.ba, %.pre79
  store double %i.bb, ptr %i.az, align 8, !tbaa !325
  br label %bb.b

bb.b:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit62, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit59
  call void @_ZN25cff1_path_procs_extents_t5curveERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tES7_S7_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @_ZN25cff1_path_procs_extents_t5curveERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tES7_S7_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #63
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !308
  %i.be = add i32 %i.bd, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !263
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
  %i.c = load i32, ptr %i.b, align 4, !tbaa !263  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !308  ; 4 uses
  %.not.i = icmp ult i32 %i.c, %i.e
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !49

bb.c:                                             ; preds = %bb.b
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %i.b, align 4, !tbaa !263
  br label %_ZN3CFF14byte_str_ref_tixEi.exit

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !306
  %i.h = zext i32 %i.c to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  br label %_ZN3CFF14byte_str_ref_tixEi.exit

_ZN3CFF14byte_str_ref_tixEi.exit:                 ; preds = %bb.c, %bb.d
  %i.j = phi i32 [ %i.f, %bb.c ], [ %i.c, %bb.d ] ; 2 uses
  %.0.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.i, %bb.d ]
  %i.k = load i8, ptr %.0.i, align 1, !tbaa !61
  %i.l = zext i8 %i.k to i16
  %i.m = shl nuw i16 %i.l, 8
  %i.n = add i32 %i.j, 1                          ; 2 uses
  %.not.i18 = icmp ult i32 %i.n, %i.e
  br i1 %.not.i18, label %bb.f, label %bb.e, !prof !49

bb.e:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit
  %i.o = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.o, ptr %i.b, align 4, !tbaa !263
  br label %_ZN3CFF14byte_str_ref_tixEi.exit20

bb.f:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit
  %i.p = load ptr, ptr %1, align 8, !tbaa !306
  %i.q = zext i32 %i.n to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  br label %_ZN3CFF14byte_str_ref_tixEi.exit20

_ZN3CFF14byte_str_ref_tixEi.exit20:               ; preds = %bb.e, %bb.f
  %i.s = phi i32 [ %i.o, %bb.e ], [ %i.j, %bb.f ]
  %.0.i19 = phi ptr [ @_hb_NullPool, %bb.e ], [ %i.r, %bb.f ]
  %i.t = load i8, ptr %.0.i19, align 1, !tbaa !61
  %i.u = zext i8 %i.t to i16
  %i.v = or disjoint i16 %i.m, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !1554 ; 3 uses
  %i.y = icmp ult i32 %i.x, 513
  br i1 %i.y, label %bb.g, label %bb.h, !prof !49

bb.g:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit20
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = add nuw nsw i32 %i.x, 1
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !1554
  %i.ab = zext nneg i32 %i.x to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit

bb.h:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit20
  store i8 1, ptr %i.a, align 8, !tbaa !2953
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit

_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit: ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.ac, %bb.g ], [ @_hb_CrapPool, %bb.h ]
  %i.ad = sitofp i16 %i.v to double
  store double %i.ad, ptr %.0.i.i, align 8, !tbaa !325
  %i.ae = add i32 %i.s, 2
  store i32 %i.ae, ptr %i.b, align 4, !tbaa !263
  br label %bb.x

bb.i:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = shl nuw nsw i32 %0, 8
  %i.ah = add nuw nsw i32 %i.ag, 2304
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !263 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !308 ; 2 uses
  %.not.i21 = icmp ult i32 %i.aj, %i.al
  br i1 %.not.i21, label %bb.k, label %bb.j, !prof !49

bb.j:                                             ; preds = %bb.i
  %i.am = add i32 %i.al, 1                        ; 2 uses
  store i32 %i.am, ptr %i.ai, align 4, !tbaa !263
  br label %_ZN3CFF14byte_str_ref_tixEi.exit23

bb.k:                                             ; preds = %bb.i
  %i.an = load ptr, ptr %1, align 8, !tbaa !306
  %i.ao = zext i32 %i.aj to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  br label %_ZN3CFF14byte_str_ref_tixEi.exit23

_ZN3CFF14byte_str_ref_tixEi.exit23:               ; preds = %bb.j, %bb.k
  %i.aq = phi i32 [ %i.am, %bb.j ], [ %i.aj, %bb.k ]
  %.0.i22 = phi ptr [ @_hb_NullPool, %bb.j ], [ %i.ap, %bb.k ]
  %i.ar = load i8, ptr %.0.i22, align 1, !tbaa !61
  %i.as = zext i8 %i.ar to i32
  %.masked = and i32 %i.ah, 65280
  %i.at = or disjoint i32 %.masked, 108
  %sext17 = add nuw nsw i32 %i.at, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !1554 ; 3 uses
  %i.aw = icmp ult i32 %i.av, 513
  br i1 %i.aw, label %bb.l, label %bb.m, !prof !49

bb.l:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit23
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = add nuw nsw i32 %i.av, 1
  store i32 %i.ay, ptr %i.au, align 4, !tbaa !1554
  %i.az = zext nneg i32 %i.av to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.az
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit25

bb.m:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit23
  store i8 1, ptr %i.af, align 8, !tbaa !2953
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit25

_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit25: ; preds = %bb.l, %bb.m
  %.0.i.i24 = phi ptr [ %i.ba, %bb.l ], [ @_hb_CrapPool, %bb.m ]
end_hunk_4
begin_hunk_5_@_ZN25cff1_path_procs_extents_t5curveERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tES7_S7_:bb.a
bb.k:                                             ; preds = %bb.j, %_ZN8bounds_t6updateERKN3CFF7point_tE.exit
  %i.z = phi double [ %i.x, %bb.j ], [ %i.v, %_ZN8bounds_t6updateERKN3CFF7point_tE.exit ]
  %i.aa = phi double [ %.pre.i13, %bb.j ], [ %i.x, %_ZN8bounds_t6updateERKN3CFF7point_tE.exit ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !325 ; 2 uses
  %i.ad = fcmp ogt double %i.aa, %i.ac
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store double %i.aa, ptr %i.ab, align 8, !tbaa !795
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ae = phi double [ %i.aa, %bb.l ], [ %i.ac, %bb.k ]
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !325 ; 2 uses
  %i.ai = load double, ptr %i.af, align 8         ; 4 uses
  %i.aj = fcmp ogt double %i.ah, %i.ai
  br i1 %i.aj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store double %i.ai, ptr %i.ag, align 8, !tbaa !795
  %.pre9.i12 = load double, ptr %i.af, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ak = phi double [ %i.ai, %bb.n ], [ %i.ah, %bb.m ]
  %i.al = phi double [ %.pre9.i12, %bb.n ], [ %i.ai, %bb.m ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !325 ; 2 uses
  %i.ao = fcmp ogt double %i.al, %i.an
  br i1 %i.ao, label %bb.p, label %_ZN8bounds_t6updateERKN3CFF7point_tE.exit14

bb.p:                                             ; preds = %bb.o
  store double %i.al, ptr %i.am, align 8, !tbaa !795
  br label %_ZN8bounds_t6updateERKN3CFF7point_tE.exit14

_ZN8bounds_t6updateERKN3CFF7point_tE.exit14:      ; preds = %bb.o, %bb.p
  %i.ap = phi double [ %i.an, %bb.o ], [ %i.al, %bb.p ]
  %i.aq = load double, ptr %3, align 8            ; 3 uses
  %i.ar = fcmp ogt double %i.z, %i.aq
  br i1 %i.ar, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN8bounds_t6updateERKN3CFF7point_tE.exit14
  store double %i.aq, ptr %i.w, align 8, !tbaa !795
  %.pre.i16 = load double, ptr %3, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN8bounds_t6updateERKN3CFF7point_tE.exit14
  %i.as = phi double [ %.pre.i16, %bb.q ], [ %i.aq, %_ZN8bounds_t6updateERKN3CFF7point_tE.exit14 ] ; 2 uses
  %i.at = fcmp ogt double %i.as, %i.ae
  br i1 %i.at, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store double %i.as, ptr %i.ab, align 8, !tbaa !795
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.av = load double, ptr %i.au, align 8         ; 3 uses
  %i.aw = fcmp ogt double %i.ak, %i.av
  br i1 %i.aw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store double %i.av, ptr %i.ag, align 8, !tbaa !795
  %.pre9.i15 = load double, ptr %i.au, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ax = phi double [ %.pre9.i15, %bb.u ], [ %i.av, %bb.t ] ; 2 uses
  %i.ay = fcmp ogt double %i.ax, %i.ap
  br i1 %i.ay, label %bb.w, label %_ZN8bounds_t6updateERKN3CFF7point_tE.exit17

bb.w:                                             ; preds = %bb.v
  store double %i.ax, ptr %i.am, align 8, !tbaa !795
  br label %_ZN8bounds_t6updateERKN3CFF7point_tE.exit17

_ZN8bounds_t6updateERKN3CFF7point_tE.exit17:      ; preds = %bb.v, %bb.w
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !2963
  %i.ba = load double, ptr %i.w, align 8, !tbaa !325
  %i.bb = load double, ptr %i.az, align 8         ; 3 uses
  %i.bc = fcmp ogt double %i.ba, %i.bb
  br i1 %i.bc, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN8bounds_t6updateERKN3CFF7point_tE.exit17
  store double %i.bb, ptr %i.w, align 8, !tbaa !795
  %.pre.i19 = load double, ptr %i.az, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN8bounds_t6updateERKN3CFF7point_tE.exit17
  %i.bd = phi double [ %.pre.i19, %bb.x ], [ %i.bb, %_ZN8bounds_t6updateERKN3CFF7point_tE.exit17 ] ; 2 uses
  %i.be = load double, ptr %i.ab, align 8, !tbaa !325
  %i.bf = fcmp ogt double %i.bd, %i.be
  br i1 %i.bf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store double %i.bd, ptr %i.ab, align 8, !tbaa !795
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 2 uses
  %i.bh = load double, ptr %i.ag, align 8, !tbaa !325
  %i.bi = load double, ptr %i.bg, align 8         ; 3 uses
  %i.bj = fcmp ogt double %i.bh, %i.bi
  br i1 %i.bj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store double %i.bi, ptr %i.ag, align 8, !tbaa !795
  %.pre9.i18 = load double, ptr %i.bg, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bk = phi double [ %.pre9.i18, %bb.ab ], [ %i.bi, %bb.aa ] ; 2 uses
  %i.bl = load double, ptr %i.am, align 8, !tbaa !325
  %i.bm = fcmp ogt double %i.bk, %i.bl
  br i1 %i.bm, label %bb.ad, label %_ZN8bounds_t6updateERKN3CFF7point_tE.exit20

bb.ad:                                            ; preds = %bb.ac
  store double %i.bk, ptr %i.am, align 8, !tbaa !795
  br label %_ZN8bounds_t6updateERKN3CFF7point_tE.exit20

_ZN8bounds_t6updateERKN3CFF7point_tE.exit20:      ; preds = %bb.ac, %bb.ad
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #30

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN20cff1_cs_opset_path_t12process_seacERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_t(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.CFF::point_t", align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1558 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !175  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !178  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !197
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZN17cff1_path_param_t8end_pathEv.exit, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.i = load float, ptr %i.h, align 4, !tbaa !198 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.k = load float, ptr %i.j, align 4, !tbaa !199
  %i.l = fcmp une float %i.i, %i.k
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 8, !tbaa !200 ; 2 uses
  br i1 %i.l, label %._crit_edge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.n = load float, ptr %i.m, align 8, !tbaa !820
  %i.o = fcmp une float %.pre.i, %i.n
  br i1 %i.o, label %._crit_edge.i, label %bb.e

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !201
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !204  ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !205
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i: ; preds = %bb.d, %._crit_edge.i
  %i.v = phi ptr [ %i.u, %bb.d ], [ null, %._crit_edge.i ]
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef %i.e, ptr noundef nonnull align 4 dereferenceable(48) %i.f, float noundef %i.i, float noundef %.pre.i, ptr noundef %i.v) #63, !inline_history !1566
  br label %bb.e

bb.e:                                             ; preds = %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !208
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !204  ; 2 uses
  %.not.i1.i = icmp eq ptr %i.z, null
  br i1 %.not.i1.i, label %_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !209
  br label %_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit.i

_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit.i: ; preds = %bb.f, %bb.e
  %i.ac = phi ptr [ %i.ab, %bb.f ], [ null, %bb.e ]
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef %i.e, ptr noundef nonnull align 4 dereferenceable(48) %i.f, ptr noundef %i.ac) #63, !inline_history !1567
  br label %_ZN17cff1_path_param_t8end_pathEv.exit

_ZN17cff1_path_param_t8end_pathEv.exit:           ; preds = %bb.a, %_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, i8 0, i64 20, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !1554 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %.not.i = icmp ugt i32 %i.af, 3
  br i1 %.not.i, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.thread, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit, !prof !49

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.thread: ; preds = %_ZN17cff1_path_param_t8end_pathEv.exit
  %i.ag = add i32 %i.af, -4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = zext i32 %i.ag to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ai
  %.pre = load i64, ptr %i.aj, align 8, !tbaa !795
  store i64 %.pre, ptr %2, align 8, !tbaa !795
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit29.thread

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit: ; preds = %_ZN17cff1_path_param_t8end_pathEv.exit
  store i8 1, ptr %i.ad, align 8, !tbaa !2953
  store i64 0, ptr @_hb_CrapPool, align 16
  %.not.i27 = icmp eq i32 %i.af, 3
  br i1 %.not.i27, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit29.thread, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit29, !prof !124

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit29.thread: ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.thread
  %i.ak = add i32 %i.af, -3
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = zext i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.am
  %.pre56 = load i64, ptr %i.an, align 8, !tbaa !795
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.pre56, ptr %i.ao, align 8, !tbaa !795
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1561
  br label %bb.h

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit29: ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit
  store i64 0, ptr @_hb_CrapPool, align 16
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1561 ; 2 uses
  %.not.i30 = icmp samesign ugt i32 %i.af, 1
  br i1 %.not.i30, label %bb.h, label %bb.g, !prof !124

bb.g:                                             ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit29
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit32

bb.h:                                             ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit29.thread, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit29
  %i.at = phi ptr [ %i.aq, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit29.thread ], [ %i.as, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit29 ]
  %i.au = phi ptr [ %i.ap, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit29.thread ], [ %i.ar, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit29 ]
  %i.av = add i32 %i.af, -2
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = zext i32 %i.av to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ax
  %.pr = load double, ptr %i.ay, align 8, !tbaa !325
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit32

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit32: ; preds = %bb.g, %bb.h
  %i.az = phi ptr [ %i.as, %bb.g ], [ %i.at, %bb.h ] ; 6 uses
  %i.ba = phi ptr [ %i.ar, %bb.g ], [ %i.au, %bb.h ] ; 3 uses
  %i.bb = phi double [ 0.000000e+00, %bb.g ], [ %.pr, %bb.h ] ; 5 uses
  %i.bc = fcmp oge double %i.bb, f0xC1E0000000000000
  %i.bd = fcmp ole double %i.bb, f0x41DFFFFFFFC00000
  %.not6.i.i = and i1 %i.bc, %i.bd
  %i.be = fptosi double %i.bb to i32
  br i1 %.not6.i.i, label %_ZNK3CFF8number_t6to_intEv.exit, label %bb.i, !prof !49

bb.i:                                             ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit32
  %i.bf = fcmp olt double %i.bb, 0.000000e+00
  %i.bg = fcmp ogt double %i.bb, 0.000000e+00
  %i.bh = select i1 %i.bg, i32 2147483647, i32 0
  br i1 %i.bf, label %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit, label %_ZNK3CFF8number_t6to_intEv.exit

_ZNK3CFF8number_t6to_intEv.exit:                  ; preds = %bb.i, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit32
  %.0.i33 = phi i32 [ %i.bh, %bb.i ], [ %i.be, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit32 ] ; 3 uses
  %i.bi = icmp ult i32 %.0.i33, 256
  br i1 %i.bi, label %_ZN2OT4cff132lookup_standard_encoding_for_sidEj.exit.i, label %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit

_ZN2OT4cff132lookup_standard_encoding_for_sidEj.exit.i: ; preds = %_ZNK3CFF8number_t6to_intEv.exit
  %i.bj = zext nneg i32 %.0.i33 to i64
  %i.bk = getelementptr inbounds nuw i8, ptr @_ZL24standard_encoding_to_sid, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !61
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 80
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !2954 ; 2 uses
  %.not.i35 = icmp eq ptr %i.bo, @_hb_NullPool
  br i1 %.not.i35, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN2OT4cff132lookup_standard_encoding_for_sidEj.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.az, i64 296
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !1526
  %i.br = tail call noundef i32 @_ZNK3CFF7Charset9get_glyphEjj(ptr noundef nonnull align 1 dereferenceable(5) %i.bo, i32 noundef %i.bm, i32 noundef %i.bq)
  %.pre57 = load ptr, ptr %i.ba, align 8, !tbaa !1561
  %.pre58 = load i32, ptr %i.ae, align 4, !tbaa !1554
  br label %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit

bb.k:                                             ; preds = %_ZN2OT4cff132lookup_standard_encoding_for_sidEj.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 244
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !2955
  %i.bu = icmp eq i32 %i.bt, 0
  %i.bv = icmp samesign ult i32 %.0.i33, 229
  %or.cond.i = and i1 %i.bv, %i.bu
  %..i = select i1 %or.cond.i, i32 %i.bm, i32 0
  br label %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit

_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit: ; preds = %bb.i, %_ZNK3CFF8number_t6to_intEv.exit, %bb.j, %bb.k
  %i.bw = phi i32 [ %i.af, %_ZNK3CFF8number_t6to_intEv.exit ], [ %.pre58, %bb.j ], [ %i.af, %bb.k ], [ %i.af, %bb.i ]
  %i.bx = phi ptr [ %i.az, %_ZNK3CFF8number_t6to_intEv.exit ], [ %.pre57, %bb.j ], [ %i.az, %bb.k ], [ %i.az, %bb.i ] ; 3 uses
  %.0.i34 = phi i32 [ 0, %_ZNK3CFF8number_t6to_intEv.exit ], [ %i.br, %bb.j ], [ %..i, %bb.k ], [ 0, %bb.i ] ; 2 uses
  %i.by = add i32 %i.af, -1                       ; 2 uses
  %.not.i36 = icmp ult i32 %i.by, %i.bw
  br i1 %.not.i36, label %bb.m, label %bb.l, !prof !49

bb.l:                                             ; preds = %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit
  store i8 1, ptr %i.ad, align 8, !tbaa !2953
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit38

bb.m:                                             ; preds = %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ca = zext i32 %i.by to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ca
  %.pr55 = load double, ptr %i.cb, align 8, !tbaa !325
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit38

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit38: ; preds = %bb.l, %bb.m
  %i.cc = phi double [ 0.000000e+00, %bb.l ], [ %.pr55, %bb.m ] ; 5 uses
  %i.cd = fcmp oge double %i.cc, f0xC1E0000000000000
  %i.ce = fcmp ole double %i.cc, f0x41DFFFFFFFC00000
  %.not6.i.i39 = and i1 %i.cd, %i.ce
  %i.cf = fptosi double %i.cc to i32
  br i1 %.not6.i.i39, label %_ZNK3CFF8number_t6to_intEv.exit41, label %bb.n, !prof !49

bb.n:                                             ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit38
  %i.cg = fcmp olt double %i.cc, 0.000000e+00
  %i.ch = fcmp ogt double %i.cc, 0.000000e+00
  %i.ci = select i1 %i.ch, i32 2147483647, i32 0
  br i1 %i.cg, label %.critedge, label %_ZNK3CFF8number_t6to_intEv.exit41

_ZNK3CFF8number_t6to_intEv.exit41:                ; preds = %bb.n, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit38
  %.0.i40 = phi i32 [ %i.ci, %bb.n ], [ %i.cf, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit38 ] ; 3 uses
  %i.cj = icmp ult i32 %.0.i40, 256
  br i1 %i.cj, label %_ZN2OT4cff132lookup_standard_encoding_for_sidEj.exit.i43, label %.critedge

_ZN2OT4cff132lookup_standard_encoding_for_sidEj.exit.i43: ; preds = %_ZNK3CFF8number_t6to_intEv.exit41
  %i.ck = zext nneg i32 %.0.i40 to i64
  %i.cl = getelementptr inbounds nuw i8, ptr @_ZL24standard_encoding_to_sid, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !61
  %i.cn = zext i8 %i.cm to i32                    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bx, i64 80
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !2954 ; 2 uses
  %.not.i44 = icmp eq ptr %i.cp, @_hb_NullPool
  br i1 %.not.i44, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN2OT4cff132lookup_standard_encoding_for_sidEj.exit.i43
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bx, i64 296
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !1526
  %i.cs = tail call noundef i32 @_ZNK3CFF7Charset9get_glyphEjj(ptr noundef nonnull align 1 dereferenceable(5) %i.cp, i32 noundef %i.cn, i32 noundef %i.cr)
  br label %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit47

bb.p:                                             ; preds = %_ZN2OT4cff132lookup_standard_encoding_for_sidEj.exit.i43
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bx, i64 244
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !2955
  %i.cv = icmp eq i32 %i.cu, 0
  %i.cw = icmp samesign ult i32 %.0.i40, 229
  %or.cond.i45 = and i1 %i.cw, %i.cv
  %..i46 = select i1 %or.cond.i45, i32 %i.cn, i32 0
  br label %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit47

_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit47: ; preds = %bb.o, %bb.p
  %.0.i42 = phi i32 [ %..i46, %bb.p ], [ %i.cs, %bb.o ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 4480
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !1547, !range !220, !noundef !74
  %i.cz = trunc nuw i8 %i.cy to i1
  %.not = xor i1 %i.cz, true
  %i.da = icmp ne i32 %.0.i34, 0
  %or.cond = and i1 %i.da, %.not
  %i.db = icmp ne i32 %.0.i42, 0
  %or.cond3 = and i1 %i.db, %or.cond
  br i1 %or.cond3, label %bb.q, label %.critedge, !prof !2973

bb.q:                                             ; preds = %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit47
  %i.dc = load ptr, ptr %i.ba, align 8, !tbaa !1561
  %i.dd = load ptr, ptr %1, align 8, !tbaa !1562
  %i.de = load ptr, ptr %i.a, align 8, !tbaa !1558
  %i.df = tail call fastcc noundef zeroext i1 @_ZL9_get_pathPKN2OT4cff113accelerator_tEP9hb_font_tjR17hb_draw_session_tbPN3CFF7point_tEPl(ptr noundef %i.dc, ptr noundef %i.dd, i32 noundef %.0.i34, ptr noundef nonnull align 8 dereferenceable(64) %i.de, i1 noundef zeroext true, ptr noundef null, ptr noundef null)
  br i1 %i.df, label %bb.r, label %.critedge, !prof !49

bb.r:                                             ; preds = %bb.q
  %i.dg = load ptr, ptr %i.ba, align 8, !tbaa !1561
  %i.dh = load ptr, ptr %1, align 8, !tbaa !1562
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !1558
  %i.dj = call fastcc noundef zeroext i1 @_ZL9_get_pathPKN2OT4cff113accelerator_tEP9hb_font_tjR17hb_draw_session_tbPN3CFF7point_tEPl(ptr noundef %i.dg, ptr noundef %i.dh, i32 noundef %.0.i42, ptr noundef nonnull align 8 dereferenceable(64) %i.di, i1 noundef zeroext true, ptr noundef nonnull %2, ptr noundef null)
  br i1 %i.dj, label %bb.s, label %.critedge, !prof !49

.critedge:                                        ; preds = %bb.n, %_ZNK3CFF8number_t6to_intEv.exit41, %bb.q, %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit47, %bb.r
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !308
  %i.dm = add i32 %i.dl, 1
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !263
end_hunk_5
begin_hunk_6_@_ZN3CFF10cs_opset_tINS_8number_tE20cff1_cs_opset_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_t22cff1_path_procs_path_tE10process_opEjRS3_RS4_:bb.a
  store i32 0, ptr %i.hw, align 4, !tbaa !1554
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.au:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI22cff1_path_procs_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_tE10rlinecurveERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 0, ptr %i.hz, align 4, !tbaa !1546
  store i32 0, ptr %i.hy, align 4, !tbaa !1554
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.av:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI22cff1_path_procs_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_tE9vvcurvetoERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 0, ptr %i.ib, align 4, !tbaa !1546
  store i32 0, ptr %i.ia, align 4, !tbaa !1554
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.aw:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI22cff1_path_procs_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_tE9hhcurvetoERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 0, ptr %i.id, align 4, !tbaa !1546
  store i32 0, ptr %i.ic, align 4, !tbaa !1554
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.ax:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI22cff1_path_procs_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_tE9vhcurvetoERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 0, ptr %i.if, align 4, !tbaa !1546
  store i32 0, ptr %i.ie, align 4, !tbaa !1554
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.ay:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI22cff1_path_procs_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_tE9hvcurvetoERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 0, ptr %i.ih, align 4, !tbaa !1546
  store i32 0, ptr %i.ig, align 4, !tbaa !1554
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.az:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI22cff1_path_procs_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_tE5hflexERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 0, ptr %i.ij, align 4, !tbaa !1546
  store i32 0, ptr %i.ii, align 4, !tbaa !1554
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.ba:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI22cff1_path_procs_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_tE4flexERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 0, ptr %i.il, align 4, !tbaa !1546
  store i32 0, ptr %i.ik, align 4, !tbaa !1554
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.bb:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI22cff1_path_procs_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_tE6hflex1ERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 0, ptr %i.in, align 4, !tbaa !1546
  store i32 0, ptr %i.im, align 4, !tbaa !1554
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.bc:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI22cff1_path_procs_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_tE5flex1ERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 0, ptr %i.ip, align 4, !tbaa !1546
  store i32 0, ptr %i.io, align 4, !tbaa !1554
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.bd:                                            ; preds = %bb.a
  tail call void @_ZN3CFF7opset_tINS_8number_tEE10process_opEjRNS_12interp_env_tIS1_EE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(4128) %1)
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit: ; preds = %bb.ac, %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE23determine_hintmask_sizeEv.exit.i, %_ZN3CFF11arg_stack_tINS_8number_tEE10push_fixedEi.exit.i, %bb.g, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %_ZN3CFF10cs_opset_tINS_8number_tE20cff1_cs_opset_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_t22cff1_path_procs_path_tE17process_post_moveEjRS3_RS4_.exit157, %_ZN3CFF10cs_opset_tINS_8number_tE20cff1_cs_opset_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_t22cff1_path_procs_path_tE17process_post_moveEjRS3_RS4_.exit151, %_ZN3CFF10cs_opset_tINS_8number_tE20cff1_cs_opset_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_t22cff1_path_procs_path_tE17process_post_moveEjRS3_RS4_.exit, %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_path_t17cff1_path_param_t22cff1_path_procs_path_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit136, %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_path_t17cff1_path_param_t22cff1_path_procs_path_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit132, %bb.n, %bb.m, %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_path_t17cff1_path_param_t22cff1_path_procs_path_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit, %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE16return_from_subrEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI22cff1_path_procs_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_tE7rmovetoERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  %i.b = load <2 x double>, ptr %i.a, align 8, !tbaa !795
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1554 ; 3 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN3CFF12interp_env_tINS_8number_tEE7pop_argEv.exit.thread, label %_ZN3CFF12interp_env_tINS_8number_tEE7pop_argEv.exit, !prof !48

_ZN3CFF12interp_env_tINS_8number_tEE7pop_argEv.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = add i32 %i.d, -1                         ; 3 uses
  store i32 %i.f, ptr %i.c, align 4, !tbaa !1554
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g ; 2 uses
  %.not.i.i7 = icmp eq i32 %i.f, 0
  br i1 %.not.i.i7, label %_ZN3CFF12interp_env_tINS_8number_tEE7pop_argEv.exit.thread, label %bb.b, !prof !124

bb.b:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE7pop_argEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = add i32 %i.d, -2                         ; 2 uses
  store i32 %i.j, ptr %i.c, align 4, !tbaa !1554
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.k
  %.pre = load double, ptr %i.l, align 8, !tbaa !325
  br label %_ZN3CFF12interp_env_tINS_8number_tEE7pop_argEv.exit9

_ZN3CFF12interp_env_tINS_8number_tEE7pop_argEv.exit.thread: ; preds = %bb.a, %_ZN3CFF12interp_env_tINS_8number_tEE7pop_argEv.exit
  %.0.i.i21 = phi ptr [ %i.h, %_ZN3CFF12interp_env_tINS_8number_tEE7pop_argEv.exit ], [ @_hb_CrapPool, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.m, align 8, !tbaa !2953
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE7pop_argEv.exit9

_ZN3CFF12interp_env_tINS_8number_tEE7pop_argEv.exit9: ; preds = %bb.b, %_ZN3CFF12interp_env_tINS_8number_tEE7pop_argEv.exit.thread
  %.0.i.i20 = phi ptr [ %i.h, %bb.b ], [ %.0.i.i21, %_ZN3CFF12interp_env_tINS_8number_tEE7pop_argEv.exit.thread ]
  %i.n = phi double [ %.pre, %bb.b ], [ 0.000000e+00, %_ZN3CFF12interp_env_tINS_8number_tEE7pop_argEv.exit.thread ]
  %i.o = load double, ptr %.0.i.i20, align 8, !tbaa !325
  %i.p = insertelement <2 x double> poison, double %i.n, i64 0
  %i.q = insertelement <2 x double> %i.p, double %i.o, i64 1
  %i.r = fadd <2 x double> %i.b, %i.q             ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1563 ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.t, null
  br i1 %.not.i.i10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE7pop_argEv.exit9
  %i.u = load <2 x double>, ptr %i.t, align 8, !tbaa !325
  %i.v = fadd <2 x double> %i.r, %i.u
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3CFF12interp_env_tINS_8number_tEE7pop_argEv.exit9
  %i.w = phi <2 x double> [ %i.r, %_ZN3CFF12interp_env_tINS_8number_tEE7pop_argEv.exit9 ], [ %i.v, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1558 ; 8 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !1562
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.ab = load <2 x float>, ptr %i.aa, align 8, !tbaa !94
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !175 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !178 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 4 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !197
  %.not.i.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i.i.i, label %_ZN22cff1_path_procs_path_t6movetoERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit, label %bb.e, !prof !49

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !198 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !199
  %i.al = fcmp une float %i.ai, %i.ak
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.pre.i.i = load float, ptr %.phi.trans.insert.i.i, align 8, !tbaa !200 ; 2 uses
  br i1 %i.al, label %._crit_edge.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.an = load float, ptr %i.am, align 8, !tbaa !820
  %i.ao = fcmp une float %.pre.i.i, %i.an
  br i1 %i.ao, label %._crit_edge.i.i, label %bb.h

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !201
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !204 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !205
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i: ; preds = %bb.g, %._crit_edge.i.i
  %i.av = phi ptr [ %i.au, %bb.g ], [ null, %._crit_edge.i.i ]
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(72) %i.ac, ptr noundef %i.ae, ptr noundef nonnull align 4 dereferenceable(48) %i.af, float noundef %i.ai, float noundef %.pre.i.i, ptr noundef %i.av) #63, !inline_history !2974
  br label %bb.h

bb.h:                                             ; preds = %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i, %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !208
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !204 ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i2.i.i, label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !209
  br label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i.i

_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i.i: ; preds = %bb.i, %bb.h
  %i.bc = phi ptr [ %i.bb, %bb.i ], [ null, %bb.h ]
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(72) %i.ac, ptr noundef %i.ae, ptr noundef nonnull align 4 dereferenceable(48) %i.af, ptr noundef %i.bc) #63, !inline_history !2975
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.af, i8 0, i64 12, i1 false)
  br label %_ZN22cff1_path_procs_path_t6movetoERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit

_ZN22cff1_path_procs_path_t6movetoERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit: ; preds = %bb.d, %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i.i
  %i.bd = fptrunc <2 x double> %i.w to <2 x float>
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.bf = fmul <2 x float> %i.ab, %i.bd
  store <2 x float> %i.bf, ptr %i.be, align 4, !tbaa !94
  store <2 x double> %i.r, ptr %i.a, align 8, !tbaa !795
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI22cff1_path_procs_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_tE7hmovetoERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  %.sroa.0.0.copyload = load double, ptr %i.a, align 8, !tbaa !795
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 2 uses
  %.sroa.7.0.copyload = load double, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !795 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1554 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = add i32 %i.c, -1                         ; 2 uses
  store i32 %i.e, ptr %i.b, align 4, !tbaa !1554
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %.pre = load double, ptr %i.g, align 8, !tbaa !325
  br label %_ZN3CFF12interp_env_tINS_8number_tEE7pop_argEv.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.h, align 8, !tbaa !2953
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE7pop_argEv.exit

_ZN3CFF12interp_env_tINS_8number_tEE7pop_argEv.exit: ; preds = %bb.b, %bb.c
  %i.i = phi double [ %.pre, %bb.b ], [ 0.000000e+00, %bb.c ]
  %i.j = fadd double %.sroa.0.0.copyload, %i.i    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1563 ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.l, null
  %i.m = insertelement <2 x double> poison, double %i.j, i64 0
  %i.n = insertelement <2 x double> %i.m, double %.sroa.7.0.copyload, i64 1 ; 2 uses
  br i1 %.not.i.i4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE7pop_argEv.exit
  %i.o = load <2 x double>, ptr %i.l, align 8, !tbaa !325
  %i.p = fadd <2 x double> %i.n, %i.o
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN3CFF12interp_env_tINS_8number_tEE7pop_argEv.exit
  %i.q = phi <2 x double> [ %i.n, %_ZN3CFF12interp_env_tINS_8number_tEE7pop_argEv.exit ], [ %i.p, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1558 ; 8 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !1562
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.v = load <2 x float>, ptr %i.u, align 8, !tbaa !94
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !175  ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !178  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 4 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !197
  %.not.i.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i.i, label %_ZN22cff1_path_procs_path_t6movetoERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit, label %bb.f, !prof !49

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !198 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !199
  %i.af = fcmp une float %i.ac, %i.ae
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.pre.i.i = load float, ptr %.phi.trans.insert.i.i, align 8, !tbaa !200 ; 2 uses
  br i1 %i.af, label %._crit_edge.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !820
  %i.ai = fcmp une float %.pre.i.i, %i.ah
  br i1 %i.ai, label %._crit_edge.i.i, label %bb.i

._crit_edge.i.i:                                  ; preds = %bb.g, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !201
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !204 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !205
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i: ; preds = %bb.h, %._crit_edge.i.i
  %i.ap = phi ptr [ %i.ao, %bb.h ], [ null, %._crit_edge.i.i ]
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef %i.y, ptr noundef nonnull align 4 dereferenceable(48) %i.z, float noundef %i.ac, float noundef %.pre.i.i, ptr noundef %i.ap) #63, !inline_history !2974
  br label %bb.i

bb.i:                                             ; preds = %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i, %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !208
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !204 ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i2.i.i, label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !209
  br label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i.i

_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i.i: ; preds = %bb.j, %bb.i
  %i.aw = phi ptr [ %i.av, %bb.j ], [ null, %bb.i ]
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef %i.y, ptr noundef nonnull align 4 dereferenceable(48) %i.z, ptr noundef %i.aw) #63, !inline_history !2975
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.z, i8 0, i64 12, i1 false)
  br label %_ZN22cff1_path_procs_path_t6movetoERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit

_ZN22cff1_path_procs_path_t6movetoERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit: ; preds = %bb.e, %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i.i
  %i.ax = fptrunc <2 x double> %i.q to <2 x float>
  %i.ay = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  %i.az = fmul <2 x float> %i.v, %i.ax
  store <2 x float> %i.az, ptr %i.ay, align 4, !tbaa !94
  store double %i.j, ptr %i.a, align 8, !tbaa !795
  store double %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !795
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI22cff1_path_procs_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_tE7vmovetoERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  %.sroa.0.0.copyload = load double, ptr %i.a, align 8, !tbaa !795 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 2 uses
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !795
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1554 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = add i32 %i.c, -1                         ; 2 uses
  store i32 %i.e, ptr %i.b, align 4, !tbaa !1554
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %.pre = load double, ptr %i.g, align 8, !tbaa !325
  br label %_ZN3CFF12interp_env_tINS_8number_tEE7pop_argEv.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.h, align 8, !tbaa !2953
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE7pop_argEv.exit

_ZN3CFF12interp_env_tINS_8number_tEE7pop_argEv.exit: ; preds = %bb.b, %bb.c
  %i.i = phi double [ %.pre, %bb.b ], [ 0.000000e+00, %bb.c ]
  %i.j = fadd double %.sroa.5.0.copyload, %i.i    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1563 ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.l, null
  %i.m = insertelement <2 x double> poison, double %.sroa.0.0.copyload, i64 0
  %i.n = insertelement <2 x double> %i.m, double %i.j, i64 1 ; 2 uses
  br i1 %.not.i.i4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE7pop_argEv.exit
  %i.o = load <2 x double>, ptr %i.l, align 8, !tbaa !325
  %i.p = fadd <2 x double> %i.n, %i.o
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN3CFF12interp_env_tINS_8number_tEE7pop_argEv.exit
  %i.q = phi <2 x double> [ %i.n, %_ZN3CFF12interp_env_tINS_8number_tEE7pop_argEv.exit ], [ %i.p, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1558 ; 8 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !1562
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.v = load <2 x float>, ptr %i.u, align 8, !tbaa !94
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !175  ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !178  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 4 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !197
  %.not.i.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i.i, label %_ZN22cff1_path_procs_path_t6movetoERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit, label %bb.f, !prof !49

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !198 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !199
  %i.af = fcmp une float %i.ac, %i.ae
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.pre.i.i = load float, ptr %.phi.trans.insert.i.i, align 8, !tbaa !200 ; 2 uses
  br i1 %i.af, label %._crit_edge.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !820
  %i.ai = fcmp une float %.pre.i.i, %i.ah
  br i1 %i.ai, label %._crit_edge.i.i, label %bb.i

._crit_edge.i.i:                                  ; preds = %bb.g, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !201
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !204 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !205
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i: ; preds = %bb.h, %._crit_edge.i.i
  %i.ap = phi ptr [ %i.ao, %bb.h ], [ null, %._crit_edge.i.i ]
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef %i.y, ptr noundef nonnull align 4 dereferenceable(48) %i.z, float noundef %i.ac, float noundef %.pre.i.i, ptr noundef %i.ap) #63, !inline_history !2974
  br label %bb.i

bb.i:                                             ; preds = %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i, %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !208
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !204 ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i2.i.i, label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !209
  br label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i.i

_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i.i: ; preds = %bb.j, %bb.i
  %i.aw = phi ptr [ %i.av, %bb.j ], [ null, %bb.i ]
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef %i.y, ptr noundef nonnull align 4 dereferenceable(48) %i.z, ptr noundef %i.aw) #63, !inline_history !2975
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.z, i8 0, i64 12, i1 false)
  br label %_ZN22cff1_path_procs_path_t6movetoERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit

_ZN22cff1_path_procs_path_t6movetoERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit: ; preds = %bb.e, %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i.i
  %i.ax = fptrunc <2 x double> %i.q to <2 x float>
  %i.ay = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  %i.az = fmul <2 x float> %i.v, %i.ax
  store <2 x float> %i.az, ptr %i.ay, align 4, !tbaa !94
  store double %.sroa.0.0.copyload, ptr %i.a, align 8, !tbaa !795
  store double %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !795
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI22cff1_path_procs_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_tE7rlinetoERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1554 ; 2 uses
  %.not17 = icmp ult i32 %i.c, 2
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load <2 x double>, ptr %i.d, align 8, !tbaa !795
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit
  %i.i = phi i32 [ %i.c, %.lr.ph ], [ %i.av, %_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit ] ; 2 uses
  %i.j = phi i32 [ 2, %.lr.ph ], [ %i.au, %_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit ] ; 2 uses
  %.018 = phi i32 [ 0, %.lr.ph ], [ %i.j, %_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit ] ; 3 uses
  %i.k = phi <2 x double> [ %i.h, %.lr.ph ], [ %i.u, %_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit ]
  %.not.i.i = icmp ult i32 %.018, %i.i
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !49

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 8, !tbaa !2953
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit

bb.d:                                             ; preds = %bb.b
  %i.l = zext i32 %.018 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.l
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.c ], [ %i.m, %bb.d ]
  %i.n = or disjoint i32 %.018, 1                 ; 2 uses
  %.not.i.i10 = icmp ult i32 %i.n, %i.i
  br i1 %.not.i.i10, label %bb.f, label %bb.e, !prof !49

bb.e:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit
  store i8 1, ptr %i.a, align 8, !tbaa !2953
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit12

bb.f:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.o
  %.pre = load double, ptr %i.p, align 8, !tbaa !325
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit12

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit12: ; preds = %bb.e, %bb.f
  %i.q = phi double [ 0.000000e+00, %bb.e ], [ %.pre, %bb.f ]
  %i.r = load double, ptr %.0.i.i, align 8, !tbaa !325
  %i.s = insertelement <2 x double> poison, double %i.r, i64 0
  %i.t = insertelement <2 x double> %i.s, double %i.q, i64 1
  %i.u = fadd <2 x double> %i.k, %i.t             ; 4 uses
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !1563 ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.v, null
  br i1 %.not.i.i13, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit12
  %i.w = load <2 x double>, ptr %i.v, align 8, !tbaa !325
  %i.x = fadd <2 x double> %i.u, %i.w
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit12
  %i.y = phi <2 x double> [ %i.u, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit12 ], [ %i.x, %bb.g ]
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !1558 ; 4 uses
  %i.aa = load ptr, ptr %1, align 8, !tbaa !1562
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ac = load <2 x float>, ptr %i.ab, align 8, !tbaa !94
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !175 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !178 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !197
  %.not.i.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %_ZN17hb_draw_session_t7line_toEff.exit.i.i, !prof !48

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.ad, ptr noundef %i.af, ptr noundef nonnull align 4 dereferenceable(48) %i.ag)
  br label %_ZN17hb_draw_session_t7line_toEff.exit.i.i

_ZN17hb_draw_session_t7line_toEff.exit.i.i:       ; preds = %bb.i, %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !201
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !204 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i, label %_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN17hb_draw_session_t7line_toEff.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !205
  br label %_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit

_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit: ; preds = %_ZN17hb_draw_session_t7line_toEff.exit.i.i, %bb.j
  %i.ao = phi ptr [ %i.an, %bb.j ], [ null, %_ZN17hb_draw_session_t7line_toEff.exit.i.i ]
  %i.ap = fptrunc <2 x double> %i.y to <2 x float>
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 28
  %i.ar = fmul <2 x float> %i.ac, %i.ap           ; 3 uses
  %i.as = extractelement <2 x float> %i.ar, i64 0
  %i.at = extractelement <2 x float> %i.ar, i64 1
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(72) %i.ad, ptr noundef %i.af, ptr noundef nonnull align 4 dereferenceable(48) %i.ag, float noundef %i.as, float noundef %i.at, ptr noundef %i.ao) #63, !inline_history !2976
  store <2 x float> %i.ar, ptr %i.aq, align 4, !tbaa !94
  store <2 x double> %i.u, ptr %i.d, align 8, !tbaa !795
  %i.au = add i32 %i.j, 2                         ; 2 uses
  %i.av = load i32, ptr %i.b, align 4, !tbaa !1554 ; 2 uses
  %.not = icmp ugt i32 %i.au, %i.av
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2977
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI22cff1_path_procs_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_tE7hlinetoERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1554 ; 3 uses
  %.not60 = icmp ult i32 %i.c, 2
  br i1 %.not60, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 3 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.pre = load double, ptr %i.d, align 8, !tbaa !795
  %.sroa.15.0.copyload.pre = load double, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !795
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit32
  %i.h = phi i32 [ %i.c, %.lr.ph ], [ %i.bv, %_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit32 ]
  %.sroa.15.0.copyload = phi double [ %.sroa.15.0.copyload.pre, %.lr.ph ], [ %i.at, %_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit32 ] ; 3 uses
  %.sroa.0.0.copyload = phi double [ %.sroa.0.0.copyload.pre, %.lr.ph ], [ %i.m, %_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit32 ]
  %i.i = phi i32 [ 2, %.lr.ph ], [ %i.bu, %_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit32 ] ; 3 uses
  %.061 = phi i32 [ 0, %.lr.ph ], [ %i.i, %_ZN22cff1_path_procs_path_t4lineERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_tRKNS0_7point_tE.exit32 ] ; 3 uses
  %.not.i.i = icmp ult i32 %.061, %i.h
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !49

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 8, !tbaa !2953
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit

bb.d:                                             ; preds = %bb.b
  %i.j = zext i32 %.061 to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.j
  %.pre = load double, ptr %i.k, align 8, !tbaa !325
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit: ; preds = %bb.c, %bb.d
  %i.l = phi double [ 0.000000e+00, %bb.c ], [ %.pre, %bb.d ]
  %i.m = fadd double %.sroa.0.0.copyload, %i.l    ; 4 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !1563 ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.n, null
  %i.o = insertelement <2 x double> poison, double %i.m, i64 0 ; 2 uses
  %i.p = insertelement <2 x double> %i.o, double %.sroa.15.0.copyload, i64 1 ; 2 uses
  br i1 %.not.i.i19, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit
  %i.q = load <2 x double>, ptr %i.n, align 8, !tbaa !325
  %i.r = fadd <2 x double> %i.p, %i.q
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit
  %i.s = phi <2 x double> [ %i.p, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit ], [ %i.r, %bb.e ]
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !1558 ; 4 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !1562
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.w = load <2 x float>, ptr %i.v, align 8, !tbaa !94
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !175  ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !178  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !197
  %.not.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %_ZN17hb_draw_session_t7line_toEff.exit.i.i, !prof !48

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.x, ptr noundef %i.z, ptr noundef nonnull align 4 dereferenceable(48) %i.aa)
  br label %_ZN17hb_draw_session_t7line_toEff.exit.i.i

end_hunk_6
begin_hunk_7_@_ZN2OT33hb_ot_layout_lookup_accelerator_t6createINS_6Layout9GSUB_impl11SubstLookupEEEPS0_RKT_:bb.a
  %i.bu = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %indvars.iv.epil.init ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !4141
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !4142
  br label %._crit_edge42

._crit_edge42:                                    ; preds = %._crit_edge42.loopexit.unr-lcssa, %bb.f, %.lr.ph41.epil.preheader, %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #63
  br label %bb.j

.lr.ph41:                                         ; preds = %bb.i, %.lr.ph41.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph41.preheader.new ], [ %indvars.iv.next.1, %bb.i ] ; 4 uses
  %niter56 = phi i64 [ 0, %.lr.ph41.preheader.new ], [ %niter56.next.1, %bb.i ]
  %.not33 = icmp eq i64 %indvars.iv, %i.aw
  br i1 %.not33, label %.lr.ph41.1, label %bb.g

bb.g:                                             ; preds = %.lr.ph41
  %i.by = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !4141
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !4142
  br label %.lr.ph41.1

.lr.ph41.1:                                       ; preds = %.lr.ph41, %bb.g
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %.not33.1 = icmp eq i64 %indvars.iv.next, %i.aw
  br i1 %.not33.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph41.1
  %i.cc = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %indvars.iv.next ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !4141
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !4142
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph41.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter56.next.1 = add i64 %niter56, 2           ; 2 uses
  %niter56.ncmp.1 = icmp eq i64 %niter56.next.1, %unroll_iter55
  br i1 %niter56.ncmp.1, label %._crit_edge42.loopexit.unr-lcssa, label %.lr.ph41, !llvm.loop !4143

bb.j:                                             ; preds = %bb.a, %._crit_edge42
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT6Layout9GSUB_impl11SubstLookup16serialize_singleI17hb_sorted_array_tINS_11HBGlyphID16EE10hb_array_tIS5_ETnPN12hb_enable_ifIXaaaasr15hb_is_source_ofIT_KjEE5valuesrSA_18is_sorted_iteratorsr15hb_is_source_ofIT0_SB_EE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tjSA_SC_(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1, i32 noundef %2, ptr %3, i64 %4, ptr noundef byval(%struct.hb_array_t.1586) align 8 %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %struct.hb_zip_iter_t.1591, align 8 ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZN2OT6Lookup9serializeEP22hb_serialize_context_tjjj(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1, i32 noundef 1, i32 noundef %2, i32 noundef 1)
  br i1 %i.a, label %bb.b, label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout9GSUB_impl19SubstLookupSubTableENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN2OT6Layout9GSUB_impl19SubstLookupSubTableEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %1)
  %.val9 = load ptr, ptr %5, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val10 = load i64, ptr %i.c, align 8
  store ptr %3, ptr %6, align 8, !alias.scope !4144
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %4, ptr %.sroa.46.0..sroa_idx.i, align 8, !alias.scope !4144
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %.val9, ptr %i.d, align 8, !alias.scope !4144
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %.val10, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4144
  %i.e = tail call noundef zeroext i1 @_ZN2OT6Layout9GSUB_impl11SingleSubst9serializeI13hb_zip_iter_tI17hb_sorted_array_tINS_11HBGlyphID16EE10hb_array_tIS6_EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_K9hb_pair_tIjjEEE5valuesrSC_18is_sorted_iteratorEvE4typeELPv0EEEbP22hb_serialize_context_tSC_(ptr noundef nonnull align 1 dereferenceable(8) %i.b, ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.hb_zip_iter_t.1591) align 8 %6)
  br i1 %i.e, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i16, ptr %i.f, align 1, !tbaa !62
  %.not.i.not = icmp eq i16 %i.g, 0
  br i1 %.not.i.not, label %bb.d, label %bb.e, !prof !48

bb.d:                                             ; preds = %bb.c
  store i16 0, ptr @_hb_CrapPool, align 16
  br label %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl19SubstLookupSubTableENS_7NumTypeILb1EtLj2EEEvLb1EEES6_EixEi.exit

bb.e:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 6
  br label %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl19SubstLookupSubTableENS_7NumTypeILb1EtLj2EEEvLb1EEES6_EixEi.exit

_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl19SubstLookupSubTableENS_7NumTypeILb1EtLj2EEEvLb1EEES6_EixEi.exit: ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ @_hb_CrapPool, %bb.d ], [ %i.h, %bb.e ]
  %i.i = tail call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext true) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !1012
  %i.l = icmp ne i32 %i.k, 0
  %i.m = icmp eq i32 %i.i, 0
  %or.cond.not.i = or i1 %i.m, %i.l
  br i1 %or.cond.not.i, label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout9GSUB_impl19SubstLookupSubTableENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit, label %bb.f, !prof !160

bb.f:                                             ; preds = %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl19SubstLookupSubTableENS_7NumTypeILb1EtLj2EEEvLb1EEES6_EixEi.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1054 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 20 ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !2803 ; 2 uses
  %i.r = add i32 %i.q, 1                          ; 5 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.k, label %bb.g, !prof !48

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.u = tail call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i32 noundef %i.r, i1 noundef zeroext false)
  br i1 %i.u, label %bb.h, label %bb.k, !prof !383

bb.h:                                             ; preds = %bb.g
  %i.v = load i32, ptr %i.p, align 4, !tbaa !2803 ; 3 uses
  %i.w = icmp ugt i32 %i.r, %i.v
  br i1 %i.w, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.x = sub nuw nsw i32 %i.r, %i.v
  %i.y = mul i32 %i.x, 12                         ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.j, !prof !48

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !2804
  %i.ab = zext nneg i32 %i.v to i64
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = zext i32 %i.y to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ac, i8 0, i64 %i.ad, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.g, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, i8 0, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h
  store i32 %i.r, ptr %i.p, align 4, !tbaa !2803
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !2804
  %i.ag = zext i32 %i.q to i64
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %i.af, i64 %i.ag
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i: ; preds = %bb.l, %bb.k
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.k ], [ %i.ah, %bb.l ] ; 5 uses
  %i.ai = load ptr, ptr %i.n, align 8, !tbaa !1054
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !2802
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.am = load i32, ptr %i.j, align 4, !tbaa !1012
  %i.an = or i32 %i.am, 1
  store i32 %i.an, ptr %i.j, align 4, !tbaa !1012
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.ao = load i32, ptr %.0.i.i, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store i32 %i.i, ptr %i.ap, align 4, !tbaa !2832
  %i.aq = and i32 %i.ao, -64
  %i.ar = or disjoint i32 %i.aq, 2
  store i32 %i.ar, ptr %.0.i.i, align 4
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !1054
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1055
  %i.au = ptrtoint ptr %.0.i to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !2834
  store i32 2, ptr %.0.i.i, align 4
  br label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout9GSUB_impl19SubstLookupSubTableENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit

bb.o:                                             ; preds = %bb.b
  tail call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  br label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout9GSUB_impl19SubstLookupSubTableENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit

_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout9GSUB_impl19SubstLookupSubTableENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit: ; preds = %bb.n, %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl19SubstLookupSubTableENS_7NumTypeILb1EtLj2EEEvLb1EEES6_EixEi.exit, %bb.a, %bb.o
  %.0 = phi i1 [ false, %bb.o ], [ false, %bb.a ], [ true, %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl19SubstLookupSubTableENS_7NumTypeILb1EtLj2EEEvLb1EEES6_EixEi.exit ], [ true, %bb.n ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN2OT6Layout9GSUB_impl11SubstLookupEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1012
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2793 ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !48

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1025
  store ptr %i.f, ptr %i.d, align 8, !tbaa !2793
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !2819
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !49

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.l = tail call noalias noundef dereferenceable_or_null(1792) ptr @malloc(i64 noundef 1792) #65 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !2796
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !48

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !2796
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !2793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1025
  store ptr %i.p, ptr %i.d, align 8, !tbaa !2793
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !1012
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !1012
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
  %i.r = phi ptr [ %i.e, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9 ], [ %i.o, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !574
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !574
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1054
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !2805
  store ptr %i.r, ptr %i.u, align 8, !tbaa !1054
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !1013
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT6Lookup9serializeEP22hb_serialize_context_tjjj(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 9 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1012
  %.not11.i.i = icmp eq i32 %i.b, 0
  br i1 %.not11.i.i, label %bb.b, label %select.unfold, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1013 ; 4 uses
  %i.f = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  %i.i = icmp ugt i64 %i.h, 2147483647
  br i1 %i.i, label %.critedge.i.i.i, label %bb.c, !prof !48

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1014
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.g
  %i.n = icmp slt i64 %i.m, %i.h
  br i1 %i.n, label %.critedge.i.i.i, label %bb.d, !prof !48

.critedge.i.i.i:                                  ; preds = %bb.c, %bb.b
  store i32 4, ptr %i.a, align 4, !tbaa !1012
  br label %select.unfold

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i.i.not.i, label %_ZL9hb_memsetPvij.exit.i.i.i, label %bb.e, !prof !160

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.e, i8 0, i64 %i.h, i1 false)
  %.pre.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !1013
  br label %_ZL9hb_memsetPvij.exit.i.i.i

_ZL9hb_memsetPvij.exit.i.i.i:                     ; preds = %bb.e, %bb.d
  %i.o = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.e, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.h
  store ptr %i.p, ptr %i.d, align 8, !tbaa !1013
  %i.q = icmp eq ptr %i.o, null
  br i1 %i.q, label %select.unfold, label %_ZN22hb_serialize_context_t10extend_minIN2OT6LookupEEEPT_S4_.exit, !prof !48

_ZN22hb_serialize_context_t10extend_minIN2OT6LookupEEEPT_S4_.exit: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i
  %i.r = trunc i32 %2 to i16
  %i.s = tail call i16 @llvm.bswap.i16(i16 %i.r)
  store i16 %i.s, ptr %0, align 1, !tbaa !61
  %i.t = trunc i32 %3 to i16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.v = tail call i16 @llvm.bswap.i16(i16 %i.t)
  store i16 %i.v, ptr %i.u, align 1, !tbaa !61
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.x = load i32, ptr %i.a, align 4, !tbaa !1012
  %.not11.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not11.i.i.i, label %bb.f, label %select.unfold, !prof !49

bb.f:                                             ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT6LookupEEEPT_S4_.exit
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !1013 ; 4 uses
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = sub i64 %i.f, %i.z                      ; 4 uses
  %i.ab = icmp ugt i64 %i.aa, 2147483647
  br i1 %i.ab, label %.critedge.i.i.i.i, label %bb.g, !prof !48

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !1014
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.z
  %i.af = icmp slt i64 %i.ae, %i.aa
  br i1 %i.af, label %.critedge.i.i.i.i, label %bb.h, !prof !48

.critedge.i.i.i.i:                                ; preds = %bb.g, %bb.f
  store i32 4, ptr %i.a, align 4, !tbaa !1012
  br label %select.unfold

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i.not.i.i = icmp eq ptr %i.c, %i.y
  br i1 %.not.i.i.i.not.i.i, label %_ZL9hb_memsetPvij.exit.i.i.i.i, label %bb.i, !prof !160

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.y, i8 0, i64 %i.aa, i1 false)
  %.pre.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !1013
  br label %_ZL9hb_memsetPvij.exit.i.i.i.i

_ZL9hb_memsetPvij.exit.i.i.i.i:                   ; preds = %bb.i, %bb.h
  %i.ag = phi ptr [ %.pre.i.i.i.i, %bb.i ], [ %i.y, %bb.h ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aa
  store ptr %i.ah, ptr %i.d, align 8, !tbaa !1013
  %i.ai = icmp eq ptr %i.ag, null
  br i1 %i.ai, label %select.unfold, label %_ZN22hb_serialize_context_t10extend_minIN2OT7ArrayOfINS1_6OffsetINS1_7NumTypeILb1EtLj2EEELb1EEES5_EEEEPT_S9_.exit.i, !prof !48

_ZN22hb_serialize_context_t10extend_minIN2OT7ArrayOfINS1_6OffsetINS1_7NumTypeILb1EtLj2EEELb1EEES5_EEEEPT_S9_.exit.i: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i.i
  %i.aj = trunc i32 %4 to i16
  %i.ak = tail call i16 @llvm.bswap.i16(i16 %i.aj)
  store i16 %i.ak, ptr %i.w, align 1, !tbaa !61
  %.not.i.i.i = icmp ult i32 %4, 65536
  %.pr.i = load i32, ptr %i.a, align 4, !tbaa !1012 ; 2 uses
  br i1 %.not.i.i.i, label %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.i, label %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.thread.i

_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.thread.i: ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT7ArrayOfINS1_6OffsetINS1_7NumTypeILb1EtLj2EEELb1EEES5_EEEEPT_S9_.exit.i
  %i.al = or i32 %.pr.i, 16
  store i32 %i.al, ptr %i.a, align 4, !tbaa !1012
  br label %select.unfold

_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.i: ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT7ArrayOfINS1_6OffsetINS1_7NumTypeILb1EtLj2EEELb1EEES5_EEEEPT_S9_.exit.i
  %.not11.i.i11 = icmp eq i32 %.pr.i, 0
  br i1 %.not11.i.i11, label %bb.j, label %select.unfold, !prof !669

bb.j:                                             ; preds = %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.i
  %i.am = shl nuw nsw i32 %4, 1
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2 ; 2 uses
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !1013 ; 4 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64               ; 2 uses
  %i.at = sub i64 %i.ar, %i.as                    ; 4 uses
  %i.au = icmp ugt i64 %i.at, 2147483647
  br i1 %i.au, label %.critedge.i.i.i14, label %bb.k, !prof !48

bb.k:                                             ; preds = %bb.j
  %i.av = load ptr, ptr %i.j, align 8, !tbaa !1014
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.as
  %i.ay = icmp slt i64 %i.ax, %i.at
  br i1 %i.ay, label %.critedge.i.i.i14, label %bb.l, !prof !48

.critedge.i.i.i14:                                ; preds = %bb.k, %bb.j
  store i32 4, ptr %i.a, align 4, !tbaa !1012
  br label %select.unfold

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i.i.not = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i.i.i.not, label %_ZL9hb_memsetPvij.exit.i.i.i12, label %bb.m, !prof !160

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aq, i8 0, i64 %i.at, i1 false)
  %.pre.i.i.i13 = load ptr, ptr %i.d, align 8, !tbaa !1013
  br label %_ZL9hb_memsetPvij.exit.i.i.i12

_ZL9hb_memsetPvij.exit.i.i.i12:                   ; preds = %bb.m, %bb.l
  %i.az = phi ptr [ %.pre.i.i.i13, %bb.m ], [ %i.aq, %bb.l ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.at ; 5 uses
  store ptr %i.ba, ptr %i.d, align 8, !tbaa !1013
  %i.bb = icmp eq ptr %i.az, null
  br i1 %i.bb, label %select.unfold, label %_ZN2OT7ArrayOfINS_6OffsetINS_7NumTypeILb1EtLj2EEELb1EEES3_E9serializeEP22hb_serialize_context_tjb.exit, !prof !48

_ZN2OT7ArrayOfINS_6OffsetINS_7NumTypeILb1EtLj2EEELb1EEES3_E9serializeEP22hb_serialize_context_tjb.exit: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i12
  %i.bc = load i16, ptr %i.u, align 1, !tbaa !62
  %i.bd = and i16 %i.bc, 4096
  %.not9 = icmp eq i16 %i.bd, 0
  br i1 %.not9, label %select.unfold, label %bb.n

bb.n:                                             ; preds = %_ZN2OT7ArrayOfINS_6OffsetINS_7NumTypeILb1EtLj2EEELb1EEES3_E9serializeEP22hb_serialize_context_tjb.exit
  %i.be = load i32, ptr %i.a, align 4, !tbaa !1012
  %.not11.i.i15 = icmp eq i32 %i.be, 0
  br i1 %.not11.i.i15, label %bb.o, label %select.unfold, !prof !49

bb.o:                                             ; preds = %bb.n
  %i.bf = load i16, ptr %i.w, align 1, !tbaa !62
  %i.bg = tail call noundef i16 @llvm.bswap.i16(i16 %i.bf)
  %i.bh = zext i16 %i.bg to i64
  %i.bi = shl nuw nsw i64 %i.bh, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi ; 2 uses
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 4 uses
  %i.bo = icmp ugt i64 %i.bn, 2147483647
  br i1 %i.bo, label %.critedge.i.i.i19, label %bb.p, !prof !48

bb.p:                                             ; preds = %bb.o
  %i.bp = load ptr, ptr %i.j, align 8, !tbaa !1014
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.bm
  %i.bs = icmp slt i64 %i.br, %i.bn
  br i1 %i.bs, label %.critedge.i.i.i19, label %bb.q, !prof !48

.critedge.i.i.i19:                                ; preds = %bb.p, %bb.o
  store i32 4, ptr %i.a, align 4, !tbaa !1012
  br label %select.unfold

bb.q:                                             ; preds = %bb.p
  %.not.i.i.i.not.i16 = icmp eq ptr %i.bk, %i.ba
  br i1 %.not.i.i.i.not.i16, label %_ZL9hb_memsetPvij.exit.i.i.i18, label %bb.r, !prof !160

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ba, i8 0, i64 %i.bn, i1 false)
  %.pre.i.i.i17 = load ptr, ptr %i.d, align 8, !tbaa !1013
  br label %_ZL9hb_memsetPvij.exit.i.i.i18

_ZL9hb_memsetPvij.exit.i.i.i18:                   ; preds = %bb.r, %bb.q
  %i.bt = phi ptr [ %.pre.i.i.i17, %bb.r ], [ %i.ba, %bb.q ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bn
  store ptr %i.bu, ptr %i.d, align 8, !tbaa !1013
  %i.bv = icmp eq ptr %i.bt, null
  br i1 %i.bv, label %select.unfold, label %_ZN22hb_serialize_context_t6extendIN2OT6LookupEJEEEPT_S4_DpOT0_.exit, !prof !48

_ZN22hb_serialize_context_t6extendIN2OT6LookupEJEEEPT_S4_DpOT0_.exit: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i18
  %i.bw = load i16, ptr %i.w, align 1, !tbaa !62
  %i.bx = tail call noundef i16 @llvm.bswap.i16(i16 %i.bw)
  %i.by = zext i16 %i.bx to i64
  %i.bz = shl nuw nsw i64 %i.by, 1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.cc = lshr i32 %3, 16
  %i.cd = trunc nuw i32 %i.cc to i16
  %i.ce = tail call i16 @llvm.bswap.i16(i16 %i.cd)
  store i16 %i.ce, ptr %i.cb, align 1, !tbaa !61
  br label %select.unfold

select.unfold:                                    ; preds = %_ZL9hb_memsetPvij.exit.i.i.i18, %_ZL9hb_memsetPvij.exit.i.i.i12, %_ZL9hb_memsetPvij.exit.i.i.i, %_ZN2OT7ArrayOfINS_6OffsetINS_7NumTypeILb1EtLj2EEELb1EEES3_E9serializeEP22hb_serialize_context_tjb.exit, %_ZN22hb_serialize_context_t6extendIN2OT6LookupEJEEEPT_S4_DpOT0_.exit, %.critedge.i.i.i19, %bb.n, %_ZL9hb_memsetPvij.exit.i.i.i.i, %.critedge.i.i.i14, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.thread.i, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.i, %.critedge.i.i.i.i, %_ZN22hb_serialize_context_t10extend_minIN2OT6LookupEEEPT_S4_.exit, %.critedge.i.i.i, %bb.a
  %.0 = phi i1 [ false, %_ZL9hb_memsetPvij.exit.i.i.i12 ], [ true, %_ZN2OT7ArrayOfINS_6OffsetINS_7NumTypeILb1EtLj2EEELb1EEES3_E9serializeEP22hb_serialize_context_tjb.exit ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i.i ], [ false, %bb.a ], [ false, %.critedge.i.i.i ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i ], [ false, %_ZN22hb_serialize_context_t10extend_minIN2OT6LookupEEEPT_S4_.exit ], [ false, %.critedge.i.i.i.i ], [ false, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.i ], [ false, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.thread.i ], [ false, %.critedge.i.i.i14 ], [ false, %bb.n ], [ false, %.critedge.i.i.i19 ], [ true, %_ZN22hb_serialize_context_t6extendIN2OT6LookupEJEEEPT_S4_DpOT0_.exit ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i18 ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN2OT6Layout9GSUB_impl19SubstLookupSubTableEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1012
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2793 ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !48

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1025
  store ptr %i.f, ptr %i.d, align 8, !tbaa !2793
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !2819
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !49

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.l = tail call noalias noundef dereferenceable_or_null(1792) ptr @malloc(i64 noundef 1792) #65 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !2796
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !48

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !2796
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !2793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1025
  store ptr %i.p, ptr %i.d, align 8, !tbaa !2793
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !1012
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !1012
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
  %i.r = phi ptr [ %i.e, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9 ], [ %i.o, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !574
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !574
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1054
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !2805
  store ptr %i.r, ptr %i.u, align 8, !tbaa !1054
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !1013
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT6Layout9GSUB_impl11SingleSubst9serializeI13hb_zip_iter_tI17hb_sorted_array_tINS_11HBGlyphID16EE10hb_array_tIS6_EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_K9hb_pair_tIjjEEE5valuesrSC_18is_sorted_iteratorEvE4typeELPv0EEEbP22hb_serialize_context_tSC_(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1, ptr noundef byval(%struct.hb_zip_iter_t.1591) align 8 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %struct.hb_map_iter_t.1595, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1012
  %.not11.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not11.i.i.i, label %bb.b, label %select.unfold, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1013 ; 4 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  %i.i = icmp ugt i64 %i.h, 2147483647
  br i1 %i.i, label %.critedge.i.i.i.i, label %bb.c, !prof !48

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1014
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.g
  %i.n = icmp slt i64 %i.m, %i.h
  br i1 %i.n, label %.critedge.i.i.i.i, label %bb.d, !prof !48

.critedge.i.i.i.i:                                ; preds = %bb.c, %bb.b
  store i32 4, ptr %i.a, align 4, !tbaa !1012
  br label %select.unfold

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i.i.not.i.i, label %_ZL9hb_memsetPvij.exit.i.i.i.i, label %bb.e, !prof !160

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.e, i8 0, i64 %i.h, i1 false)
  %.pre.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !1013
  br label %_ZL9hb_memsetPvij.exit.i.i.i.i

_ZL9hb_memsetPvij.exit.i.i.i.i:                   ; preds = %bb.e, %bb.d
  %i.o = phi ptr [ %.pre.i.i.i.i, %bb.e ], [ %i.e, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.h
  store ptr %i.p, ptr %i.d, align 8, !tbaa !1013
  %i.q = icmp eq ptr %i.o, null
  br i1 %i.q, label %select.unfold, label %_ZN22hb_serialize_context_t10extend_minIN2OT7NumTypeILb1EtLj2EEEEEPT_RS4_.exit, !prof !48

_ZN22hb_serialize_context_t10extend_minIN2OT7NumTypeILb1EtLj2EEEEEPT_RS4_.exit: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !4147 ; 2 uses
  %i.t = icmp ne i32 %i.s, 0
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.v = load i32, ptr %i.u, align 8              ; 2 uses
  %i.w = icmp ne i32 %i.v, 0
  %i.x = select i1 %i.t, i1 %i.w, i1 false
  br i1 %i.x, label %_ZNO9hb_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EE9hb_pair_tIRS3_S9_EEppEv.exit, label %.loopexit

_ZNO9hb_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EE9hb_pair_tIRS3_S9_EEppEv.exit: ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT7NumTypeILb1EtLj2EEEEEPT_RS4_.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !4149   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !4149 ; 2 uses
  %i.ab = load i16, ptr %i.y, align 1, !tbaa !62
  %i.ac = tail call noundef i16 @llvm.bswap.i16(i16 %i.ab)
  %i.ad = load i16, ptr %i.aa, align 1, !tbaa !62
  %i.ae = tail call noundef i16 @llvm.bswap.i16(i16 %i.ad)
  %.narrow = sub i16 %i.ae, %i.ac                 ; 2 uses
  %i.af = add i32 %i.s, -1                        ; 2 uses
  %i.ag = add i32 %i.v, -1                        ; 2 uses
  %i.ah = icmp eq i32 %i.af, 0
  %i.ai = icmp eq i32 %i.ag, 0
  %.not910.i = select i1 %i.ah, i1 true, i1 %i.ai
  br i1 %.not910.i, label %.loopexit51, label %_ZN9hb_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EE9hb_pair_tIRS3_S9_EEdeEv.exit.i

_ZN9hb_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EE9hb_pair_tIRS3_S9_EEdeEv.exit.i: ; preds = %_ZNO9hb_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EE9hb_pair_tIRS3_S9_EEppEv.exit, %_ZNR9hb_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EE9hb_pair_tIRS3_S9_EEppEv.exit.i
  %.sroa.01.014.i.pn = phi ptr [ %.sroa.01.014.i, %_ZNR9hb_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EE9hb_pair_tIRS3_S9_EEppEv.exit.i ], [ %i.y, %_ZNO9hb_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EE9hb_pair_tIRS3_S9_EEppEv.exit ]
  %.sroa.6.013.i = phi i32 [ %i.am, %_ZNR9hb_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EE9hb_pair_tIRS3_S9_EEppEv.exit.i ], [ %i.af, %_ZNO9hb_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EE9hb_pair_tIRS3_S9_EEppEv.exit ]
  %.sroa.12.012.i.pn = phi ptr [ %.sroa.12.012.i, %_ZNR9hb_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EE9hb_pair_tIRS3_S9_EEppEv.exit.i ], [ %i.aa, %_ZNO9hb_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EE9hb_pair_tIRS3_S9_EEppEv.exit ]
  %.sroa.15.011.i = phi i32 [ %i.an, %_ZNR9hb_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EE9hb_pair_tIRS3_S9_EEppEv.exit.i ], [ %i.ag, %_ZNO9hb_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EE9hb_pair_tIRS3_S9_EEppEv.exit ]
  %.sroa.12.012.i = getelementptr inbounds nuw i8, ptr %.sroa.12.012.i.pn, i64 2 ; 2 uses
  %.sroa.01.014.i = getelementptr inbounds nuw i8, ptr %.sroa.01.014.i.pn, i64 2 ; 2 uses
  %.val5.val.i = load i16, ptr %.sroa.01.014.i, align 1, !tbaa !62
  %.val6.val.i = load i16, ptr %.sroa.12.012.i, align 1, !tbaa !62
  %i.aj = tail call noundef i16 @llvm.bswap.i16(i16 %.val5.val.i)
  %i.ak = tail call noundef i16 @llvm.bswap.i16(i16 %.val6.val.i)
  %.narrow50 = sub i16 %i.ak, %i.aj
  %i.al = icmp eq i16 %.narrow, %.narrow50
  br i1 %i.al, label %_ZNR9hb_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EE9hb_pair_tIRS3_S9_EEppEv.exit.i, label %.loopexit

_ZNR9hb_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EE9hb_pair_tIRS3_S9_EEppEv.exit.i: ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EE9hb_pair_tIRS3_S9_EEdeEv.exit.i
  %i.am = add i32 %.sroa.6.013.i, -1              ; 2 uses
  %i.an = add i32 %.sroa.15.011.i, -1             ; 2 uses
  %i.ao = icmp eq i32 %i.am, 0
  %i.ap = icmp eq i32 %i.an, 0
  %.not9.i = select i1 %i.ao, i1 true, i1 %i.ap
  br i1 %.not9.i, label %.loopexit51, label %_ZN9hb_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EE9hb_pair_tIRS3_S9_EEdeEv.exit.i, !llvm.loop !4150

.loopexit51:                                      ; preds = %_ZNR9hb_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EE9hb_pair_tIRS3_S9_EEppEv.exit.i, %_ZNO9hb_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EE9hb_pair_tIRS3_S9_EEppEv.exit
  store i16 256, ptr %0, align 1, !tbaa !61
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr @_ZL8hb_first, ptr %.sroa.2.0..sroa_idx, align 8
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !1012
  %.not11.i.i.i12 = icmp eq i32 %i.aq, 0
  br i1 %.not11.i.i.i12, label %bb.f, label %"_ZN2OT6Layout9GSUB_impl20SingleSubstFormat1_3INS0_10SmallTypesEE9serializeI13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tINS_11HBGlyphID16EE10hb_array_tIS9_EERK3$_6L24hb_function_sortedness_t1ELPv0EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_jEE5valuesrSL_18is_sorted_iteratorEvE4typeELSI_0EEEbP22hb_serialize_context_tSL_j.exit", !prof !49

bb.f:                                             ; preds = %.loopexit51
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !1013 ; 4 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.av = sub i64 %i.at, %i.au                    ; 4 uses
  %i.aw = icmp ugt i64 %i.av, 2147483647
  br i1 %i.aw, label %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.sink.split.i, label %bb.g, !prof !48

bb.g:                                             ; preds = %bb.f
  %i.ax = load ptr, ptr %i.j, align 8, !tbaa !1014
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.au
  %i.ba = icmp slt i64 %i.az, %i.av
  br i1 %i.ba, label %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.sink.split.i, label %bb.h, !prof !48

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i.not.i.i13 = icmp eq ptr %i.ar, %i.as
  br i1 %.not.i.i.i.not.i.i13, label %_ZL9hb_memsetPvij.exit.i.i.i.i15, label %bb.i, !prof !160

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.as, i8 0, i64 %i.av, i1 false)
  %.pre.i.i.i.i14 = load ptr, ptr %i.d, align 8, !tbaa !1013
  br label %_ZL9hb_memsetPvij.exit.i.i.i.i15

_ZL9hb_memsetPvij.exit.i.i.i.i15:                 ; preds = %bb.i, %bb.h
  %i.bb = phi ptr [ %.pre.i.i.i.i14, %bb.i ], [ %i.as, %bb.h ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.av
  store ptr %i.bc, ptr %i.d, align 8, !tbaa !1013
  %i.bd = icmp eq ptr %i.bb, null
  br i1 %i.bd, label %"_ZN2OT6Layout9GSUB_impl20SingleSubstFormat1_3INS0_10SmallTypesEE9serializeI13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tINS_11HBGlyphID16EE10hb_array_tIS9_EERK3$_6L24hb_function_sortedness_t1ELPv0EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_jEE5valuesrSL_18is_sorted_iteratorEvE4typeELSI_0EEEbP22hb_serialize_context_tSL_j.exit", label %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout9GSUB_impl20SingleSubstFormat1_3INS2_10SmallTypesEEEEEPT_S8_.exit.i, !prof !48

_ZN22hb_serialize_context_t10extend_minIN2OT6Layout9GSUB_impl20SingleSubstFormat1_3INS2_10SmallTypesEEEEEPT_S8_.exit.i: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i.i15
  %i.be = call fastcc noundef zeroext i1 @"_ZN2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE19serialize_serializeIJR13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tINS_11HBGlyphID16EE10hb_array_tISB_EERK3$_6L24hb_function_sortedness_t1ELPv0EEEEEbP22hb_serialize_context_tDpOT_"(ptr noundef nonnull align 1 dereferenceable(2) %i.c, ptr noundef nonnull %1, ptr noundef nonnull readonly align 8 dereferenceable(40) %3)
  br i1 %i.be, label %bb.j, label %"_ZN2OT6Layout9GSUB_impl20SingleSubstFormat1_3INS0_10SmallTypesEE9serializeI13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tINS_11HBGlyphID16EE10hb_array_tIS9_EERK3$_6L24hb_function_sortedness_t1ELPv0EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_jEE5valuesrSL_18is_sorted_iteratorEvE4typeELSI_0EEEbP22hb_serialize_context_tSL_j.exit", !prof !49

bb.j:                                             ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout9GSUB_impl20SingleSubstFormat1_3INS2_10SmallTypesEEEEEPT_S8_.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bg = tail call i16 @llvm.bswap.i16(i16 %.narrow)
  store i16 %i.bg, ptr %i.bf, align 1, !tbaa !61
  br label %"_ZN2OT6Layout9GSUB_impl20SingleSubstFormat1_3INS0_10SmallTypesEE9serializeI13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tINS_11HBGlyphID16EE10hb_array_tIS9_EERK3$_6L24hb_function_sortedness_t1ELPv0EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_jEE5valuesrSL_18is_sorted_iteratorEvE4typeELSI_0EEEbP22hb_serialize_context_tSL_j.exit"

_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.sink.split.i: ; preds = %bb.g, %bb.f
  store i32 4, ptr %i.a, align 4, !tbaa !1012
  br label %"_ZN2OT6Layout9GSUB_impl20SingleSubstFormat1_3INS0_10SmallTypesEE9serializeI13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tINS_11HBGlyphID16EE10hb_array_tIS9_EERK3$_6L24hb_function_sortedness_t1ELPv0EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_jEE5valuesrSL_18is_sorted_iteratorEvE4typeELSI_0EEEbP22hb_serialize_context_tSL_j.exit"

"_ZN2OT6Layout9GSUB_impl20SingleSubstFormat1_3INS0_10SmallTypesEE9serializeI13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tINS_11HBGlyphID16EE10hb_array_tIS9_EERK3$_6L24hb_function_sortedness_t1ELPv0EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_jEE5valuesrSL_18is_sorted_iteratorEvE4typeELSI_0EEEbP22hb_serialize_context_tSL_j.exit": ; preds = %bb.j, %.loopexit51, %_ZL9hb_memsetPvij.exit.i.i.i.i15, %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout9GSUB_impl20SingleSubstFormat1_3INS2_10SmallTypesEEEEEPT_S8_.exit.i, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.sink.split.i
  %.0.i = phi i1 [ false, %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout9GSUB_impl20SingleSubstFormat1_3INS2_10SmallTypesEEEEEPT_S8_.exit.i ], [ true, %bb.j ], [ false, %.loopexit51 ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i.i15 ], [ false, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %select.unfold

.loopexit:                                        ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EE9hb_pair_tIRS3_S9_EEdeEv.exit.i, %_ZN22hb_serialize_context_t10extend_minIN2OT7NumTypeILb1EtLj2EEEEEPT_RS4_.exit
  store i16 512, ptr %0, align 1, !tbaa !61
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.bh = tail call noundef zeroext i1 @_ZN2OT6Layout9GSUB_impl20SingleSubstFormat2_4INS0_10SmallTypesEE9serializeI13hb_zip_iter_tI17hb_sorted_array_tINS_11HBGlyphID16EE10hb_array_tIS8_EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_9hb_pair_tIjjEEE5valuesrSE_18is_sorted_iteratorEvE4typeELPv0EEEbP22hb_serialize_context_tSE_(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.hb_zip_iter_t.1591) align 8 %2)
  br label %select.unfold

select.unfold:                                    ; preds = %_ZL9hb_memsetPvij.exit.i.i.i.i, %"_ZN2OT6Layout9GSUB_impl20SingleSubstFormat1_3INS0_10SmallTypesEE9serializeI13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tINS_11HBGlyphID16EE10hb_array_tIS9_EERK3$_6L24hb_function_sortedness_t1ELPv0EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_jEE5valuesrSL_18is_sorted_iteratorEvE4typeELSI_0EEEbP22hb_serialize_context_tSL_j.exit", %.loopexit, %.critedge.i.i.i.i, %bb.a
  %.1 = phi i1 [ %.0.i, %"_ZN2OT6Layout9GSUB_impl20SingleSubstFormat1_3INS0_10SmallTypesEE9serializeI13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tINS_11HBGlyphID16EE10hb_array_tIS9_EERK3$_6L24hb_function_sortedness_t1ELPv0EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_jEE5valuesrSL_18is_sorted_iteratorEvE4typeELSI_0EEEbP22hb_serialize_context_tSL_j.exit" ], [ false, %bb.a ], [ false, %.critedge.i.i.i.i ], [ %i.bh, %.loopexit ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i.i ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
end_hunk_7
begin_hunk_8_@"_ZN2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE19serialize_serializeIJR13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tINS_11HBGlyphID16EE10hb_array_tISB_EERK3$_6L24hb_function_sortedness_t1ELPv0EEEEEbP22hb_serialize_context_tDpOT_":bb.a
bb.ag:                                            ; preds = %"_ZNK13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EERK3$_6L24hb_function_sortedness_t1ELPv0EEneERKSD_.exit67.i.i"
  %.not.i.i.i.i.i.i68.i.i = icmp eq i32 %.sroa.7.0131.i.i, 0 ; 2 uses
  %.not.i.i1.i.i.i.i71159.i.i = icmp eq i32 %.sroa.16.0129.i.i, 0 ; 2 uses
  br i1 %.not.i.i.i.i.i.i68.i.i, label %_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i69.thread.i.i, label %_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i69.i.i, !prof !48

_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i69.i.i: ; preds = %bb.ag
  br i1 %.not.i.i1.i.i.i.i71159.i.i, label %_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i69.thread.i.thread.i, label %bb.ai, !prof !787

_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i69.thread.i.thread.i: ; preds = %_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i69.i.i
  store i16 0, ptr @_hb_CrapPool, align 16
  br label %bb.ai

_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i69.thread.i.i: ; preds = %bb.ag
  store i16 0, ptr @_hb_CrapPool, align 16
  br i1 %.not.i.i1.i.i.i.i71159.i.i, label %bb.ah, label %bb.ai, !prof !124

bb.ah:                                            ; preds = %_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i69.thread.i.i
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i69.thread.i.i, %_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i69.thread.i.thread.i, %_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i69.i.i
  %.not.i.i1.i.i.i.i71162.i.i = phi i64 [ 2, %_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i69.i.i ], [ 2, %_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i69.thread.i.i ], [ 0, %_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i69.thread.i.thread.i ], [ 0, %bb.ah ]
  %.0.i.i.i.i.i.i70160.i.i = phi ptr [ %.sroa.084.0132.i.i, %_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i69.i.i ], [ @_hb_CrapPool, %_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i69.thread.i.i ], [ %.sroa.084.0132.i.i, %_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i69.thread.i.thread.i ], [ @_hb_CrapPool, %bb.ah ]
  %i.el = load i16, ptr %.0.i.i.i.i.i.i70160.i.i, align 1 ; 3 uses
  %i.em = add nsw i32 %.127133.i.i, 1             ; 2 uses
  %i.en = tail call noundef i16 @llvm.bswap.i16(i16 %i.el)
  %i.eo = zext i16 %i.en to i32                   ; 3 uses
  %.not33.i.i = icmp eq i32 %i.em, %i.eo
  br i1 %.not33.i.i, label %._ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i74_crit_edge.i.i, label %bb.aj

._ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i74_crit_edge.i.i: ; preds = %bb.ai
  %.pre.i.i = zext i32 %.023135.i.i to i64
  br label %_ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i74.i.i

bb.aj:                                            ; preds = %bb.ai
  %.not34.i.i = icmp ne i32 %.127133.i.i, -2
  %i.ep = icmp ugt i32 %i.em, %i.eo
  %or.cond.i.i = and i1 %.not34.i.i, %i.ep
  br i1 %or.cond.i.i, label %bb.ak, label %.critedge.i.i, !prof !1188

bb.ak:                                            ; preds = %bb.aj
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.ak, %bb.aj
  %.122.i.i = phi i32 [ 1, %bb.ak ], [ %.021136.i.i, %bb.aj ]
  %i.eq = add i32 %.023135.i.i, 1                 ; 2 uses
  %i.er = zext i32 %i.eq to i64                   ; 2 uses
  %i.es = getelementptr inbounds nuw [6 x i8], ptr %i.cf, i64 %i.er ; 2 uses
  store i16 %i.el, ptr %i.es, align 1
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.eu = tail call i16 @llvm.bswap.i16(i16 %.025134.i.i)
  store i16 %i.eu, ptr %i.et, align 1, !tbaa !61
  br label %_ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i74.i.i

_ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i74.i.i: ; preds = %.critedge.i.i, %._ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i74_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %._ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i74_crit_edge.i.i ], [ %i.er, %.critedge.i.i ]
  %.124.i.i = phi i32 [ %.023135.i.i, %._ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i74_crit_edge.i.i ], [ %i.eq, %.critedge.i.i ]
  %.2.i.i = phi i32 [ %.021136.i.i, %._ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i74_crit_edge.i.i ], [ %.122.i.i, %.critedge.i.i ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [6 x i8], ptr %i.a, i64 %.pre-phi.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 6
  store i16 %i.el, ptr %i.ew, align 1
  %i.ex = add i16 %.025134.i.i, 1
  %.sroa.7.1.i.i = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.7.0131.i.i, i32 1)
  %.sroa.084.1.idx.i.i = select i1 %.not.i.i.i.i.i.i68.i.i, i64 0, i64 2, !prof !48
  %.sroa.084.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.084.0132.i.i, i64 %.sroa.084.1.idx.i.i ; 2 uses
  %.sroa.16.1.i.i = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.16.0129.i.i, i32 1)
  %.sroa.13.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.0130.i.i, i64 %.not.i.i1.i.i.i.i71162.i.i
  %.not.i.i.i65.i.i = icmp ne ptr %.sroa.084.1.i.i, %i.ct
  %i.ey = icmp ugt i32 %.sroa.7.0131.i.i, 1
  %i.ez = select i1 %.not.i.i.i65.i.i, i1 true, i1 %i.ey
  br i1 %i.ez, label %"_ZNK13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EERK3$_6L24hb_function_sortedness_t1ELPv0EEneERKSD_.exit67.i.i", label %"_ZNK13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EERK3$_6L24hb_function_sortedness_t1ELPv0EEneERKSD_.exit67.thread.i.i"

bb.al:                                            ; preds = %"_ZNK13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EERK3$_6L24hb_function_sortedness_t1ELPv0EEneERKSD_.exit67.thread.i.i"
  %i.fa = load i16, ptr %i.d, align 1, !tbaa !62  ; 2 uses
  %.not.i.i34.i = icmp eq i16 %i.fa, 0
  br i1 %.not.i.i34.i, label %"_ZN2OT6Layout6Common8Coverage9serializeI13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tINS_11HBGlyphID16EE10hb_array_tIS7_EERK3$_6L24hb_function_sortedness_t1ELPv0EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_jEE5valuesrSJ_18is_sorted_iteratorEvE4typeELSG_0EEEbP22hb_serialize_context_tSJ_.exit", label %bb.am, !prof !48

bb.am:                                            ; preds = %bb.al
  %i.fb = tail call noundef i16 @llvm.bswap.i16(i16 %i.fa)
  %i.fc = zext i16 %i.fb to i64
  tail call void @qsort(ptr noundef nonnull %i.cf, i64 noundef range(i64 1, 4294967296) %i.fc, i64 noundef range(i64 0, 4294967296) 6, ptr noundef nonnull @_ZN2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE9cmp_rangeEPKvS6_) #63
  br label %"_ZN2OT6Layout6Common8Coverage9serializeI13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tINS_11HBGlyphID16EE10hb_array_tIS7_EERK3$_6L24hb_function_sortedness_t1ELPv0EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_jEE5valuesrSJ_18is_sorted_iteratorEvE4typeELSG_0EEEbP22hb_serialize_context_tSJ_.exit"

"_ZN2OT6Layout6Common8Coverage9serializeI13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tINS_11HBGlyphID16EE10hb_array_tIS7_EERK3$_6L24hb_function_sortedness_t1ELPv0EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_jEE5valuesrSJ_18is_sorted_iteratorEvE4typeELSG_0EEEbP22hb_serialize_context_tSJ_.exit": ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS4_EERK3$_6L24hb_function_sortedness_t1ELPv0EERS4_EppEv.exit.i.i.i.i", %_ZN2OT13SortedArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEE9serializeEP22hb_serialize_context_tj.exit.i.i, %bb.am, %bb.al, %"_ZNK13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EERK3$_6L24hb_function_sortedness_t1ELPv0EEneERKSD_.exit67.thread.i.i", %_ZN2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEE9serializeEP22hb_serialize_context_tjb.exit.preheader.i.i.i.i
  %i.fd = tail call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext true) ; 2 uses
  %i.fe = load i32, ptr %i.b, align 4, !tbaa !1012
  %i.ff = icmp ne i32 %i.fe, 0
  %i.fg = icmp eq i32 %i.fd, 0
  %or.cond.not.i = or i1 %i.fg, %i.ff
  br i1 %or.cond.not.i, label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout6Common8CoverageENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit, label %bb.an, !prof !160

bb.an:                                            ; preds = %"_ZN2OT6Layout6Common8Coverage9serializeI13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tINS_11HBGlyphID16EE10hb_array_tIS7_EERK3$_6L24hb_function_sortedness_t1ELPv0EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_jEE5valuesrSJ_18is_sorted_iteratorEvE4typeELSG_0EEEbP22hb_serialize_context_tSJ_.exit"
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !1054 ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 20 ; 3 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !2803 ; 2 uses
  %i.fl = add i32 %i.fk, 1                        ; 5 uses
  %i.fm = icmp slt i32 %i.fl, 0
  br i1 %i.fm, label %bb.as, label %bb.ao, !prof !48

bb.ao:                                            ; preds = %bb.an
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fo = tail call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.fn, i32 noundef %i.fl, i1 noundef zeroext false)
  br i1 %i.fo, label %bb.ap, label %bb.as, !prof !383

bb.ap:                                            ; preds = %bb.ao
  %i.fp = load i32, ptr %i.fj, align 4, !tbaa !2803 ; 3 uses
  %i.fq = icmp ugt i32 %i.fl, %i.fp
  br i1 %i.fq, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.fr = sub nuw nsw i32 %i.fl, %i.fp
  %i.fs = mul i32 %i.fr, 12                       ; 2 uses
  %.not.i.i.i.i.i.i9 = icmp eq i32 %i.fs, 0
  br i1 %.not.i.i.i.i.i.i9, label %bb.at, label %bb.ar, !prof !48

bb.ar:                                            ; preds = %bb.aq
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !2804
  %i.fv = zext nneg i32 %i.fp to i64
  %i.fw = getelementptr inbounds nuw [12 x i8], ptr %i.fu, i64 %i.fv
  %i.fx = zext i32 %i.fs to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fw, i8 0, i64 %i.fx, i1 false)
  br label %bb.at

bb.as:                                            ; preds = %bb.ao, %bb.an
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, i8 0, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

bb.at:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !2803
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !2804
  %i.ga = zext i32 %i.fk to i64
  %i.gb = getelementptr inbounds nuw [12 x i8], ptr %i.fz, i64 %i.ga
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i: ; preds = %bb.at, %bb.as
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.as ], [ %i.gb, %bb.at ] ; 5 uses
  %i.gc = load ptr, ptr %i.fh, align 8, !tbaa !1054
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !2802
  %i.gf = icmp slt i32 %i.ge, 0
  br i1 %i.gf, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.gg = load i32, ptr %i.b, align 4, !tbaa !1012
  %i.gh = or i32 %i.gg, 1
  store i32 %i.gh, ptr %i.b, align 4, !tbaa !1012
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.gi = load i32, ptr %.0.i.i, align 4
  %i.gj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store i32 %i.fd, ptr %i.gj, align 4, !tbaa !2832
  %i.gk = and i32 %i.gi, -64
  %i.gl = or disjoint i32 %i.gk, 2
  store i32 %i.gl, ptr %.0.i.i, align 4
  %i.gm = load ptr, ptr %i.fh, align 8, !tbaa !1054
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !1055
  %i.go = ptrtoint ptr %0 to i64
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = sub i64 %i.go, %i.gp
  %i.gr = trunc i64 %i.gq to i32
  %i.gs = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !2834
  store i32 2, ptr %.0.i.i, align 4
  br label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout6Common8CoverageENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit

.sink.split:                                      ; preds = %bb.aa, %bb.ab, %bb.w, %bb.x, %bb.s, %bb.t, %bb.i, %bb.j, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.thread.i.i.i.i.i, %bb.m, %bb.n, %bb.b, %bb.c, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.thread.i.i.i.i
  %.sink = phi i32 [ 4, %bb.w ], [ 4, %bb.b ], [ 4, %bb.m ], [ 4, %bb.s ], [ %i.dl, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.thread.i.i.i.i ], [ 4, %bb.c ], [ 4, %bb.i ], [ %i.ax, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.thread.i.i.i.i.i ], [ 4, %bb.j ], [ 4, %bb.n ], [ 4, %bb.t ], [ 4, %bb.x ], [ 4, %bb.ab ], [ 4, %bb.aa ]
  store i32 %.sink, ptr %i.b, align 4, !tbaa !1012
  br label %bb.aw

bb.aw:                                            ; preds = %.sink.split, %_ZL9hb_memsetPvij.exit.i.i.i.i, %bb.a, %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i.i.i, %bb.o, %bb.h, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.i.i.i.i.i, %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i.i, %bb.r, %_ZL9hb_memsetPvij.exit.i.i.i.i.i, %"_ZNK13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EERK3$_6L24hb_function_sortedness_t1ELPv0EEneERKSD_.exit.thread.i.i", %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.i.i.i.i, %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i
  tail call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  br label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout6Common8CoverageENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit

_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout6Common8CoverageENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit: ; preds = %bb.av, %"_ZN2OT6Layout6Common8Coverage9serializeI13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tINS_11HBGlyphID16EE10hb_array_tIS7_EERK3$_6L24hb_function_sortedness_t1ELPv0EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_jEE5valuesrSJ_18is_sorted_iteratorEvE4typeELSG_0EEEbP22hb_serialize_context_tSJ_.exit", %bb.aw
  %.122.i19 = phi i1 [ false, %bb.aw ], [ true, %"_ZN2OT6Layout6Common8Coverage9serializeI13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tINS_11HBGlyphID16EE10hb_array_tIS7_EERK3$_6L24hb_function_sortedness_t1ELPv0EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_jEE5valuesrSJ_18is_sorted_iteratorEvE4typeELSG_0EEEbP22hb_serialize_context_tSJ_.exit" ], [ true, %bb.av ]
  ret i1 %.122.i19
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN2OT6Layout6Common8CoverageEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1012
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2793 ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !48

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1025
  store ptr %i.f, ptr %i.d, align 8, !tbaa !2793
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !2819
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !49

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.l = tail call noalias noundef dereferenceable_or_null(1792) ptr @malloc(i64 noundef 1792) #65 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !2796
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !48

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !2796
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !2793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1025
  store ptr %i.p, ptr %i.d, align 8, !tbaa !2793
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !1012
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !1012
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
  %i.r = phi ptr [ %i.e, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9 ], [ %i.o, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !574
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !574
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1054
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !2805
  store ptr %i.r, ptr %i.u, align 8, !tbaa !1054
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !1013
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE9cmp_rangeEPKvS6_(ptr noundef %0, ptr noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !62
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %i.a) ; 2 uses
  %i.c = load i16, ptr %1, align 1, !tbaa !62
  %i.d = tail call noundef i16 @llvm.bswap.i16(i16 %i.c) ; 2 uses
  %i.e = icmp ult i16 %i.b, %i.d
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i16 %i.b, %i.d
  br i1 %i.f, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = load i16, ptr %i.g, align 1, !tbaa !62
  %i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.h) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.k = load i16, ptr %i.j, align 1, !tbaa !62
  %i.l = tail call noundef i16 @llvm.bswap.i16(i16 %i.k) ; 2 uses
  %i.m = icmp ult i16 %i.i, %i.l
  br i1 %i.m, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp ugt i16 %i.i, %i.l
  br i1 %i.n, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = load i16, ptr %i.o, align 1, !tbaa !62
  %i.q = tail call noundef i16 @llvm.bswap.i16(i16 %i.p) ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i16, ptr %i.r, align 1, !tbaa !62
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.s) ; 2 uses
  %i.u = icmp ult i16 %i.q, %i.t
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = icmp ugt i16 %i.q, %i.t
  %. = zext i1 %i.v to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.e ], [ -1, %bb.a ], [ 1, %bb.b ], [ -1, %bb.c ], [ 1, %bb.d ], [ %., %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN22hb_serialize_context_t21discard_stale_objectsEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %struct.hb_array_t.550, align 8     ; 6 uses
  %2 = alloca %struct.hb_array_t.550, align 8     ; 5 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1012
  %.not = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp ugt i32 %i.e, 1
  %or.cond = select i1 %.not, i1 %i.f, i1 false, !prof !729
  br i1 %or.cond, label %.preheader, label %.critedge, !prof !729

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE4tailEv.exit

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE4tailEv.exit: ; preds = %.preheader, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE3popEv.exit
  %i.p = phi i32 [ %i.e, %.preheader ], [ %i.bp, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE3popEv.exit ] ; 2 uses
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !1020
  %i.r = add i32 %i.p, -1
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1025
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1055
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !1014
  %i.x = icmp ult ptr %i.v, %i.w
  br i1 %i.x, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE4tailEv.exit3, label %.critedge

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE4tailEv.exit3: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE4tailEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !1020
  %i.z = add i32 %i.p, -1
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1025 ; 5 uses
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !1025
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !1011
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %_ZN12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE3delERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE4tailEv.exit3
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #63
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !1055 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2829
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %..i.i.i.i.i = call noundef range(i64 -9223372036854775808, 2147483648) i64 @llvm.smin.i64(i64 %i.aj, i64 128)
  %i.ak = trunc i64 %..i.i.i.i.i to i32
  store ptr %i.ae, ptr %1, align 8, !tbaa !2653
  store i32 %i.ak, ptr %i.k, align 8, !tbaa !2654
  store i32 0, ptr %i.l, align 4, !tbaa !2830
  %i.al = call noundef i32 @_ZNK10hb_array_tIKcE4hashEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #63
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !2804
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !2803
  %i.aq = mul i32 %i.ap, 12
  %.sroa.2.8.insert.ext.i.i.i.i.i = zext i32 %i.aq to i64
  store ptr %i.an, ptr %2, align 8
  store i64 %.sroa.2.8.insert.ext.i.i.i.i.i, ptr %i.m, align 8
  %i.ar = call noundef i32 @_ZNK10hb_array_tIKcE4hashEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.as = xor i32 %i.ar, %i.al
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #63
  %i.at = call noundef ptr @_ZNK12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE10fetch_itemERKS3_j(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.as) ; 2 uses
  %.not5.i = icmp eq ptr %i.at, null
  br i1 %.not5.i, label %_ZN12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE3delERKS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = and i32 %i.av, -2
  store i32 %i.aw, ptr %i.au, align 8
  %i.ax = load i32, ptr %i.n, align 4, !tbaa !2801
  %i.ay = add i32 %i.ax, -1
  store i32 %i.ay, ptr %i.n, align 4, !tbaa !2801
  br label %_ZN12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE3delERKS3_.exit

_ZN12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE3delERKS3_.exit: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE4tailEv.exit3, %bb.b, %bb.c
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !1025 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !2802
  %i.bc = add i32 %i.bb, -1
  %spec.select.i.i.i = icmp ult i32 %i.bc, -2
  br i1 %spec.select.i.i.i, label %bb.d, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i

bb.d:                                             ; preds = %_ZN12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE3delERKS3_.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 20
  store i32 0, ptr %i.bd, align 4, !tbaa !2803
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !2804
  call void @free(ptr noundef %i.bf) #63
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i: ; preds = %bb.d, %_ZN12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE3delERKS3_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !2802
  %i.bi = add i32 %i.bh, -1
  %spec.select.i.i1.i = icmp ult i32 %i.bi, -2
  br i1 %spec.select.i.i1.i, label %bb.e, label %_ZN22hb_serialize_context_t8object_t4finiEv.exit

bb.e:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4finiEv.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 36
  store i32 0, ptr %i.bj, align 4, !tbaa !2803
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !2804
  call void @free(ptr noundef %i.bl) #63
  br label %_ZN22hb_serialize_context_t8object_t4finiEv.exit
end_hunk_8
begin_hunk_9_@_ZN2OT8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EE19serialize_serializeIJ10hb_array_tIKNS_11HBGlyphID16EESA_IKjERSD_EEEbP22hb_serialize_context_tDpOT_:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.o = tail call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i32 noundef %i.l, i1 noundef zeroext false)
  br i1 %i.o, label %bb.e, label %bb.h, !prof !383

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %i.j, align 4, !tbaa !2803 ; 3 uses
  %i.q = icmp ugt i32 %i.l, %i.p
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = sub nuw nsw i32 %i.l, %i.p
  %i.s = mul i32 %i.r, 12                         ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.g, !prof !48

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !2804
  %i.v = zext nneg i32 %i.p to i64
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.v
  %i.x = zext i32 %i.s to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.w, i8 0, i64 %i.x, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, i8 0, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e
  store i32 %i.l, ptr %i.j, align 4, !tbaa !2803
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2804
  %i.aa = zext i32 %i.k to i64
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %i.z, i64 %i.aa
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i: ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.h ], [ %i.ab, %bb.i ] ; 5 uses
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !1054
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !2802
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.ag = load i32, ptr %i.d, align 4, !tbaa !1012
  %i.ah = or i32 %i.ag, 1
  store i32 %i.ah, ptr %i.d, align 4, !tbaa !1012
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.ai = load i32, ptr %.0.i.i, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store i32 %i.c, ptr %i.aj, align 4, !tbaa !2832
  %i.ak = and i32 %i.ai, -64
  %i.al = or disjoint i32 %i.ak, 2
  store i32 %i.al, ptr %.0.i.i, align 4
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !1054
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1055
  %i.ao = ptrtoint ptr %0 to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = trunc i64 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !2834
  store i32 2, ptr %.0.i.i, align 4
  br label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout9GSUB_impl11LigatureSetINS3_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit

bb.l:                                             ; preds = %bb.a
  tail call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  br label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout9GSUB_impl11LigatureSetINS3_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit

_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout9GSUB_impl11LigatureSetINS3_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit: ; preds = %bb.k, %bb.b, %bb.l
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE19serialize_serializeIJR17hb_sorted_array_tIKNS_11HBGlyphID16EEEEEbP22hb_serialize_context_tDpOT_(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store i16 0, ptr %0, align 1, !tbaa !61
  %i.a = tail call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN2OT6Layout6Common8CoverageEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %1)
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  %i.b = tail call noundef zeroext i1 @_ZN2OT6Layout6Common8Coverage9serializeI17hb_sorted_array_tIKNS_11HBGlyphID16EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_jEE5valuesrS9_18is_sorted_iteratorEvE4typeELPv0EEEbP22hb_serialize_context_tS9_(ptr noundef nonnull align 1 dereferenceable(10) %i.a, ptr noundef nonnull %1, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload) ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext true) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1012
  %i.f = icmp ne i32 %i.e, 0
  %i.g = icmp eq i32 %i.c, 0
  %or.cond.not.i = or i1 %i.g, %i.f
  br i1 %or.cond.not.i, label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout6Common8CoverageENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit, label %bb.c, !prof !160

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1054 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 20 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !2803 ; 2 uses
  %i.l = add i32 %i.k, 1                          ; 5 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.h, label %bb.d, !prof !48

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.o = tail call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i32 noundef %i.l, i1 noundef zeroext false)
  br i1 %i.o, label %bb.e, label %bb.h, !prof !383

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %i.j, align 4, !tbaa !2803 ; 3 uses
  %i.q = icmp ugt i32 %i.l, %i.p
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = sub nuw nsw i32 %i.l, %i.p
  %i.s = mul i32 %i.r, 12                         ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.g, !prof !48

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !2804
  %i.v = zext nneg i32 %i.p to i64
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.v
  %i.x = zext i32 %i.s to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.w, i8 0, i64 %i.x, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, i8 0, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e
  store i32 %i.l, ptr %i.j, align 4, !tbaa !2803
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2804
  %i.aa = zext i32 %i.k to i64
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %i.z, i64 %i.aa
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i: ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.h ], [ %i.ab, %bb.i ] ; 5 uses
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !1054
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !2802
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.ag = load i32, ptr %i.d, align 4, !tbaa !1012
  %i.ah = or i32 %i.ag, 1
  store i32 %i.ah, ptr %i.d, align 4, !tbaa !1012
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.ai = load i32, ptr %.0.i.i, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store i32 %i.c, ptr %i.aj, align 4, !tbaa !2832
  %i.ak = and i32 %i.ai, -64
  %i.al = or disjoint i32 %i.ak, 2
  store i32 %i.al, ptr %.0.i.i, align 4
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !1054
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1055
  %i.ao = ptrtoint ptr %0 to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = trunc i64 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !2834
  store i32 2, ptr %.0.i.i, align 4
  br label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout6Common8CoverageENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit

bb.l:                                             ; preds = %bb.a
  tail call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  br label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout6Common8CoverageENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit

_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout6Common8CoverageENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit: ; preds = %bb.k, %bb.b, %bb.l
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN2OT6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1012
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2793 ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !48

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1025
  store ptr %i.f, ptr %i.d, align 8, !tbaa !2793
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !2819
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !49

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.l = tail call noalias noundef dereferenceable_or_null(1792) ptr @malloc(i64 noundef 1792) #65 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !2796
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !48

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !2796
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !2793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1025
  store ptr %i.p, ptr %i.d, align 8, !tbaa !2793
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !1012
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !1012
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
  %i.r = phi ptr [ %i.e, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9 ], [ %i.o, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !574
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !574
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1054
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !2805
  store ptr %i.r, ptr %i.u, align 8, !tbaa !1054
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !1013
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT6Layout9GSUB_impl11LigatureSetINS0_10SmallTypesEE9serializeEP22hb_serialize_context_t10hb_array_tIKNS_11HBGlyphID16EES7_IKjERSA_(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(16) %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %7 = alloca %struct.hb_array_t.537, align 8     ; 5 uses
  %.sroa.239.8.extract.trunc = trunc i64 %3 to i32 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1012
  %.not11.i.i = icmp eq i32 %i.b, 0
  br i1 %.not11.i.i, label %bb.b, label %select.unfold, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1013 ; 4 uses
  %i.f = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  %i.i = icmp ugt i64 %i.h, 2147483647
  br i1 %i.i, label %select.unfold.sink.split, label %bb.c, !prof !48

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1014
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.g
  %i.n = icmp slt i64 %i.m, %i.h
  br i1 %i.n, label %select.unfold.sink.split, label %bb.d, !prof !48

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i.i.not.i, label %_ZL9hb_memsetPvij.exit.i.i.i, label %bb.e, !prof !160

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.e, i8 0, i64 %i.h, i1 false)
  %.pre.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !1013
  br label %_ZL9hb_memsetPvij.exit.i.i.i

_ZL9hb_memsetPvij.exit.i.i.i:                     ; preds = %bb.e, %bb.d
  %i.o = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.e, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.h ; 5 uses
  store ptr %i.p, ptr %i.d, align 8, !tbaa !1013
  %i.q = icmp eq ptr %i.o, null
  br i1 %i.q, label %select.unfold, label %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEEEEPT_S8_.exit, !prof !48

_ZN22hb_serialize_context_t10extend_minIN2OT6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEEEEPT_S8_.exit: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i
  %i.r = load i32, ptr %i.a, align 4, !tbaa !1012
  %.not11.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not11.i.i.i, label %bb.f, label %select.unfold, !prof !49

bb.f:                                             ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEEEEPT_S8_.exit
  %i.s = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.t = sub i64 %i.f, %i.s                       ; 4 uses
  %i.u = icmp ugt i64 %i.t, 2147483647
  br i1 %i.u, label %select.unfold.sink.split, label %bb.g, !prof !48

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !1014
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.s
  %i.y = icmp slt i64 %i.x, %i.t
  br i1 %i.y, label %select.unfold.sink.split, label %bb.h, !prof !48

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i.not.i.i = icmp eq ptr %i.c, %i.p
  br i1 %.not.i.i.i.not.i.i, label %_ZL9hb_memsetPvij.exit.i.i.i.i, label %bb.i, !prof !160

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.t, i1 false)
  %.pre.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !1013
  br label %_ZL9hb_memsetPvij.exit.i.i.i.i

_ZL9hb_memsetPvij.exit.i.i.i.i:                   ; preds = %bb.i, %bb.h
  %i.z = phi ptr [ %.pre.i.i.i.i, %bb.i ], [ %i.p, %bb.h ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.t
  store ptr %i.aa, ptr %i.d, align 8, !tbaa !1013
  %i.ab = icmp eq ptr %i.z, null
  br i1 %i.ab, label %select.unfold, label %_ZN22hb_serialize_context_t10extend_minIN2OT7ArrayOfINS1_8OffsetToINS1_6Layout9GSUB_impl8LigatureINS4_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESA_EEEEPT_SE_.exit.i, !prof !48

_ZN22hb_serialize_context_t10extend_minIN2OT7ArrayOfINS1_8OffsetToINS1_6Layout9GSUB_impl8LigatureINS4_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESA_EEEEPT_SE_.exit.i: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i.i
  %i.ac = trunc i64 %3 to i16
  %i.ad = tail call i16 @llvm.bswap.i16(i16 %i.ac)
  store i16 %i.ad, ptr %0, align 1, !tbaa !61
  %.not.i.i.i = icmp ult i32 %.sroa.239.8.extract.trunc, 65536
  %.pr.i = load i32, ptr %i.a, align 4, !tbaa !1012 ; 2 uses
  br i1 %.not.i.i.i, label %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.i, label %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.thread.i

_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.thread.i: ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT7ArrayOfINS1_8OffsetToINS1_6Layout9GSUB_impl8LigatureINS4_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESA_EEEEPT_SE_.exit.i
  %i.ae = or i32 %.pr.i, 16
  br label %select.unfold.sink.split

_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.i: ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT7ArrayOfINS1_8OffsetToINS1_6Layout9GSUB_impl8LigatureINS4_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESA_EEEEPT_SE_.exit.i
  %.not11.i.i20 = icmp eq i32 %.pr.i, 0
  br i1 %.not11.i.i20, label %bb.j, label %select.unfold, !prof !669

bb.j:                                             ; preds = %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.i
  %i.af = shl i64 %3, 1
  %i.ag = and i64 %i.af, 131070
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2 ; 2 uses
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !1013 ; 4 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.am = sub i64 %i.ak, %i.al                    ; 4 uses
  %i.an = icmp ugt i64 %i.am, 2147483647
  br i1 %i.an, label %select.unfold.sink.split, label %bb.k, !prof !48

bb.k:                                             ; preds = %bb.j
  %i.ao = load ptr, ptr %i.j, align 8, !tbaa !1014
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.al
  %i.ar = icmp slt i64 %i.aq, %i.am
  br i1 %i.ar, label %select.unfold.sink.split, label %bb.l, !prof !48

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i.i.not = icmp eq ptr %i.ai, %i.aj
  br i1 %.not.i.i.i.i.not, label %_ZL9hb_memsetPvij.exit.i.i.i21, label %bb.m, !prof !160

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aj, i8 0, i64 %i.am, i1 false)
  %.pre.i.i.i22 = load ptr, ptr %i.d, align 8, !tbaa !1013
  br label %_ZL9hb_memsetPvij.exit.i.i.i21

_ZL9hb_memsetPvij.exit.i.i.i21:                   ; preds = %bb.m, %bb.l
  %i.as = phi ptr [ %.pre.i.i.i22, %bb.m ], [ %i.aj, %bb.l ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.am
  store ptr %i.at, ptr %i.d, align 8, !tbaa !1013
  %i.au = icmp eq ptr %i.as, null
  br i1 %i.au, label %select.unfold, label %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl8LigatureINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_E9serializeEP22hb_serialize_context_tjb.exit.preheader, !prof !48

_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl8LigatureINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_E9serializeEP22hb_serialize_context_tjb.exit.preheader: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i21
  %.not1949.not = icmp eq i32 %.sroa.239.8.extract.trunc, 0
  br i1 %.not1949.not, label %select.unfold, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl8LigatureINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_E9serializeEP22hb_serialize_context_tjb.exit.preheader
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.ay = and i64 %5, 4294967295
  %wide.trip.count = and i64 %3, 65535
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl8LigatureINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_E9serializeEP22hb_serialize_context_tjb.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl8LigatureINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_E9serializeEP22hb_serialize_context_tjb.exit ] ; 6 uses
  %.not.i.i = icmp samesign ult i64 %indvars.iv, %i.ay
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %.0.i.i24 = select i1 %.not.i.i, ptr %i.az, ptr @_hb_NullPool, !prof !49
  %i.ba = load i32, ptr %.0.i.i24, align 4, !tbaa !139
  %i.bb = call i32 @llvm.smax.i32(i32 %i.ba, i32 1)
  %.sroa.speculated = add nsw i32 %i.bb, -1       ; 3 uses
  %i.bc = load i16, ptr %0, align 1, !tbaa !62
  %i.bd = call noundef i16 @llvm.bswap.i16(i16 %i.bc)
  %i.be = zext i16 %i.bd to i64
  %.not.i25 = icmp samesign ult i64 %indvars.iv, %i.be
  br i1 %.not.i25, label %bb.p, label %bb.o, !prof !49

bb.o:                                             ; preds = %bb.n
  store i16 0, ptr @_hb_CrapPool, align 16
  br label %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl8LigatureINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit

bb.p:                                             ; preds = %bb.n
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv
  br label %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl8LigatureINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit

_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl8LigatureINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit: ; preds = %bb.o, %bb.p
  %.0.i26 = phi ptr [ @_hb_CrapPool, %bb.o ], [ %i.bf, %bb.p ]
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #63
  %i.bh = load i32, ptr %i.av, align 8, !tbaa !3453
  %.sroa.speculated.i.i = call i32 @llvm.umin.i32(i32 %i.bh, i32 %.sroa.speculated)
  %i.bi = load ptr, ptr %6, align 8, !tbaa !3457
end_hunk_9
begin_hunk_10_@_ZN2OT6Layout9GSUB_impl11LigatureSetINS0_10SmallTypesEE9serializeEP22hb_serialize_context_t10hb_array_tIKNS_11HBGlyphID16EES7_IKjERSA_:bb.a

bb.r:                                             ; preds = %bb.q
  br label %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl8LigatureINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_E9serializeEP22hb_serialize_context_tjb.exit

_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl8LigatureINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_E9serializeEP22hb_serialize_context_tjb.exit: ; preds = %bb.r, %bb.q
  %.0.i.i29 = phi i32 [ %i.bk, %bb.r ], [ %.sroa.speculated, %bb.q ] ; 3 uses
  %i.bm = sub i32 %i.bk, %.0.i.i29
  store i32 %i.bm, ptr %i.av, align 8, !tbaa !3453
  %i.bn = load i32, ptr %i.ax, align 4, !tbaa !3456
  %i.bo = add i32 %i.bn, %.0.i.i29
  store i32 %i.bo, ptr %i.ax, align 4, !tbaa !3456
  %i.bp = load ptr, ptr %6, align 8, !tbaa !3457
  %i.bq = zext nneg i32 %.0.i.i29 to i64
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.bq
  store ptr %i.br, ptr %6, align 8, !tbaa !3457
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %select.unfold, label %bb.n, !llvm.loop !4160

select.unfold.sink.split:                         ; preds = %bb.j, %bb.k, %bb.f, %bb.g, %bb.b, %bb.c, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.thread.i
  %.sink = phi i32 [ 4, %bb.f ], [ %i.ae, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.thread.i ], [ 4, %bb.b ], [ 4, %bb.c ], [ 4, %bb.g ], [ 4, %bb.k ], [ 4, %bb.j ]
  store i32 %.sink, ptr %i.a, align 4, !tbaa !1012
  br label %select.unfold

select.unfold:                                    ; preds = %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl8LigatureINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_E9serializeEP22hb_serialize_context_tjb.exit, %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl8LigatureINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit, %select.unfold.sink.split, %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl8LigatureINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_E9serializeEP22hb_serialize_context_tjb.exit.preheader, %_ZL9hb_memsetPvij.exit.i.i.i21, %_ZL9hb_memsetPvij.exit.i.i.i, %_ZL9hb_memsetPvij.exit.i.i.i.i, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.i, %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEEEEPT_S8_.exit, %bb.a
  %.3 = phi i1 [ false, %_ZL9hb_memsetPvij.exit.i.i.i21 ], [ false, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.i ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i.i ], [ false, %bb.a ], [ true, %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl8LigatureINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_E9serializeEP22hb_serialize_context_tjb.exit.preheader ], [ false, %_ZL9hb_memsetPvij.exit.i.i.i ], [ false, %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEEEEPT_S8_.exit ], [ false, %select.unfold.sink.split ], [ %i.bj, %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl8LigatureINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit ], [ %i.bj, %_ZN2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl8LigatureINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_E9serializeEP22hb_serialize_context_tjb.exit ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT8OffsetToINS_6Layout9GSUB_impl8LigatureINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EE19serialize_serializeIJRKNS_11HBGlyphID16E10hb_array_tISB_EEEEbP22hb_serialize_context_tDpOT_(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(2) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store i16 0, ptr %0, align 1, !tbaa !61
  %i.a = tail call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN2OT6Layout9GSUB_impl8LigatureINS2_10SmallTypesEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %1) ; 3 uses
  %i.b = load i16, ptr %2, align 1, !tbaa !62
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1012
  %.not11.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not11.i.i.i, label %bb.b, label %_ZN2OT6Layout9GSUB_impl8LigatureINS0_10SmallTypesEE9serializeI10hb_array_tIKNS_11HBGlyphID16EETnPN12hb_enable_ifIXsr15hb_is_source_ofIT_jEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tjSB_.exit.thread, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1013 ; 4 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 4 uses
  %i.k = icmp ugt i64 %i.j, 2147483647
  br i1 %i.k, label %.critedge.i.i.i.i, label %bb.c, !prof !48

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1014
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.i
  %i.p = icmp slt i64 %i.o, %i.j
  br i1 %i.p, label %.critedge.i.i.i.i, label %bb.d, !prof !48

.critedge.i.i.i.i:                                ; preds = %bb.c, %bb.b
  store i32 4, ptr %i.c, align 4, !tbaa !1012
  br label %_ZN2OT6Layout9GSUB_impl8LigatureINS0_10SmallTypesEE9serializeI10hb_array_tIKNS_11HBGlyphID16EETnPN12hb_enable_ifIXsr15hb_is_source_ofIT_jEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tjSB_.exit.thread

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.not.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i.i.not.i.i, label %_ZL9hb_memsetPvij.exit.i.i.i.i, label %bb.e, !prof !160

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.g, i8 0, i64 %i.j, i1 false)
  %.pre.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !1013
  br label %_ZL9hb_memsetPvij.exit.i.i.i.i

_ZL9hb_memsetPvij.exit.i.i.i.i:                   ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %.pre.i.i.i.i, %bb.e ], [ %i.g, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.j
  store ptr %i.r, ptr %i.f, align 8, !tbaa !1013
  %i.s = icmp eq ptr %i.q, null
  br i1 %i.s, label %_ZN2OT6Layout9GSUB_impl8LigatureINS0_10SmallTypesEE9serializeI10hb_array_tIKNS_11HBGlyphID16EETnPN12hb_enable_ifIXsr15hb_is_source_ofIT_jEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tjSB_.exit.thread, label %_ZN2OT6Layout9GSUB_impl8LigatureINS0_10SmallTypesEE9serializeI10hb_array_tIKNS_11HBGlyphID16EETnPN12hb_enable_ifIXsr15hb_is_source_ofIT_jEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tjSB_.exit, !prof !48

_ZN2OT6Layout9GSUB_impl8LigatureINS0_10SmallTypesEE9serializeI10hb_array_tIKNS_11HBGlyphID16EETnPN12hb_enable_ifIXsr15hb_is_source_ofIT_jEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tjSB_.exit: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i.i
  store i16 %i.b, ptr %i.a, align 1, !tbaa !61
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.u = tail call noundef zeroext i1 @_ZN2OT15HeadlessArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEE9serializeI10hb_array_tIKS1_ETnPN12hb_enable_ifIXsr15hb_is_source_ofIT_S1_EE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tSA_(ptr noundef nonnull align 1 dereferenceable(4) %i.t, ptr noundef nonnull %1, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  br i1 %i.u, label %bb.f, label %_ZN2OT6Layout9GSUB_impl8LigatureINS0_10SmallTypesEE9serializeI10hb_array_tIKNS_11HBGlyphID16EETnPN12hb_enable_ifIXsr15hb_is_source_ofIT_jEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tjSB_.exit.thread

bb.f:                                             ; preds = %_ZN2OT6Layout9GSUB_impl8LigatureINS0_10SmallTypesEE9serializeI10hb_array_tIKNS_11HBGlyphID16EETnPN12hb_enable_ifIXsr15hb_is_source_ofIT_jEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tjSB_.exit
  %i.v = tail call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext true) ; 2 uses
  %i.w = load i32, ptr %i.c, align 4, !tbaa !1012
  %i.x = icmp ne i32 %i.w, 0
  %i.y = icmp eq i32 %i.v, 0
  %or.cond.not.i = or i1 %i.y, %i.x
  br i1 %or.cond.not.i, label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout9GSUB_impl8LigatureINS3_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit, label %bb.g, !prof !160

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1054 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 20 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !2803 ; 2 uses
  %i.ad = add i32 %i.ac, 1                        ; 5 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.l, label %bb.h, !prof !48

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ag = tail call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i32 noundef %i.ad, i1 noundef zeroext false)
  br i1 %i.ag, label %bb.i, label %bb.l, !prof !383

bb.i:                                             ; preds = %bb.h
  %i.ah = load i32, ptr %i.ab, align 4, !tbaa !2803 ; 3 uses
  %i.ai = icmp ugt i32 %i.ad, %i.ah
  br i1 %i.ai, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.aj = sub nuw nsw i32 %i.ad, %i.ah
  %i.ak = mul i32 %i.aj, 12                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.k, !prof !48

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !2804
  %i.an = zext nneg i32 %i.ah to i64
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %i.an
  %i.ap = zext i32 %i.ak to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ao, i8 0, i64 %i.ap, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, i8 0, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !2803
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !2804
  %i.as = zext i32 %i.ac to i64
  %i.at = getelementptr inbounds nuw [12 x i8], ptr %i.ar, i64 %i.as
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i: ; preds = %bb.m, %bb.l
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.l ], [ %i.at, %bb.m ] ; 5 uses
  %i.au = load ptr, ptr %i.z, align 8, !tbaa !1054
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !2802
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.ay = load i32, ptr %i.c, align 4, !tbaa !1012
  %i.az = or i32 %i.ay, 1
  store i32 %i.az, ptr %i.c, align 4, !tbaa !1012
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.ba = load i32, ptr %.0.i.i, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store i32 %i.v, ptr %i.bb, align 4, !tbaa !2832
  %i.bc = and i32 %i.ba, -64
  %i.bd = or disjoint i32 %i.bc, 2
  store i32 %i.bd, ptr %.0.i.i, align 4
  %i.be = load ptr, ptr %i.z, align 8, !tbaa !1054
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !1055
  %i.bg = ptrtoint ptr %0 to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !2834
  store i32 2, ptr %.0.i.i, align 4
  br label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout9GSUB_impl8LigatureINS3_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit

_ZN2OT6Layout9GSUB_impl8LigatureINS0_10SmallTypesEE9serializeI10hb_array_tIKNS_11HBGlyphID16EETnPN12hb_enable_ifIXsr15hb_is_source_ofIT_jEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tjSB_.exit.thread: ; preds = %.critedge.i.i.i.i, %bb.a, %_ZL9hb_memsetPvij.exit.i.i.i.i, %_ZN2OT6Layout9GSUB_impl8LigatureINS0_10SmallTypesEE9serializeI10hb_array_tIKNS_11HBGlyphID16EETnPN12hb_enable_ifIXsr15hb_is_source_ofIT_jEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tjSB_.exit
  tail call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  br label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout9GSUB_impl8LigatureINS3_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit

_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout9GSUB_impl8LigatureINS3_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit: ; preds = %bb.o, %bb.f, %_ZN2OT6Layout9GSUB_impl8LigatureINS0_10SmallTypesEE9serializeI10hb_array_tIKNS_11HBGlyphID16EETnPN12hb_enable_ifIXsr15hb_is_source_ofIT_jEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tjSB_.exit.thread
  %.0.i11 = phi i1 [ false, %_ZN2OT6Layout9GSUB_impl8LigatureINS0_10SmallTypesEE9serializeI10hb_array_tIKNS_11HBGlyphID16EETnPN12hb_enable_ifIXsr15hb_is_source_ofIT_jEE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tjSB_.exit.thread ], [ true, %bb.f ], [ true, %bb.o ]
  ret i1 %.0.i11
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN2OT6Layout9GSUB_impl8LigatureINS2_10SmallTypesEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1012
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2793 ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !48

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1025
  store ptr %i.f, ptr %i.d, align 8, !tbaa !2793
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !2819
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !49

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.l = tail call noalias noundef dereferenceable_or_null(1792) ptr @malloc(i64 noundef 1792) #65 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !2796
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %bb.e, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, !prof !48

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br label %bb.f

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit: ; preds = %bb.d
  %i.m = call noundef ptr @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE4pushIJRS5_EEEPS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !2796
  %i.o = call noundef ptr @_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_t6threadEv(ptr noundef nonnull align 8 dereferenceable(1792) %i.n) ; 4 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !2793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1025
  store ptr %i.p, ptr %i.d, align 8, !tbaa !2793
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = load i32, ptr %i.b, align 4, !tbaa !1012
  %.not.i.i.not = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.not, label %bb.g, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.b, align 4, !tbaa !1012
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

bb.h:                                             ; preds = %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9
  %i.r = phi ptr [ %i.e, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9 ], [ %i.o, %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !tbaa !574
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !574
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1054
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.v, ptr %i.w, align 8, !tbaa !2805
  store ptr %i.r, ptr %i.u, align 8, !tbaa !1054
  br label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit: ; preds = %bb.h, %bb.f, %bb.g, %bb.a
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !1013
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT15HeadlessArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEE9serializeI10hb_array_tIKS1_ETnPN12hb_enable_ifIXsr15hb_is_source_ofIT_S1_EE5valueEvE4typeELPv0EEEbP22hb_serialize_context_tSA_(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.4.8.extract.trunc = trunc i64 %3 to i32  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1012
  %.not11.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not11.i.i.i, label %bb.b, label %select.unfold15.i, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1013 ; 4 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  %i.i = icmp ugt i64 %i.h, 2147483647
  br i1 %i.i, label %select.unfold15.i.sink.split, label %bb.c, !prof !48

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1014
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.g
  %i.n = icmp slt i64 %i.m, %i.h
  br i1 %i.n, label %select.unfold15.i.sink.split, label %bb.d, !prof !48

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i.i.not.i.i, label %_ZL9hb_memsetPvij.exit.i.i.i.i, label %bb.e, !prof !160

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.e, i8 0, i64 %i.h, i1 false)
  %.pre.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !1013
  br label %_ZL9hb_memsetPvij.exit.i.i.i.i

_ZL9hb_memsetPvij.exit.i.i.i.i:                   ; preds = %bb.e, %bb.d
  %i.o = phi ptr [ %.pre.i.i.i.i, %bb.e ], [ %i.e, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.h
  store ptr %i.p, ptr %i.d, align 8, !tbaa !1013
  %i.q = icmp eq ptr %i.o, null
  br i1 %i.q, label %select.unfold15.i, label %_ZN22hb_serialize_context_t10extend_minIN2OT15HeadlessArrayOfINS1_11HBGlyphID16ENS1_7NumTypeILb1EtLj2EEEEEEEPT_S8_.exit.i, !prof !48

_ZN22hb_serialize_context_t10extend_minIN2OT15HeadlessArrayOfINS1_11HBGlyphID16ENS1_7NumTypeILb1EtLj2EEEEEEEPT_S8_.exit.i: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i.i
  %i.r = add i32 %.sroa.4.8.extract.trunc, 1      ; 3 uses
  %i.s = trunc i32 %i.r to i16                    ; 2 uses
  %i.t = tail call i16 @llvm.bswap.i16(i16 %i.s)
  store i16 %i.t, ptr %0, align 1, !tbaa !61
  %.not.i.i.i = icmp ult i32 %i.r, 65536
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !1012 ; 2 uses
  br i1 %.not.i.i.i, label %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEEjEEbRT_OT0_20hb_serialize_error_t.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT15HeadlessArrayOfINS1_11HBGlyphID16ENS1_7NumTypeILb1EtLj2EEEEEEEPT_S8_.exit.i
  %i.u = or i32 %.pre.i, 16
  store i32 %i.u, ptr %i.a, align 4, !tbaa !1012
  br label %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEEjEEbRT_OT0_20hb_serialize_error_t.exit.i

_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEEjEEbRT_OT0_20hb_serialize_error_t.exit.i: ; preds = %bb.f, %_ZN22hb_serialize_context_t10extend_minIN2OT15HeadlessArrayOfINS1_11HBGlyphID16ENS1_7NumTypeILb1EtLj2EEEEEEEPT_S8_.exit.i
  %i.v = phi i32 [ %.pre.i, %_ZN22hb_serialize_context_t10extend_minIN2OT15HeadlessArrayOfINS1_11HBGlyphID16ENS1_7NumTypeILb1EtLj2EEEEEEEPT_S8_.exit.i ], [ 1, %bb.f ]
  %.not.i.i8.i = icmp eq i16 %i.s, 0
  %.mask.i = shl i32 %i.r, 1
  %i.w = and i32 %.mask.i, 131070
  %i.x = zext nneg i32 %i.w to i64
  %i.y = add nuw nsw i64 %i.x, 8589934590
  %i.z = and i64 %i.y, 8589934590
  %i.aa = add nuw nsw i64 %i.z, 2
  %i.ab = select i1 %.not.i.i8.i, i64 2, i64 %i.aa ; 2 uses
  %.not11.i.i = icmp eq i32 %i.v, 0
  br i1 %.not11.i.i, label %bb.g, label %select.unfold15.i, !prof !49

bb.g:                                             ; preds = %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEEjEEbRT_OT0_20hb_serialize_error_t.exit.i
  %i.ac = icmp samesign ugt i64 %i.ab, 2147483646
  br i1 %i.ac, label %select.unfold15.i.sink.split, label %bb.h, !prof !48

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !1013 ; 3 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 3 uses
  %i.ai = icmp ugt i64 %i.ah, 2147483647
  br i1 %i.ai, label %select.unfold15.i.sink.split, label %bb.i, !prof !48

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr %i.j, align 8, !tbaa !1014
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.ag
  %i.am = icmp slt i64 %i.al, %i.ah
  br i1 %i.am, label %select.unfold15.i.sink.split, label %bb.j, !prof !48

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ah
  store ptr %i.an, ptr %i.d, align 8, !tbaa !1013
  %i.ao = icmp eq ptr %i.ae, null
  br i1 %i.ao, label %select.unfold15.i, label %_ZN2OT15HeadlessArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEE9serializeEP22hb_serialize_context_tjb.exit.preheader, !prof !48

_ZN2OT15HeadlessArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEE9serializeEP22hb_serialize_context_tjb.exit.preheader: ; preds = %bb.j
  %.not = icmp eq i32 %.sroa.4.8.extract.trunc, 0
  br i1 %.not, label %select.unfold15.i, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph

_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph: ; preds = %_ZN2OT15HeadlessArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEE9serializeEP22hb_serialize_context_tjb.exit.preheader
  %wide.trip.count = and i64 %3, 4294967295
  %xtraiter = and i64 %3, 1
  %i.ap = icmp eq i64 %wide.trip.count, 1
  br i1 %i.ap, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.epil.preheader, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph.new

_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph.new: ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph
  %unroll_iter = and i64 %3, 4294967294
  br label %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit

_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit: ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph.new
  %indvars.iv = phi i64 [ 0, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph.new ], [ %indvars.iv.next.1, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit ] ; 3 uses
  %.sroa.4.015 = phi i32 [ %.sroa.4.8.extract.trunc, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph.new ], [ %.sroa.4.1.1, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit ] ; 3 uses
  %.sroa.010.014 = phi ptr [ %2, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph.new ], [ %.sroa.010.1.1, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit ] ; 2 uses
  %niter = phi i64 [ 0, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph.new ], [ %niter.next.1, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit ]
  %.not.i.i.not = icmp eq i32 %.sroa.4.015, 0     ; 2 uses
  %spec.select.i.i = select i1 %.not.i.i.not, ptr @_hb_NullPool, ptr %.sroa.010.014, !prof !48
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv
  %i.ar = load i16, ptr %spec.select.i.i, align 1
  store i16 %i.ar, ptr %i.aq, align 1
  %.sroa.010.1.idx = select i1 %.not.i.i.not, i64 0, i64 2, !prof !48
  %.sroa.010.1 = getelementptr inbounds nuw i8, ptr %.sroa.010.014, i64 %.sroa.010.1.idx ; 2 uses
  %.not.i.i.not.1 = icmp ult i32 %.sroa.4.015, 2  ; 2 uses
  %spec.select.i.i.1 = select i1 %.not.i.i.not.1, ptr @_hb_NullPool, ptr %.sroa.010.1, !prof !48
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.au = load i16, ptr %spec.select.i.i.1, align 1
  store i16 %i.au, ptr %i.at, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.sroa.010.1.idx.1 = select i1 %.not.i.i.not.1, i64 0, i64 2, !prof !48
  %.sroa.010.1.1 = getelementptr inbounds nuw i8, ptr %.sroa.010.1, i64 %.sroa.010.1.idx.1 ; 2 uses
  %.sroa.4.1.1 = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.4.015, i32 2) ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %select.unfold15.i.loopexit.unr-lcssa, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit, !llvm.loop !4161

select.unfold15.i.sink.split:                     ; preds = %bb.h, %bb.i, %bb.g, %bb.b, %bb.c
  %.sink = phi i32 [ 1, %bb.g ], [ 4, %bb.b ], [ 4, %bb.c ], [ 4, %bb.i ], [ 4, %bb.h ]
  store i32 %.sink, ptr %i.a, align 4, !tbaa !1012
  br label %select.unfold15.i

select.unfold15.i.loopexit.unr-lcssa:             ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %select.unfold15.i, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.epil.preheader

_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.epil.preheader: ; preds = %select.unfold15.i.loopexit.unr-lcssa, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph ], [ %indvars.iv.next.1, %select.unfold15.i.loopexit.unr-lcssa ]
  %.sroa.4.015.epil.init = phi i32 [ 1, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph ], [ %.sroa.4.1.1, %select.unfold15.i.loopexit.unr-lcssa ]
  %.sroa.010.014.epil.init = phi ptr [ %2, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.lr.ph ], [ %.sroa.010.1.1, %select.unfold15.i.loopexit.unr-lcssa ]
  %lcmp.mod21 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %.not.i.i.not.epil = icmp eq i32 %.sroa.4.015.epil.init, 0
  %spec.select.i.i.epil = select i1 %.not.i.i.not.epil, ptr @_hb_NullPool, ptr %.sroa.010.014.epil.init, !prof !48
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.epil.init
  %i.aw = load i16, ptr %spec.select.i.i.epil, align 1
  store i16 %i.aw, ptr %i.av, align 1
  br label %select.unfold15.i

select.unfold15.i:                                ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.epil.preheader, %select.unfold15.i.loopexit.unr-lcssa, %select.unfold15.i.sink.split, %_ZN2OT15HeadlessArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEE9serializeEP22hb_serialize_context_tjb.exit.preheader, %bb.j, %_ZL9hb_memsetPvij.exit.i.i.i.i, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEEjEEbRT_OT0_20hb_serialize_error_t.exit.i, %bb.a
  %.07 = phi i1 [ false, %_ZL9hb_memsetPvij.exit.i.i.i.i ], [ false, %bb.j ], [ false, %bb.a ], [ false, %select.unfold15.i.sink.split ], [ false, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEEjEEbRT_OT0_20hb_serialize_error_t.exit.i ], [ true, %_ZN2OT15HeadlessArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEE9serializeEP22hb_serialize_context_tjb.exit.preheader ], [ true, %select.unfold15.i.loopexit.unr-lcssa ], [ true, %_ZNR9hb_iter_tI10hb_array_tIKN2OT11HBGlyphID16EERS3_EppEv.exit.epil.preheader ]
  ret i1 %.07
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT6Layout6Common8Coverage9serializeI17hb_sorted_array_tIKNS_11HBGlyphID16EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_jEE5valuesrS9_18is_sorted_iteratorEvE4typeELPv0EEEbP22hb_serialize_context_tS9_(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.5.8.extract.trunc = trunc i64 %3 to i32  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1012
  %.not11.i.i = icmp eq i32 %i.b, 0
  br i1 %.not11.i.i, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !49
end_hunk_10
begin_hunk_11_@_ZN3CFF12path_procs_tI25cff2_path_procs_extents_tNS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_extents_param_tE9hvcurvetoERS4_RS5_:bb.a
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.cl
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit115

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit115: ; preds = %bb.w, %bb.x
  %.0.i.i114 = phi ptr [ @_hb_CrapPool, %bb.w ], [ %i.cm, %bb.x ]
  %i.cn = or disjoint i32 %.1141, 2               ; 2 uses
  %.not.i.i116 = icmp ult i32 %i.cn, %i.cd
  br i1 %.not.i.i116, label %bb.z, label %bb.y, !prof !49

bb.y:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit115
  store i8 1, ptr %i.a, align 8, !tbaa !2953
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit118

bb.z:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit115
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.co
  %.pre154 = load double, ptr %i.cp, align 8, !tbaa !325
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit118

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit118: ; preds = %bb.y, %bb.z
  %i.cq = phi double [ 0.000000e+00, %bb.y ], [ %.pre154, %bb.z ]
  %i.cr = load double, ptr %.0.i.i114, align 8, !tbaa !325
  %i.cs = load <2 x double>, ptr %3, align 16, !tbaa !325
  %i.ct = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.cu = insertelement <2 x double> %i.ct, double %i.cq, i64 1
  %i.cv = fadd <2 x double> %i.cs, %i.cu
  store <2 x double> %i.cv, ptr %3, align 16, !tbaa !325
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !2963
  %i.cw = or disjoint i32 %.1141, 3               ; 2 uses
  %.not.i.i119 = icmp ult i32 %i.cw, %i.cd
  br i1 %.not.i.i119, label %bb.ab, label %bb.aa, !prof !49

bb.aa:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit118
  store i8 1, ptr %i.a, align 8, !tbaa !2953
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit121

bb.ab:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit118
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.cx
  %.pre155 = load double, ptr %i.cy, align 8, !tbaa !325
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit121

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit121: ; preds = %bb.aa, %bb.ab
  %i.cz = phi double [ 0.000000e+00, %bb.aa ], [ %.pre155, %bb.ab ]
  %i.da = load double, ptr %i.g, align 8, !tbaa !325
  %i.db = fadd double %i.da, %i.cz
  store double %i.db, ptr %i.g, align 8, !tbaa !325
  call void @_ZN25cff2_path_procs_extents_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tES9_S9_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !2963
  %i.dc = or disjoint i32 %.1141, 4               ; 2 uses
  %i.dd = load i32, ptr %i.b, align 4, !tbaa !1554 ; 7 uses
  %.not.i.i122 = icmp ult i32 %i.dc, %i.dd
  br i1 %.not.i.i122, label %bb.ad, label %bb.ac, !prof !49

bb.ac:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit121
  store i8 1, ptr %i.a, align 8, !tbaa !2953
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit124

bb.ad:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit121
  %i.de = zext i32 %i.dc to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.de
  %.pre156 = load double, ptr %i.df, align 8, !tbaa !325
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit124

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit124: ; preds = %bb.ac, %bb.ad
  %i.dg = phi double [ 0.000000e+00, %bb.ac ], [ %.pre156, %bb.ad ]
  %i.dh = load double, ptr %i.h, align 8, !tbaa !325
  %i.di = fadd double %i.dh, %i.dg
  store double %i.di, ptr %i.h, align 8, !tbaa !325
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !2963
  %i.dj = or disjoint i32 %.1141, 5               ; 2 uses
  %.not.i.i125 = icmp ult i32 %i.dj, %i.dd
  br i1 %.not.i.i125, label %bb.af, label %bb.ae, !prof !49

bb.ae:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit124
  store i8 1, ptr %i.a, align 8, !tbaa !2953
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit127

bb.af:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit124
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.dk
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit127

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit127: ; preds = %bb.ae, %bb.af
  %.0.i.i126 = phi ptr [ @_hb_CrapPool, %bb.ae ], [ %i.dl, %bb.af ]
  %i.dm = or disjoint i32 %.1141, 6               ; 2 uses
  %.not.i.i128 = icmp ult i32 %i.dm, %i.dd
  br i1 %.not.i.i128, label %bb.ah, label %bb.ag, !prof !49

bb.ag:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit127
  store i8 1, ptr %i.a, align 8, !tbaa !2953
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit130

bb.ah:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit127
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.dn
  %.pre157 = load double, ptr %i.do, align 8, !tbaa !325
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit130

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit130: ; preds = %bb.ag, %bb.ah
  %i.dp = phi double [ 0.000000e+00, %bb.ag ], [ %.pre157, %bb.ah ]
  %i.dq = load double, ptr %.0.i.i126, align 8, !tbaa !325
  %i.dr = load <2 x double>, ptr %3, align 16, !tbaa !325
  %i.ds = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.dt = insertelement <2 x double> %i.ds, double %i.dp, i64 1
  %i.du = fadd <2 x double> %i.dr, %i.dt
  store <2 x double> %i.du, ptr %3, align 16, !tbaa !325
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !2963
  %i.dv = or disjoint i32 %.1141, 7               ; 2 uses
  %.not.i.i131 = icmp ult i32 %i.dv, %i.dd
  br i1 %.not.i.i131, label %bb.aj, label %bb.ai, !prof !49

bb.ai:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit130
  store i8 1, ptr %i.a, align 8, !tbaa !2953
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit133

bb.aj:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit130
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.dw
  %.pre158 = load double, ptr %i.dx, align 8, !tbaa !325
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit133

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit133: ; preds = %bb.ai, %bb.aj
  %i.dy = phi double [ 0.000000e+00, %bb.ai ], [ %.pre158, %bb.aj ]
  %i.dz = load double, ptr %4, align 8, !tbaa !325
  %i.ea = fadd double %i.dz, %i.dy
  store double %i.ea, ptr %4, align 8, !tbaa !325
  %i.eb = sub i32 %i.dd, %.1141
  %i.ec = icmp ugt i32 %i.eb, 15
  %i.ed = and i32 %i.dd, 1
  %.not72 = icmp eq i32 %i.ed, 0
  %or.cond = or i1 %i.ec, %.not72
  br i1 %or.cond, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit133
  %.not.i.i134 = icmp ult i32 %i.ce, %i.dd
  br i1 %.not.i.i134, label %bb.am, label %bb.al, !prof !49

bb.al:                                            ; preds = %bb.ak
  store i8 1, ptr %i.a, align 8, !tbaa !2953
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit136

bb.am:                                            ; preds = %bb.ak
  %i.ee = zext i32 %i.ce to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ee
  %.pre159 = load double, ptr %i.ef, align 8, !tbaa !325
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit136

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit136: ; preds = %bb.al, %bb.am
  %i.eg = phi double [ 0.000000e+00, %bb.al ], [ %.pre159, %bb.am ]
  %i.eh = load double, ptr %i.g, align 8, !tbaa !325
  %i.ei = fadd double %i.eh, %i.eg
  store double %i.ei, ptr %i.g, align 8, !tbaa !325
  br label %bb.an

bb.an:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit136, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit133
  call void @_ZN25cff2_path_procs_extents_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tES9_S9_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.ej = add i32 %i.ce, 8                        ; 2 uses
  %i.ek = load i32, ptr %i.b, align 4, !tbaa !1554 ; 2 uses
  %.not71 = icmp ugt i32 %i.ej, %i.ek
  br i1 %.not71, label %.loopexit, label %bb.t, !llvm.loop !5822

.loopexit:                                        ; preds = %bb.an, %.preheader, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #63
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1554
  %i.c = icmp eq i32 %i.b, 7
  br i1 %i.c, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit29, label %bb.b, !prof !49

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit29: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #63
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !2963
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load double, ptr %2, align 8, !tbaa !325
  %i.g = load double, ptr %i.e, align 8, !tbaa !325
  %i.h = fadd double %i.f, %i.g
  store double %i.h, ptr %2, align 8, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !2963
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load <2 x double>, ptr %i.i, align 8, !tbaa !325
  %i.k = load <2 x double>, ptr %3, align 16, !tbaa !325
  %i.l = fadd <2 x double> %i.k, %i.j
  store <2 x double> %i.l, ptr %3, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !2963
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre30 = load double, ptr %i.m, align 8, !tbaa !325
  %i.n = load double, ptr %4, align 8, !tbaa !325
  %i.o = fadd double %i.n, %.pre30
  store double %i.o, ptr %4, align 8, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !2963
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre31 = load double, ptr %i.p, align 8, !tbaa !325
  %i.q = load double, ptr %5, align 8, !tbaa !325
  %i.r = fadd double %i.q, %.pre31
  store double %i.r, ptr %5, align 8, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !2963
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre32 = load double, ptr %i.s, align 8, !tbaa !325
  %i.t = load double, ptr %6, align 8, !tbaa !325
  %i.u = fadd double %i.t, %.pre32
  store double %i.u, ptr %6, align 8, !tbaa !325
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.x = load i64, ptr %i.v, align 8, !tbaa !795
  store i64 %i.x, ptr %i.w, align 8, !tbaa !795
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !2963
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre33 = load double, ptr %i.y, align 8, !tbaa !325
  %i.z = load double, ptr %7, align 8, !tbaa !325
  %i.aa = fadd double %i.z, %.pre33
  store double %i.aa, ptr %7, align 8, !tbaa !325
  call void @_ZN25cff2_path_procs_extents_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tES9_S9_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @_ZN25cff2_path_procs_extents_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tES9_S9_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #63
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !308
  %i.ad = add i32 %i.ac, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !263
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1554
  %i.c = icmp eq i32 %i.b, 13
  br i1 %i.c, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit49, label %bb.b, !prof !49

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit49: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #63
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !2963
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !325
  %i.g = load <2 x double>, ptr %2, align 16, !tbaa !325
  %i.h = fadd <2 x double> %i.g, %i.f
  store <2 x double> %i.h, ptr %2, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !2963
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load <2 x double>, ptr %i.i, align 8, !tbaa !325
  %i.k = load <2 x double>, ptr %3, align 16, !tbaa !325
  %i.l = fadd <2 x double> %i.k, %i.j
  store <2 x double> %i.l, ptr %3, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !2963
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load <2 x double>, ptr %i.m, align 8, !tbaa !325
  %i.o = load <2 x double>, ptr %4, align 16, !tbaa !325
  %i.p = fadd <2 x double> %i.o, %i.n
  store <2 x double> %i.p, ptr %4, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !2963
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load <2 x double>, ptr %i.q, align 8, !tbaa !325
  %i.s = load <2 x double>, ptr %5, align 16, !tbaa !325
  %i.t = fadd <2 x double> %i.s, %i.r
  store <2 x double> %i.t, ptr %5, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !2963
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load <2 x double>, ptr %i.u, align 8, !tbaa !325
  %i.w = load <2 x double>, ptr %6, align 16, !tbaa !325
  %i.x = fadd <2 x double> %i.w, %i.v
  store <2 x double> %i.x, ptr %6, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !2963
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = load <2 x double>, ptr %i.y, align 8, !tbaa !325
  %i.aa = load <2 x double>, ptr %7, align 16, !tbaa !325
  %i.ab = fadd <2 x double> %i.aa, %i.z
  store <2 x double> %i.ab, ptr %7, align 16, !tbaa !325
  call void @_ZN25cff2_path_procs_extents_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tES9_S9_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @_ZN25cff2_path_procs_extents_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tES9_S9_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #63
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !308
  %i.ae = add i32 %i.ad, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !263
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1554
  %i.c = icmp eq i32 %i.b, 9
  br i1 %i.c, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit38, label %bb.b, !prof !49

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit38: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #63
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !2963
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !325
  %i.g = load <2 x double>, ptr %2, align 16, !tbaa !325
  %i.h = fadd <2 x double> %i.g, %i.f
  store <2 x double> %i.h, ptr %2, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !2963
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load <2 x double>, ptr %i.i, align 8, !tbaa !325
  %i.k = load <2 x double>, ptr %3, align 16, !tbaa !325
  %i.l = fadd <2 x double> %i.k, %i.j
  store <2 x double> %i.l, ptr %3, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !2963
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre40 = load double, ptr %i.m, align 8, !tbaa !325
  %i.n = load double, ptr %4, align 8, !tbaa !325
  %i.o = fadd double %i.n, %.pre40
  store double %i.o, ptr %4, align 8, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !2963
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre41 = load double, ptr %i.p, align 8, !tbaa !325
  %i.q = load double, ptr %5, align 8, !tbaa !325
  %i.r = fadd double %i.q, %.pre41
  store double %i.r, ptr %5, align 8, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !2963
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load <2 x double>, ptr %i.s, align 8, !tbaa !325
  %i.u = load <2 x double>, ptr %6, align 16, !tbaa !325
  %i.v = fadd <2 x double> %i.u, %i.t
  store <2 x double> %i.v, ptr %6, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !2963
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre43 = load double, ptr %i.w, align 8, !tbaa !325
  %i.x = load double, ptr %7, align 8, !tbaa !325
  %i.y = fadd double %i.x, %.pre43
  store double %i.y, ptr %7, align 8, !tbaa !325
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4456
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !795
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !795
  call void @_ZN25cff2_path_procs_extents_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tES9_S9_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @_ZN25cff2_path_procs_extents_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tES9_S9_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #63
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !308
  %i.ae = add i32 %i.ad, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !263
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1554
  %i.c = icmp eq i32 %i.b, 11
  br i1 %i.c, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit50, label %bb.c, !prof !49

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit50: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load double, ptr %i.e, align 8, !tbaa !325
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #63
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !2963
  %i.k = load <2 x double>, ptr %i.d, align 8, !tbaa !325 ; 2 uses
  %i.l = load <2 x double>, ptr %2, align 16, !tbaa !325
  %i.m = fadd <2 x double> %i.l, %i.k
  store <2 x double> %i.m, ptr %2, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !2963
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load <2 x double>, ptr %i.n, align 8, !tbaa !325
  %i.p = load <2 x double>, ptr %3, align 16, !tbaa !325
  %i.q = fadd <2 x double> %i.p, %i.o
  store <2 x double> %i.q, ptr %3, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !2963
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load <2 x double>, ptr %i.r, align 8, !tbaa !325
  %i.t = load <2 x double>, ptr %4, align 16, !tbaa !325
  %i.u = fadd <2 x double> %i.t, %i.s
  store <2 x double> %i.u, ptr %4, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !2963
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load <2 x double>, ptr %i.v, align 8, !tbaa !325
  %i.x = load <2 x double>, ptr %5, align 16, !tbaa !325
  %i.y = fadd <2 x double> %i.x, %i.w
  store <2 x double> %i.y, ptr %5, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !2963
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aa = load <2 x double>, ptr %i.z, align 8, !tbaa !325
  %i.ab = load <2 x double>, ptr %6, align 16, !tbaa !325
  %i.ac = fadd <2 x double> %i.ab, %i.aa
  store <2 x double> %i.ac, ptr %6, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !2963
  %i.ad = load <2 x double>, ptr %i.f, align 8, !tbaa !325
  %i.ae = load <2 x double>, ptr %i.g, align 8, !tbaa !325
  %i.af = load <2 x double>, ptr %i.h, align 8, !tbaa !325
  %i.ag = load <2 x double>, ptr %i.i, align 8, !tbaa !325
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
  %.pre80 = load double, ptr %i.ar, align 8, !tbaa !325
  %i.as = load double, ptr %7, align 8, !tbaa !325
  %i.at = fadd double %i.as, %.pre80
  store double %i.at, ptr %7, align 8, !tbaa !325
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4456
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !795
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !795
  br label %bb.b

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit62: ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit50
  %i.ax = load i64, ptr %i.j, align 8, !tbaa !795
  store i64 %i.ax, ptr %7, align 8, !tbaa !795
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre79 = load double, ptr %i.ay, align 8, !tbaa !325
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !325
  %i.bb = fadd double %i.ba, %.pre79
  store double %i.bb, ptr %i.az, align 8, !tbaa !325
  br label %bb.b

bb.b:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit62, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit59
  call void @_ZN25cff2_path_procs_extents_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tES9_S9_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @_ZN25cff2_path_procs_extents_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tES9_S9_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #63
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !308
  %i.be = add i32 %i.bd, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !263
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN25cff2_path_procs_extents_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tES9_S9_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !323, !range !220, !noundef !74
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %._ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit_crit_edge, label %bb.b

._ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !325
  br label %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %1, align 8, !tbaa !323
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !325 ; 2 uses
  %i.f = load double, ptr %i.c, align 8           ; 4 uses
  %i.g = fcmp ogt double %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store double %i.f, ptr %i.d, align 8, !tbaa !795
  %.pre.i = load double, ptr %i.c, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi double [ %i.f, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %i.i = phi double [ %.pre.i, %bb.c ], [ %i.f, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !325
  %i.l = fcmp ogt double %i.i, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store double %i.i, ptr %i.j, align 8, !tbaa !795
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !325
  %i.p = load double, ptr %i.m, align 8           ; 3 uses
  %i.q = fcmp ogt double %i.o, %i.p
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store double %i.p, ptr %i.n, align 8, !tbaa !795
  %.pre9.i = load double, ptr %i.m, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = phi double [ %.pre9.i, %bb.g ], [ %i.p, %bb.f ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !325
  %i.u = fcmp ogt double %i.r, %i.t
  br i1 %i.u, label %bb.i, label %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit

bb.i:                                             ; preds = %bb.h
  store double %i.r, ptr %i.s, align 8, !tbaa !795
  br label %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit

_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit: ; preds = %._ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit_crit_edge, %bb.i, %bb.h
  %i.v = phi double [ %.pre, %._ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit_crit_edge ], [ %i.h, %bb.i ], [ %i.h, %bb.h ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.x = load double, ptr %2, align 8             ; 4 uses
  %i.y = fcmp ogt double %i.v, %i.x
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit
  store double %i.x, ptr %i.w, align 8, !tbaa !795
  %.pre.i13 = load double, ptr %2, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit
  %i.z = phi double [ %i.x, %bb.j ], [ %i.v, %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit ]
  %i.aa = phi double [ %.pre.i13, %bb.j ], [ %i.x, %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !325 ; 2 uses
  %i.ad = fcmp ogt double %i.aa, %i.ac
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store double %i.aa, ptr %i.ab, align 8, !tbaa !795
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ae = phi double [ %i.aa, %bb.l ], [ %i.ac, %bb.k ]
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !325 ; 2 uses
  %i.ai = load double, ptr %i.af, align 8         ; 4 uses
  %i.aj = fcmp ogt double %i.ah, %i.ai
  br i1 %i.aj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store double %i.ai, ptr %i.ag, align 8, !tbaa !795
  %.pre9.i12 = load double, ptr %i.af, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ak = phi double [ %i.ai, %bb.n ], [ %i.ah, %bb.m ]
  %i.al = phi double [ %.pre9.i12, %bb.n ], [ %i.ai, %bb.m ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !325 ; 2 uses
  %i.ao = fcmp ogt double %i.al, %i.an
  br i1 %i.ao, label %bb.p, label %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit14

bb.p:                                             ; preds = %bb.o
  store double %i.al, ptr %i.am, align 8, !tbaa !795
  br label %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit14

_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit14: ; preds = %bb.o, %bb.p
  %i.ap = phi double [ %i.an, %bb.o ], [ %i.al, %bb.p ]
  %i.aq = load double, ptr %3, align 8            ; 3 uses
  %i.ar = fcmp ogt double %i.z, %i.aq
  br i1 %i.ar, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit14
  store double %i.aq, ptr %i.w, align 8, !tbaa !795
  %.pre.i16 = load double, ptr %3, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit14
  %i.as = phi double [ %.pre.i16, %bb.q ], [ %i.aq, %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit14 ] ; 2 uses
  %i.at = fcmp ogt double %i.as, %i.ae
  br i1 %i.at, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store double %i.as, ptr %i.ab, align 8, !tbaa !795
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.av = load double, ptr %i.au, align 8         ; 3 uses
  %i.aw = fcmp ogt double %i.ak, %i.av
  br i1 %i.aw, label %bb.u, label %bb.v

end_hunk_11
begin_hunk_12_@_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE13process_blendERNS_20cff2_cs_interp_env_tIS3_EERS2_:bb.a
  %indvars.iv.next.i.i.us.2 = or disjoint i64 %indvars.iv.i.i.us, 3 ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.next.i.i.us.2
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !94
  %i.gd = fpext float %i.gc to double
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.next.i.i.us.2
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !325
  %i.gg = tail call double @llvm.fmuladd.f64(double %i.gd, double %i.gf, double %i.ga) ; 3 uses
  %indvars.iv.next.i.i.us.3 = add nuw nsw i64 %indvars.iv.i.i.us, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.loopexit.unr-lcssa, label %bb.f, !llvm.loop !5807

_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod104.not = icmp eq i64 %xtraiter103, 0
  br i1 %lcmp.mod104.not, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.loopexit.unr-lcssa, %.lr.ph.i.i.us
  %indvars.iv.i.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us.3, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.loopexit.unr-lcssa ]
  %.079.i.i.us.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i.us ], [ %i.gg, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.loopexit.unr-lcssa ]
  %lcmp.mod106 = icmp ne i64 %xtraiter103, 0
  tail call void @llvm.assume(i1 %lcmp.mod106)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv.i.i.us.epil = phi i64 [ %indvars.iv.i.i.us.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.us.epil, %bb.g ] ; 3 uses
  %.079.i.i.us.epil = phi double [ %.079.i.i.us.epil.init, %.epil.preheader ], [ %i.gm, %bb.g ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.i.i.us.epil
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !94
  %i.gj = fpext float %i.gi to double
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.i.i.us.epil
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !325
  %i.gm = tail call double @llvm.fmuladd.f64(double %i.gj, double %i.gl, double %.079.i.i.us.epil) ; 2 uses
  %indvars.iv.next.i.i.us.epil = add nuw nsw i64 %indvars.iv.i.i.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter103
  br i1 %epil.iter.cmp.not, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us, label %bb.g, !llvm.loop !5835

_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us: ; preds = %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.loopexit.unr-lcssa, %bb.g, %.lr.ph.split.us.split.split
  %.1.i.i.us = phi double [ 0.000000e+00, %.lr.ph.split.us.split.split ], [ %i.gg, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.loopexit.unr-lcssa ], [ %i.gm, %bb.g ]
  %i.gn = fadd double %i.ez, %.1.i.i.us
  store double %i.gn, ptr %i.ey, align 8, !tbaa !325
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond47.not = icmp eq i64 %indvars.iv.next44, %wide.trip.count51
  br i1 %exitcond47.not, label %._crit_edge, label %.lr.ph.split.us.split.split, !llvm.loop !5836

._crit_edge:                                      ; preds = %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.prol.loopexit, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.prol.loopexit, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.prol.loopexit, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us, %middle.block, %middle.block80, %middle.block93, %bb.e
  %i.go = mul i32 %.0.i, %i.b                     ; 2 uses
  %.not.i = icmp ult i32 %i.j, %i.go
  br i1 %.not.i, label %bb.i, label %bb.h, !prof !48

bb.h:                                             ; preds = %._crit_edge
  %i.gp = sub nuw i32 %i.j, %i.go
  store i32 %i.gp, ptr %i.d, align 4, !tbaa !1554
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEj.exit

bb.i:                                             ; preds = %._crit_edge
  store i8 1, ptr %i.c, align 8, !tbaa !2953
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEj.exit

_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit: ; preds = %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader100.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader100.new ], [ %indvars.iv.next.3, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit ] ; 5 uses
  %i.gq = trunc nuw i64 %indvars.iv to i32
  %i.gr = add i32 %i.z, %i.gq
  %i.gs = zext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.gs ; 2 uses
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !325
  %i.gv = fadd double %i.gu, 0.000000e+00
  store double %i.gv, ptr %i.gt, align 8, !tbaa !325
  %i.gw = trunc i64 %indvars.iv to i32
  %.reass = add i32 %i.gw, %invariant.op
  %i.gx = zext i32 %.reass to i64
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.gx ; 2 uses
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !325
  %i.ha = fadd double %i.gz, 0.000000e+00
  store double %i.ha, ptr %i.gy, align 8, !tbaa !325
  %i.hb = trunc i64 %indvars.iv to i32
  %.reass116 = add i32 %i.hb, %invariant.op115
  %i.hc = zext i32 %.reass116 to i64
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.hc ; 2 uses
  %i.he = load double, ptr %i.hd, align 8, !tbaa !325
  %i.hf = fadd double %i.he, 0.000000e+00
  store double %i.hf, ptr %i.hd, align 8, !tbaa !325
  %i.hg = trunc i64 %indvars.iv to i32
  %.reass118 = add i32 %i.hg, %invariant.op117
  %i.hh = zext i32 %.reass118 to i64
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.hh ; 2 uses
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !325
  %i.hk = fadd double %i.hj, 0.000000e+00
  store double %i.hk, ptr %i.hi, align 8, !tbaa !325
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit, !llvm.loop !5837

_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEj.exit: ; preds = %bb.i, %bb.h, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE7rmovetoERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  %i.b = load <2 x double>, ptr %i.a, align 8, !tbaa !795
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1554 ; 3 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit.thread, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit, !prof !48

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = add i32 %i.d, -1                         ; 3 uses
  store i32 %i.f, ptr %i.c, align 4, !tbaa !1554
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g ; 2 uses
  %.not.i.i7 = icmp eq i32 %i.f, 0
  br i1 %.not.i.i7, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit.thread, label %bb.b, !prof !124

bb.b:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = add i32 %i.d, -2                         ; 2 uses
  store i32 %i.j, ptr %i.c, align 4, !tbaa !1554
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.k
  %.pre = load double, ptr %i.l, align 8, !tbaa !325
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit9

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit.thread: ; preds = %bb.a, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit
  %.0.i.i21 = phi ptr [ %i.h, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit ], [ @_hb_CrapPool, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.m, align 8, !tbaa !2953
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit9

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit9: ; preds = %bb.b, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit.thread
  %.0.i.i20 = phi ptr [ %i.h, %bb.b ], [ %.0.i.i21, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit.thread ]
  %i.n = phi double [ %.pre, %bb.b ], [ 0.000000e+00, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit.thread ]
  %i.o = load double, ptr %.0.i.i20, align 8, !tbaa !325
  %i.p = load ptr, ptr %1, align 8, !tbaa !302    ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !304
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.t = load <2 x float>, ptr %i.s, align 8, !tbaa !94
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !175  ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !178  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 4 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !197
  %.not.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i, label %_ZN22cff2_path_procs_path_t6movetoERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit, label %bb.c, !prof !49

bb.c:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit9
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.aa = load float, ptr %i.z, align 4, !tbaa !198 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !199
  %i.ad = fcmp une float %i.aa, %i.ac
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.pre.i.i = load float, ptr %.phi.trans.insert.i.i, align 8, !tbaa !200 ; 2 uses
  br i1 %i.ad, label %._crit_edge.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.af = load float, ptr %i.ae, align 8, !tbaa !820
  %i.ag = fcmp une float %.pre.i.i, %i.af
  br i1 %i.ag, label %._crit_edge.i.i, label %bb.f

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !201
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !204 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !205
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i: ; preds = %bb.e, %._crit_edge.i.i
  %i.an = phi ptr [ %i.am, %bb.e ], [ null, %._crit_edge.i.i ]
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef %i.w, ptr noundef nonnull align 4 dereferenceable(48) %i.x, float noundef %i.aa, float noundef %.pre.i.i, ptr noundef %i.an) #63, !inline_history !5838
  br label %bb.f

bb.f:                                             ; preds = %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i, %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !208
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !204 ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i3.i.i, label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !209
  br label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i.i

_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.au = phi ptr [ %i.at, %bb.g ], [ null, %bb.f ]
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef %i.w, ptr noundef nonnull align 4 dereferenceable(48) %i.x, ptr noundef %i.au) #63, !inline_history !5839
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.x, i8 0, i64 12, i1 false)
  br label %_ZN22cff2_path_procs_path_t6movetoERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit

_ZN22cff2_path_procs_path_t6movetoERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit: ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit9, %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i.i
  %i.av = insertelement <2 x double> poison, double %i.n, i64 0
  %i.aw = insertelement <2 x double> %i.av, double %i.o, i64 1
  %i.ax = fadd <2 x double> %i.b, %i.aw           ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.az = fptrunc <2 x double> %i.ax to <2 x float>
  %i.ba = fmul <2 x float> %i.t, %i.az
  store <2 x float> %i.ba, ptr %i.ay, align 4, !tbaa !94
  store <2 x double> %i.ax, ptr %i.a, align 8, !tbaa !795
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE7hmovetoERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  %.sroa.0.0.copyload = load double, ptr %i.a, align 8, !tbaa !795
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 2 uses
  %.sroa.7.0.copyload = load double, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !795 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1554 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = add i32 %i.c, -1                         ; 2 uses
  store i32 %i.e, ptr %i.b, align 4, !tbaa !1554
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %.pre = load double, ptr %i.g, align 8, !tbaa !325
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.h, align 8, !tbaa !2953
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit: ; preds = %bb.b, %bb.c
  %i.i = phi double [ %.pre, %bb.b ], [ 0.000000e+00, %bb.c ]
  %i.j = load ptr, ptr %1, align 8, !tbaa !302    ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !304
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.n = load <2 x float>, ptr %i.m, align 8, !tbaa !94
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !175  ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !178  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 4 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !197
  %.not.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i, label %_ZN22cff2_path_procs_path_t6movetoERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit, label %bb.d, !prof !49

bb.d:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.u = load float, ptr %i.t, align 4, !tbaa !198 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.w = load float, ptr %i.v, align 4, !tbaa !199
  %i.x = fcmp une float %i.u, %i.w
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.pre.i.i = load float, ptr %.phi.trans.insert.i.i, align 8, !tbaa !200 ; 2 uses
  br i1 %i.x, label %._crit_edge.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.z = load float, ptr %i.y, align 8, !tbaa !820
  %i.aa = fcmp une float %.pre.i.i, %i.z
  br i1 %i.aa, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !201
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !204 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !205
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i: ; preds = %bb.f, %._crit_edge.i.i
  %i.ah = phi ptr [ %i.ag, %bb.f ], [ null, %._crit_edge.i.i ]
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef %i.q, ptr noundef nonnull align 4 dereferenceable(48) %i.r, float noundef %i.u, float noundef %.pre.i.i, ptr noundef %i.ah) #63, !inline_history !5838
  br label %bb.g

bb.g:                                             ; preds = %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !208
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !204 ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i3.i.i, label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !209
  br label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i.i

_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.ao = phi ptr [ %i.an, %bb.h ], [ null, %bb.g ]
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef %i.q, ptr noundef nonnull align 4 dereferenceable(48) %i.r, ptr noundef %i.ao) #63, !inline_history !5839
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.r, i8 0, i64 12, i1 false)
  br label %_ZN22cff2_path_procs_path_t6movetoERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit

_ZN22cff2_path_procs_path_t6movetoERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit: ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit, %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i.i
  %i.ap = fadd double %.sroa.0.0.copyload, %i.i   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.ar = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %.sroa.7.0.copyload, i64 1
  %i.at = fptrunc <2 x double> %i.as to <2 x float>
  %i.au = fmul <2 x float> %i.n, %i.at
  store <2 x float> %i.au, ptr %i.aq, align 4, !tbaa !94
  store double %i.ap, ptr %i.a, align 8, !tbaa !795
  store double %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !795
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE7vmovetoERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  %.sroa.0.0.copyload = load double, ptr %i.a, align 8, !tbaa !795 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 2 uses
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !795
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1554 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = add i32 %i.c, -1                         ; 2 uses
  store i32 %i.e, ptr %i.b, align 4, !tbaa !1554
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %.pre = load double, ptr %i.g, align 8, !tbaa !325
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.h, align 8, !tbaa !2953
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit: ; preds = %bb.b, %bb.c
  %i.i = phi double [ %.pre, %bb.b ], [ 0.000000e+00, %bb.c ]
  %i.j = load ptr, ptr %1, align 8, !tbaa !302    ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !304
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.n = load <2 x float>, ptr %i.m, align 8, !tbaa !94
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !175  ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !178  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 4 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !197
  %.not.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i, label %_ZN22cff2_path_procs_path_t6movetoERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit, label %bb.d, !prof !49

bb.d:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.u = load float, ptr %i.t, align 4, !tbaa !198 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.w = load float, ptr %i.v, align 4, !tbaa !199
  %i.x = fcmp une float %i.u, %i.w
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.pre.i.i = load float, ptr %.phi.trans.insert.i.i, align 8, !tbaa !200 ; 2 uses
  br i1 %i.x, label %._crit_edge.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.z = load float, ptr %i.y, align 8, !tbaa !820
  %i.aa = fcmp une float %.pre.i.i, %i.z
  br i1 %i.aa, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !201
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !204 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !205
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i: ; preds = %bb.f, %._crit_edge.i.i
  %i.ah = phi ptr [ %i.ag, %bb.f ], [ null, %._crit_edge.i.i ]
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef %i.q, ptr noundef nonnull align 4 dereferenceable(48) %i.r, float noundef %i.u, float noundef %.pre.i.i, ptr noundef %i.ah) #63, !inline_history !5838
  br label %bb.g

bb.g:                                             ; preds = %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i.i, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !208
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !204 ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i3.i.i, label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !209
  br label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i.i

_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.ao = phi ptr [ %i.an, %bb.h ], [ null, %bb.g ]
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef %i.q, ptr noundef nonnull align 4 dereferenceable(48) %i.r, ptr noundef %i.ao) #63, !inline_history !5839
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.r, i8 0, i64 12, i1 false)
  br label %_ZN22cff2_path_procs_path_t6movetoERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit

_ZN22cff2_path_procs_path_t6movetoERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit: ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE7pop_argEv.exit, %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i.i.i
  %i.ap = fadd double %.sroa.5.0.copyload, %i.i   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.ar = insertelement <2 x double> poison, double %.sroa.0.0.copyload, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %i.ap, i64 1
  %i.at = fptrunc <2 x double> %i.as to <2 x float>
  %i.au = fmul <2 x float> %i.n, %i.at
  store <2 x float> %i.au, ptr %i.aq, align 4, !tbaa !94
  store double %.sroa.0.0.copyload, ptr %i.a, align 8, !tbaa !795
  store double %i.ap, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !795
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE7rlinetoERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1554 ; 2 uses
  %.not18 = icmp ult i32 %i.c, 2
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load <2 x double>, ptr %i.d, align 8, !tbaa !795
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit
  %i.h = phi i32 [ %i.c, %.lr.ph ], [ %i.aq, %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit ] ; 2 uses
  %i.i = phi i32 [ 2, %.lr.ph ], [ %i.ap, %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit ] ; 2 uses
  %.019 = phi i32 [ 0, %.lr.ph ], [ %i.i, %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit ] ; 3 uses
  %i.j = phi <2 x double> [ %i.g, %.lr.ph ], [ %i.t, %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit ]
  %.not.i.i = icmp ult i32 %.019, %i.h
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !49

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 8, !tbaa !2953
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit

bb.d:                                             ; preds = %bb.b
  %i.k = zext i32 %.019 to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.k
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.c ], [ %i.l, %bb.d ]
  %i.m = or disjoint i32 %.019, 1                 ; 2 uses
  %.not.i.i10 = icmp ult i32 %i.m, %i.h
  br i1 %.not.i.i10, label %bb.f, label %bb.e, !prof !49

bb.e:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit
  store i8 1, ptr %i.a, align 8, !tbaa !2953
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit12

bb.f:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.n
  %.pre = load double, ptr %i.o, align 8, !tbaa !325
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit12

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit12: ; preds = %bb.e, %bb.f
  %i.p = phi double [ 0.000000e+00, %bb.e ], [ %.pre, %bb.f ]
  %i.q = load double, ptr %.0.i.i, align 8, !tbaa !325
  %i.r = insertelement <2 x double> poison, double %i.q, i64 0
  %i.s = insertelement <2 x double> %i.r, double %i.p, i64 1
  %i.t = fadd <2 x double> %i.j, %i.s             ; 3 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !302    ; 4 uses
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !304
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.x = load <2 x float>, ptr %i.w, align 8, !tbaa !94
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !175  ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !178 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !197
  %.not.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %_ZN17hb_draw_session_t7line_toEff.exit.i.i, !prof !48

bb.g:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit12
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.y, ptr noundef %i.aa, ptr noundef nonnull align 4 dereferenceable(48) %i.ab)
  br label %_ZN17hb_draw_session_t7line_toEff.exit.i.i

_ZN17hb_draw_session_t7line_toEff.exit.i.i:       ; preds = %bb.g, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !201
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !204 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN17hb_draw_session_t7line_toEff.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !205
  br label %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit

_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit: ; preds = %_ZN17hb_draw_session_t7line_toEff.exit.i.i, %bb.h
  %i.aj = phi ptr [ %i.ai, %bb.h ], [ null, %_ZN17hb_draw_session_t7line_toEff.exit.i.i ]
  %i.ak = fptrunc <2 x double> %i.t to <2 x float>
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %i.am = fmul <2 x float> %i.x, %i.ak            ; 3 uses
  %i.an = extractelement <2 x float> %i.am, i64 0
  %i.ao = extractelement <2 x float> %i.am, i64 1
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(72) %i.y, ptr noundef %i.aa, ptr noundef nonnull align 4 dereferenceable(48) %i.ab, float noundef %i.an, float noundef %i.ao, ptr noundef %i.aj) #63, !inline_history !5840
  store <2 x float> %i.am, ptr %i.al, align 4, !tbaa !94
  store <2 x double> %i.t, ptr %i.d, align 8, !tbaa !795
  %i.ap = add i32 %i.i, 2                         ; 2 uses
  %i.aq = load i32, ptr %i.b, align 4, !tbaa !1554 ; 2 uses
  %.not = icmp ugt i32 %i.ap, %i.aq
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !5841
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE7hlinetoERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1554 ; 3 uses
  %.not53 = icmp ult i32 %i.c, 2
  br i1 %.not53, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 3 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.pre = load double, ptr %i.d, align 8, !tbaa !795
  %.sroa.15.0.copyload.pre = load double, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !795
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit25
  %i.g = phi i32 [ %i.c, %.lr.ph ], [ %i.bm, %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit25 ]
  %.sroa.15.0.copyload = phi double [ %.sroa.15.0.copyload.pre, %.lr.ph ], [ %i.ao, %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit25 ] ; 3 uses
  %.sroa.0.0.copyload = phi double [ %.sroa.0.0.copyload.pre, %.lr.ph ], [ %i.l, %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit25 ]
  %i.h = phi i32 [ 2, %.lr.ph ], [ %i.bl, %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit25 ] ; 3 uses
  %.054 = phi i32 [ 0, %.lr.ph ], [ %i.h, %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit25 ] ; 3 uses
  %.not.i.i = icmp ult i32 %.054, %i.g
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !49

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 8, !tbaa !2953
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit

bb.d:                                             ; preds = %bb.b
  %i.i = zext i32 %.054 to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.i
  %.pre = load double, ptr %i.j, align 8, !tbaa !325
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit: ; preds = %bb.c, %bb.d
  %i.k = phi double [ 0.000000e+00, %bb.c ], [ %.pre, %bb.d ]
  %i.l = fadd double %.sroa.0.0.copyload, %i.k    ; 4 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !302    ; 4 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !304
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.p = load <2 x float>, ptr %i.o, align 8, !tbaa !94
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !175  ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !178  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !197
  %.not.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN17hb_draw_session_t7line_toEff.exit.i.i, !prof !48

bb.e:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef %i.s, ptr noundef nonnull align 4 dereferenceable(48) %i.t)
  br label %_ZN17hb_draw_session_t7line_toEff.exit.i.i

_ZN17hb_draw_session_t7line_toEff.exit.i.i:       ; preds = %bb.e, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !201
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !204  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN17hb_draw_session_t7line_toEff.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !205
  br label %_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit

_ZN22cff2_path_procs_path_t4lineERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tE.exit: ; preds = %_ZN17hb_draw_session_t7line_toEff.exit.i.i, %bb.f
  %i.ab = phi ptr [ %i.aa, %bb.f ], [ null, %_ZN17hb_draw_session_t7line_toEff.exit.i.i ]
  %i.ac = insertelement <2 x double> poison, double %i.l, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %.sroa.15.0.copyload, i64 1
  %i.ae = fptrunc <2 x double> %i.ad to <2 x float> ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.ag = fmul <2 x float> %i.p, %i.ae            ; 3 uses
  %i.ah = extractelement <2 x float> %i.ag, i64 0
  %i.ai = extractelement <2 x float> %i.ag, i64 1
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef %i.s, ptr noundef nonnull align 4 dereferenceable(48) %i.t, float noundef %i.ah, float noundef %i.ai, ptr noundef %i.ab) #63, !inline_history !5840
end_hunk_12
begin_hunk_13_@_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE9hvcurvetoERS4_RS5_:bb.a
  %i.gz = fmul float %i.gh, %i.gy                 ; 3 uses
  %i.ha = fptrunc double %i.fy to float
  %i.hb = fmul float %i.gj, %i.ha
  %i.hc = fptrunc double %.sroa.11.0.copyload to float
  %i.hd = fmul float %i.gj, %i.hc
  %i.he = fptrunc double %i.fo to float
  %i.hf = fmul float %i.gh, %i.he
  tail call void %i.gq(ptr noundef nonnull align 8 dereferenceable(72) %i.gk, ptr noundef %i.gm, ptr noundef nonnull align 4 dereferenceable(48) %i.gn, float noundef %i.hf, float noundef %i.hd, float noundef %i.gz, float noundef %i.hb, float noundef %i.gz, float noundef %i.gx, ptr noundef %i.gv) #63, !inline_history !5844
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ge, i64 28
  store float %i.gz, ptr %i.hg, align 4, !tbaa !199
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  store float %i.gx, ptr %i.hh, align 8, !tbaa !820
  store double %i.fx, ptr %i.e, align 8, !tbaa !795
  store double %i.gd, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !795
  %i.hi = or disjoint i32 %.1254, 4               ; 2 uses
  %i.hj = load i32, ptr %i.b, align 4, !tbaa !1554 ; 7 uses
  %.not.i.i134 = icmp ult i32 %i.hi, %i.hj
  br i1 %.not.i.i134, label %bb.al, label %bb.ak, !prof !49

bb.ak:                                            ; preds = %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit133
  store i8 1, ptr %i.a, align 8, !tbaa !2953
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit136

bb.al:                                            ; preds = %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit133
  %i.hk = zext i32 %i.hi to i64
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.hk
  %.pre276 = load double, ptr %i.hl, align 8, !tbaa !325
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit136

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit136: ; preds = %bb.ak, %bb.al
  %i.hm = phi double [ 0.000000e+00, %bb.ak ], [ %.pre276, %bb.al ]
  %i.hn = fadd double %i.gd, %i.hm                ; 2 uses
  %i.ho = or disjoint i32 %.1254, 5               ; 2 uses
  %.not.i.i137 = icmp ult i32 %i.ho, %i.hj
  br i1 %.not.i.i137, label %bb.an, label %bb.am, !prof !49

bb.am:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit136
  store i8 1, ptr %i.a, align 8, !tbaa !2953
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit139

bb.an:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit136
  %i.hp = zext i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.hp
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit139

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit139: ; preds = %bb.am, %bb.an
  %.0.i.i138 = phi ptr [ @_hb_CrapPool, %bb.am ], [ %i.hq, %bb.an ]
  %i.hr = or disjoint i32 %.1254, 6               ; 2 uses
  %.not.i.i140 = icmp ult i32 %i.hr, %i.hj
  br i1 %.not.i.i140, label %bb.ap, label %bb.ao, !prof !49

bb.ao:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit139
  store i8 1, ptr %i.a, align 8, !tbaa !2953
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit142

bb.ap:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit139
  %i.hs = zext i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.hs
  %.pre277 = load double, ptr %i.ht, align 8, !tbaa !325
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit142

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit142: ; preds = %bb.ao, %bb.ap
  %i.hu = phi double [ 0.000000e+00, %bb.ao ], [ %.pre277, %bb.ap ]
  %i.hv = load double, ptr %.0.i.i138, align 8, !tbaa !325
  %i.hw = fadd double %i.fx, %i.hv                ; 2 uses
  %i.hx = fadd double %i.hn, %i.hu                ; 3 uses
  %i.hy = or disjoint i32 %.1254, 7               ; 2 uses
  %.not.i.i143 = icmp ult i32 %i.hy, %i.hj
  br i1 %.not.i.i143, label %bb.ar, label %bb.aq, !prof !49

bb.aq:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit142
  store i8 1, ptr %i.a, align 8, !tbaa !2953
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit145

bb.ar:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit142
  %i.hz = zext i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.hz
  %.pre278 = load double, ptr %i.ia, align 8, !tbaa !325
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit145

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit145: ; preds = %bb.aq, %bb.ar
  %i.ib = phi double [ 0.000000e+00, %bb.aq ], [ %.pre278, %bb.ar ]
  %i.ic = fadd double %i.hw, %i.ib                ; 3 uses
  %i.id = sub i32 %i.hj, %.1254
  %i.ie = icmp ugt i32 %i.id, 15
  %i.if = and i32 %i.hj, 1
  %.not72 = icmp eq i32 %i.if, 0
  %or.cond = or i1 %i.ie, %.not72
  br i1 %or.cond, label %bb.av, label %bb.as

bb.as:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit145
  %.not.i.i146 = icmp ult i32 %i.fk, %i.hj
  br i1 %.not.i.i146, label %bb.au, label %bb.at, !prof !49

bb.at:                                            ; preds = %bb.as
  store i8 1, ptr %i.a, align 8, !tbaa !2953
  store i64 0, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit148

bb.au:                                            ; preds = %bb.as
  %i.ig = zext i32 %i.fk to i64
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ig
  %.pre279 = load double, ptr %i.ih, align 8, !tbaa !325
  br label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit148

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit148: ; preds = %bb.at, %bb.au
  %i.ii = phi double [ 0.000000e+00, %bb.at ], [ %.pre279, %bb.au ]
  %i.ij = fadd double %i.hx, %i.ii
  br label %bb.av

bb.av:                                            ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit148, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit145
  %.sroa.12.0 = phi double [ %i.hx, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit145 ], [ %i.ij, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit148 ] ; 3 uses
  %i.ik = load ptr, ptr %1, align 8, !tbaa !302   ; 4 uses
  %i.il = load ptr, ptr %i.g, align 8, !tbaa !304
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 80
  %i.in = load <2 x float>, ptr %i.im, align 8, !tbaa !94 ; 3 uses
  %i.io = load ptr, ptr %i.ik, align 8, !tbaa !175 ; 4 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !178 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ik, i64 16 ; 3 uses
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !197
  %.not.i.i.i.i149 = icmp eq i32 %i.is, 0
  br i1 %.not.i.i.i.i149, label %bb.aw, label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i150, !prof !48

bb.aw:                                            ; preds = %bb.av
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.io, ptr noundef %i.iq, ptr noundef nonnull align 4 dereferenceable(48) %i.ir)
  br label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i150

_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i150: ; preds = %bb.aw, %bb.av
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 40
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !814
  %i.iv = getelementptr inbounds nuw i8, ptr %i.io, i64 56
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !204 ; 2 uses
  %.not.i.i.i151 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i151, label %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit152, label %bb.ax

bb.ax:                                            ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i150
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !815
  br label %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit152

_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit152: ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i150, %bb.ax
  %i.iz = phi ptr [ %i.iy, %bb.ax ], [ null, %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i150 ]
  %i.ja = insertelement <2 x double> poison, double %i.ic, i64 0
  %i.jb = insertelement <2 x double> %i.ja, double %.sroa.12.0, i64 1
  %i.jc = fptrunc <2 x double> %i.jb to <2 x float>
  %i.jd = fptrunc double %i.hx to float
  %i.je = extractelement <2 x float> %i.in, i64 1 ; 2 uses
  %i.jf = fmul float %i.je, %i.jd
  %i.jg = fptrunc double %i.hw to float
  %i.jh = extractelement <2 x float> %i.in, i64 0 ; 2 uses
  %i.ji = fmul float %i.jh, %i.jg
  %i.jj = fptrunc double %i.hn to float
  %i.jk = fmul float %i.je, %i.jj
  %i.jl = fmul float %i.jh, %i.gy
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ik, i64 28
  %i.jn = fmul <2 x float> %i.in, %i.jc           ; 3 uses
  %i.jo = extractelement <2 x float> %i.jn, i64 0
  %i.jp = extractelement <2 x float> %i.jn, i64 1
  tail call void %i.iu(ptr noundef nonnull align 8 dereferenceable(72) %i.io, ptr noundef %i.iq, ptr noundef nonnull align 4 dereferenceable(48) %i.ir, float noundef %i.jl, float noundef %i.jk, float noundef %i.ji, float noundef %i.jf, float noundef %i.jo, float noundef %i.jp, ptr noundef %i.iz) #63, !inline_history !5844
  store <2 x float> %i.jn, ptr %i.jm, align 4, !tbaa !94
  store double %i.ic, ptr %i.e, align 8, !tbaa !795
  store double %.sroa.12.0, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !795
  %i.jq = add i32 %i.fk, 8                        ; 2 uses
  %i.jr = load i32, ptr %i.b, align 4, !tbaa !1554 ; 2 uses
  %.not71 = icmp ugt i32 %i.jq, %i.jr
  br i1 %.not71, label %.loopexit, label %bb.z, !llvm.loop !5853

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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1554
  %i.c = icmp eq i32 %i.b, 7
  br i1 %i.c, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit29, label %bb.b, !prof !49

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit29: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #63
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !2963
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load double, ptr %2, align 8, !tbaa !325
  %i.g = load double, ptr %i.e, align 8, !tbaa !325
  %i.h = fadd double %i.f, %i.g
  store double %i.h, ptr %2, align 8, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !2963
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load <2 x double>, ptr %i.i, align 8, !tbaa !325
  %i.k = load <2 x double>, ptr %3, align 16, !tbaa !325
  %i.l = fadd <2 x double> %i.k, %i.j
  store <2 x double> %i.l, ptr %3, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !2963
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre30 = load double, ptr %i.m, align 8, !tbaa !325
  %i.n = load double, ptr %4, align 8, !tbaa !325
  %i.o = fadd double %i.n, %.pre30
  store double %i.o, ptr %4, align 8, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !2963
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre31 = load double, ptr %i.p, align 8, !tbaa !325
  %i.q = load double, ptr %5, align 8, !tbaa !325
  %i.r = fadd double %i.q, %.pre31
  store double %i.r, ptr %5, align 8, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !2963
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre32 = load double, ptr %i.s, align 8, !tbaa !325
  %i.t = load double, ptr %6, align 8, !tbaa !325
  %i.u = fadd double %i.t, %.pre32
  store double %i.u, ptr %6, align 8, !tbaa !325
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.x = load i64, ptr %i.v, align 8, !tbaa !795
  store i64 %i.x, ptr %i.w, align 8, !tbaa !795
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !2963
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre33 = load double, ptr %i.y, align 8, !tbaa !325
  %i.z = load double, ptr %7, align 8, !tbaa !325
  %i.aa = fadd double %i.z, %.pre33
  store double %i.aa, ptr %7, align 8, !tbaa !325
  call void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE6curve2ERS4_RS5_RKNS_7point_tESB_SB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #63
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !308
  %i.ad = add i32 %i.ac, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !263
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1554
  %i.c = icmp eq i32 %i.b, 13
  br i1 %i.c, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit49, label %bb.b, !prof !49

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit49: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #63
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !2963
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !325
  %i.g = load <2 x double>, ptr %2, align 16, !tbaa !325
  %i.h = fadd <2 x double> %i.g, %i.f
  store <2 x double> %i.h, ptr %2, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !2963
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load <2 x double>, ptr %i.i, align 8, !tbaa !325
  %i.k = load <2 x double>, ptr %3, align 16, !tbaa !325
  %i.l = fadd <2 x double> %i.k, %i.j
  store <2 x double> %i.l, ptr %3, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !2963
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load <2 x double>, ptr %i.m, align 8, !tbaa !325
  %i.o = load <2 x double>, ptr %4, align 16, !tbaa !325
  %i.p = fadd <2 x double> %i.o, %i.n
  store <2 x double> %i.p, ptr %4, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !2963
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load <2 x double>, ptr %i.q, align 8, !tbaa !325
  %i.s = load <2 x double>, ptr %5, align 16, !tbaa !325
  %i.t = fadd <2 x double> %i.s, %i.r
  store <2 x double> %i.t, ptr %5, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !2963
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load <2 x double>, ptr %i.u, align 8, !tbaa !325
  %i.w = load <2 x double>, ptr %6, align 16, !tbaa !325
  %i.x = fadd <2 x double> %i.w, %i.v
  store <2 x double> %i.x, ptr %6, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !2963
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = load <2 x double>, ptr %i.y, align 8, !tbaa !325
  %i.aa = load <2 x double>, ptr %7, align 16, !tbaa !325
  %i.ab = fadd <2 x double> %i.aa, %i.z
  store <2 x double> %i.ab, ptr %7, align 16, !tbaa !325
  call void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE6curve2ERS4_RS5_RKNS_7point_tESB_SB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #63
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !308
  %i.ae = add i32 %i.ad, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !263
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1554
  %i.c = icmp eq i32 %i.b, 9
  br i1 %i.c, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit38, label %bb.b, !prof !49

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit38: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #63
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !2963
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !325
  %i.g = load <2 x double>, ptr %2, align 16, !tbaa !325
  %i.h = fadd <2 x double> %i.g, %i.f
  store <2 x double> %i.h, ptr %2, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !2963
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load <2 x double>, ptr %i.i, align 8, !tbaa !325
  %i.k = load <2 x double>, ptr %3, align 16, !tbaa !325
  %i.l = fadd <2 x double> %i.k, %i.j
  store <2 x double> %i.l, ptr %3, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !2963
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre40 = load double, ptr %i.m, align 8, !tbaa !325
  %i.n = load double, ptr %4, align 8, !tbaa !325
  %i.o = fadd double %i.n, %.pre40
  store double %i.o, ptr %4, align 8, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !2963
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre41 = load double, ptr %i.p, align 8, !tbaa !325
  %i.q = load double, ptr %5, align 8, !tbaa !325
  %i.r = fadd double %i.q, %.pre41
  store double %i.r, ptr %5, align 8, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !2963
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load <2 x double>, ptr %i.s, align 8, !tbaa !325
  %i.u = load <2 x double>, ptr %6, align 16, !tbaa !325
  %i.v = fadd <2 x double> %i.u, %i.t
  store <2 x double> %i.v, ptr %6, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !2963
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre43 = load double, ptr %i.w, align 8, !tbaa !325
  %i.x = load double, ptr %7, align 8, !tbaa !325
  %i.y = fadd double %i.x, %.pre43
  store double %i.y, ptr %7, align 8, !tbaa !325
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4456
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !795
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !795
  call void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE6curve2ERS4_RS5_RKNS_7point_tESB_SB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #63
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !308
  %i.ae = add i32 %i.ad, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !263
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1554
  %i.c = icmp eq i32 %i.b, 11
  br i1 %i.c, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit50, label %bb.c, !prof !49

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit50: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load double, ptr %i.e, align 8, !tbaa !325
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #63
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !2963
  %i.k = load <2 x double>, ptr %i.d, align 8, !tbaa !325 ; 2 uses
  %i.l = load <2 x double>, ptr %2, align 16, !tbaa !325
  %i.m = fadd <2 x double> %i.l, %i.k
  store <2 x double> %i.m, ptr %2, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !2963
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load <2 x double>, ptr %i.n, align 8, !tbaa !325
  %i.p = load <2 x double>, ptr %3, align 16, !tbaa !325
  %i.q = fadd <2 x double> %i.p, %i.o
  store <2 x double> %i.q, ptr %3, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !2963
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load <2 x double>, ptr %i.r, align 8, !tbaa !325
  %i.t = load <2 x double>, ptr %4, align 16, !tbaa !325
  %i.u = fadd <2 x double> %i.t, %i.s
  store <2 x double> %i.u, ptr %4, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !2963
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load <2 x double>, ptr %i.v, align 8, !tbaa !325
  %i.x = load <2 x double>, ptr %5, align 16, !tbaa !325
  %i.y = fadd <2 x double> %i.x, %i.w
  store <2 x double> %i.y, ptr %5, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !2963
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aa = load <2 x double>, ptr %i.z, align 8, !tbaa !325
  %i.ab = load <2 x double>, ptr %6, align 16, !tbaa !325
  %i.ac = fadd <2 x double> %i.ab, %i.aa
  store <2 x double> %i.ac, ptr %6, align 16, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !2963
  %i.ad = load <2 x double>, ptr %i.f, align 8, !tbaa !325
  %i.ae = load <2 x double>, ptr %i.g, align 8, !tbaa !325
  %i.af = load <2 x double>, ptr %i.h, align 8, !tbaa !325
  %i.ag = load <2 x double>, ptr %i.i, align 8, !tbaa !325
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
  %.pre80 = load double, ptr %i.ar, align 8, !tbaa !325
  %i.as = load double, ptr %7, align 8, !tbaa !325
  %i.at = fadd double %i.as, %.pre80
  store double %i.at, ptr %7, align 8, !tbaa !325
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4456
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !795
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !795
  br label %bb.b

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit62: ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit50
  %i.ax = load i64, ptr %i.j, align 8, !tbaa !795
  store i64 %i.ax, ptr %7, align 8, !tbaa !795
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre79 = load double, ptr %i.ay, align 8, !tbaa !325
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !325
  %i.bb = fadd double %i.ba, %.pre79
  store double %i.bb, ptr %i.az, align 8, !tbaa !325
  br label %bb.b

bb.b:                                             ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit62, %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit59
  call void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE6curve2ERS4_RS5_RKNS_7point_tESB_SB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #63
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !308
  %i.be = add i32 %i.bd, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !263
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE6curve2ERS4_RS5_RKNS_7point_tESB_SB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !302    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !304
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load <2 x double>, ptr %2, align 8, !tbaa !325
  %i.f = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.g = load <2 x double>, ptr %3, align 8, !tbaa !325
  %i.h = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.i = load <2 x float>, ptr %i.d, align 8, !tbaa !94 ; 2 uses
  %i.j = load <2 x double>, ptr %4, align 8, !tbaa !325
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !175  ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !178  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !197
  %.not.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i, !prof !48

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef %i.m, ptr noundef nonnull align 4 dereferenceable(48) %i.n)
  br label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i

_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i:  ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !814
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !204  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !815
  br label %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit

_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit: ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i, %bb.c
  %i.v = phi ptr [ %i.u, %bb.c ], [ null, %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i ]
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
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef %i.m, ptr noundef nonnull align 4 dereferenceable(48) %i.n, float noundef %i.ai, float noundef %i.ah, float noundef %i.ag, float noundef %i.af, float noundef %i.ad, float noundef %i.ae, ptr noundef %i.v) #63, !inline_history !5844
  store <2 x float> %i.ac, ptr %i.ab, align 4, !tbaa !94
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !2963
  %i.ak = load ptr, ptr %1, align 8, !tbaa !302   ; 4 uses
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !304
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  %i.an = load <2 x double>, ptr %5, align 8, !tbaa !325
  %i.ao = load <2 x double>, ptr %6, align 8, !tbaa !325
  %i.ap = load <2 x float>, ptr %i.am, align 8, !tbaa !94 ; 2 uses
  %i.aq = load <2 x double>, ptr %7, align 8, !tbaa !325
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !175 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !178 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 3 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !197
  %.not.i.i.i.i10 = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i.i10, label %bb.d, label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i11, !prof !48

bb.d:                                             ; preds = %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.ar, ptr noundef %i.at, ptr noundef nonnull align 4 dereferenceable(48) %i.au)
  br label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i11

_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i11: ; preds = %bb.d, %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !814
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !204 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i12, label %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit13, label %bb.e

bb.e:                                             ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !815
  br label %_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit13

_ZN22cff2_path_procs_path_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER17cff2_path_param_tRKNS0_7point_tES9_S9_.exit13: ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i11, %bb.e
  %i.bc = phi ptr [ %i.bb, %bb.e ], [ null, %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i.i11 ]
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
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(72) %i.ar, ptr noundef %i.at, ptr noundef nonnull align 4 dereferenceable(48) %i.au, float noundef %i.br, float noundef %i.bq, float noundef %i.bp, float noundef %i.bo, float noundef %i.bm, float noundef %i.bn, ptr noundef %i.bc) #63, !inline_history !5844
  store <2 x float> %i.bl, ptr %i.bk, align 4, !tbaa !94
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !2963
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16hb_lazy_loader_tIN2OT4CPALE22hb_table_lazy_loader_tIS1_Lj37ELb1EE9hb_face_tLj37E9hb_blob_tE10do_destroyEPS5_(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  %.not3 = icmp eq ptr %0, @_hb_NullPool
  %or.cond = or i1 %.not, %.not3
  br i1 %or.cond, label %_ZN22hb_table_lazy_loader_tIN2OT4CPALELj37ELb1EE7destroyEP9hb_blob_t.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i32, ptr %0 monotonic, align 4 ; 0 uses
  %i.b = load atomic i32, ptr %0 monotonic, align 4
  %.not.i7.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i7.i.i.i.i, label %_ZN22hb_table_lazy_loader_tIN2OT4CPALELj37ELb1EE7destroyEP9hb_blob_t.exit, label %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i.i, !prof !48

_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i.i: ; preds = %bb.b
  %i.c = atomicrmw add ptr %0, i32 -1 acq_rel, align 4
  %.not6.i.i.i.i = icmp eq i32 %i.c, 1
  br i1 %.not6.i.i.i.i, label %bb.c, label %_ZN22hb_table_lazy_loader_tIN2OT4CPALELj37ELb1EE7destroyEP9hb_blob_t.exit

bb.c:                                             ; preds = %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i.i
  store atomic i32 -57005, ptr %0 monotonic, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 5 uses
  %.not.i.i3.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i3.i.i.i, label %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_13
