inline.NumInlined: 4922
inline.NumDeleted: 2282
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN31cff2_private_dict_blend_opset_t10process_opEjRN3CFF27cff2_priv_dict_interp_env_tER34cff2_private_blend_encoder_param_t:bb.a
  %.not.i38 = icmp eq ptr %i.ee, null
  %.not.i7.i39 = icmp eq i32 %i.dv, 0
  %or.cond49 = select i1 %.not.i38, i1 true, i1 %.not.i7.i39, !prof !1519
  br i1 %or.cond49, label %_ZN22hb_serialize_context_t5embedEPKcj.exit41, label %bb.ac, !prof !1519

bb.ac:                                            ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.i37
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ee, ptr readonly align 1 %i.dt, i64 %i.dw, i1 false), !alias.scope !1524
  br label %_ZN22hb_serialize_context_t5embedEPKcj.exit41

_ZN22hb_serialize_context_t5embedEPKcj.exit41:    ; preds = %_ZN3CFF13str_encoder_t9encode_opEj.exit32, %.critedge.i.i40, %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.i37, %bb.ac
  store i32 0, ptr %i.ce, align 4, !tbaa !850
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.el = load i32, ptr %5, align 8, !tbaa !122
  %i.em = add i32 %i.el, -1
  %spec.select.i.i.i42 = icmp ult i32 %i.em, -2
  br i1 %spec.select.i.i.i42, label %bb.ad, label %_ZN11hb_vector_tIhLb0EED2Ev.exit43

bb.ad:                                            ; preds = %_ZN22hb_serialize_context_t5embedEPKcj.exit41
  store i32 0, ptr %i.du, align 4, !tbaa !125
  %i.en = load ptr, ptr %i.ds, align 8, !tbaa !126
  call void @hb_free(ptr noundef %i.en) #16
  br label %_ZN11hb_vector_tIhLb0EED2Ev.exit43

_ZN11hb_vector_tIhLb0EED2Ev.exit43:               ; preds = %_ZN22hb_serialize_context_t5embedEPKcj.exit41, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.ah

bb.ae:                                            ; preds = %.lr.ph, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit ] ; 3 uses
  %i.eo = load i32, ptr %i.ce, align 4, !tbaa !850
  %i.ep = zext i32 %i.eo to i64
  %.not.i44 = icmp samesign ult i64 %indvars.iv, %i.ep
  br i1 %.not.i44, label %bb.ag, label %bb.af, !prof !54

bb.af:                                            ; preds = %bb.ae
  store i8 1, ptr %i.ca, align 8, !tbaa !851
  store i64 %i.cg, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit

bb.ag:                                            ; preds = %bb.ae
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit: ; preds = %bb.af, %bb.ag
  %.0.i45 = phi ptr [ @_hb_CrapPool, %bb.af ], [ %i.eq, %bb.ag ]
  call void @_ZN3CFF13str_encoder_t13encode_num_tpERKNS_8number_tE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %.0.i45)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ae, !llvm.loop !1528

bb.ah:                                            ; preds = %bb.q, %bb.p, %_ZN11hb_vector_tIhLb0EED2Ev.exit43, %bb.o, %_ZNK3CFF22cff2_instancing_plan_t9remap_ivsEj.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN31cff2_private_dict_blend_opset_t13process_blendERN3CFF27cff2_priv_dict_interp_env_tER34cff2_private_blend_encoder_param_t(ptr noundef nonnull align 8 dereferenceable(4133) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN34cff2_private_blend_encoder_param_t13process_blendEv(ptr noundef nonnull align 8 dereferenceable(88) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !297  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !850  ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b, !prof !57

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = add i32 %i.e, -1                         ; 3 uses
  store i32 %i.g, ptr %i.d, align 4, !tbaa !850
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %.pre.i.i = load double, ptr %i.i, align 8, !tbaa !170
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.c, align 8, !tbaa !851
  %i.j = load i64, ptr @_hb_NullPool, align 16    ; 2 uses
  store i64 %i.j, ptr @_hb_CrapPool, align 16
  %i.k = bitcast i64 %i.j to double
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i

_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i: ; preds = %bb.c, %bb.b
  %i.l = phi i32 [ %i.g, %bb.b ], [ 0, %bb.c ]    ; 6 uses
  %i.m = phi double [ %.pre.i.i, %bb.b ], [ %i.k, %bb.c ] ; 3 uses
  %i.n = fcmp ult double %i.m, f0xC1E0000000000000
  %i.o = fcmp ugt double %i.m, f0x41DFFFFFFFC00000
  %.not6.i.i.not9.i = or i1 %i.n, %i.o
  %i.p = fptosi double %i.m to i32                ; 2 uses
  %i.q = icmp slt i32 %i.p, 0
  %or.cond.i = select i1 %.not6.i.i.not9.i, i1 true, i1 %i.q, !prof !852
  br i1 %or.cond.i, label %.sink.split.i, label %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit, !prof !852

.sink.split.i:                                    ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i
  store i8 1, ptr %i.c, align 8, !tbaa !851
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit

_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit: ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i, %.sink.split.i
  %.0.i = phi i32 [ %i.p, %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i ], [ 0, %.sink.split.i ] ; 7 uses
  %.neg = xor i32 %i.b, -1
  %.neg38 = mul i32 %.0.i, %.neg
  %i.r = add i32 %.neg38, %i.l                    ; 5 uses
  %i.s = icmp ugt i32 %i.r, %i.l
  br i1 %i.s, label %bb.d, label %bb.e, !prof !57

bb.d:                                             ; preds = %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !603
  %i.v = add i32 %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.v, ptr %i.w, align 4, !tbaa !602
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEj.exit

bb.e:                                             ; preds = %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1518
  %i.z = icmp ne ptr %i.y, null
  %i.aa = icmp ne i32 %i.b, 0
  %or.cond = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.e
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ab = add i32 %i.r, %.0.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ad = load i64, ptr @_hb_NullPool, align 16   ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !1529
  %.fr42 = freeze i32 %i.af                       ; 2 uses
  %.not43 = icmp eq i32 %.fr42, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %wide.trip.count49 = zext nneg i32 %.0.i to i64 ; 2 uses
  %i.ah = bitcast i64 %i.ad to double             ; 2 uses
  br i1 %.not43, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.ai = tail call i32 @llvm.usub.sat.i32(i32 %i.e, i32 1)
  %i.aj = mul i32 %.0.i, %i.b
  %i.ak = sub i32 %i.ai, %i.aj
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.us
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.al = trunc nuw i64 %indvars.iv46 to i32
  %i.am = add i32 %i.r, %i.al                     ; 2 uses
  %.not.i39.us = icmp ult i32 %i.am, %i.l
  br i1 %.not.i39.us, label %bb.g, label %bb.f, !prof !54

bb.f:                                             ; preds = %.lr.ph.split.us
  store i8 1, ptr %i.c, align 8, !tbaa !851
  store i64 %i.ad, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.us

bb.g:                                             ; preds = %.lr.ph.split.us
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.an ; 2 uses
  %.pre51 = load double, ptr %i.ao, align 8, !tbaa !170
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.us

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.us: ; preds = %bb.g, %bb.f
  %i.ap = phi double [ %i.ah, %bb.f ], [ %.pre51, %bb.g ]
  %.0.i40.us = phi ptr [ @_hb_CrapPool, %bb.f ], [ %i.ao, %bb.g ]
  %i.aq = fadd double %i.ap, 0.000000e+00
  %i.ar = tail call double @llvm.round.f64(double %i.aq)
  %i.as = fptosi double %i.ar to i32
  %i.at = sitofp i32 %i.as to double
  store double %i.at, ptr %.0.i40.us, align 8, !tbaa !170
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %exitcond50.not = icmp eq i64 %indvars.iv.next47, %wide.trip.count49
  br i1 %exitcond50.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !1530

bb.h:                                             ; preds = %bb.e
  tail call void @_ZN31cff2_private_dict_blend_opset_t14rewrite_blendsERN3CFF27cff2_priv_dict_interp_env_tER34cff2_private_blend_encoder_param_tjjj(ptr noundef nonnull align 8 dereferenceable(4133) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %i.r, i32 noundef %.0.i, i32 noundef %i.b)
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEj.exit

._crit_edge:                                      ; preds = %_ZN31cff2_private_dict_blend_opset_t17process_arg_blendER34cff2_private_blend_encoder_param_tRN3CFF8number_tE10hb_array_tIKS3_Ejj.exit, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.us, %.preheader
  %i.au = mul i32 %.0.i, %i.b                     ; 2 uses
  %.not.i = icmp ult i32 %i.l, %i.au
  br i1 %.not.i, label %bb.j, label %bb.i, !prof !57

bb.i:                                             ; preds = %._crit_edge
  %i.av = sub nuw i32 %i.l, %i.au
  store i32 %i.av, ptr %i.d, align 4, !tbaa !850
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEj.exit

bb.j:                                             ; preds = %._crit_edge
  store i8 1, ptr %i.c, align 8, !tbaa !851
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEj.exit

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZN31cff2_private_dict_blend_opset_t17process_arg_blendER34cff2_private_blend_encoder_param_tRN3CFF8number_tE10hb_array_tIKS3_Ejj.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN31cff2_private_dict_blend_opset_t17process_arg_blendER34cff2_private_blend_encoder_param_tRN3CFF8number_tE10hb_array_tIKS3_Ejj.exit ], [ 0, %.lr.ph.split.preheader ] ; 3 uses
  %i.aw = trunc i64 %indvars.iv to i32
  %i.ax = mul i32 %i.b, %i.aw
  %i.ay = add i32 %i.ax, %i.ak
  %i.az = tail call i32 @llvm.usub.sat.i32(i32 513, i32 %i.ay)
  %i.ba = tail call i32 @llvm.umin.i32(i32 %i.b, i32 %i.az)
  %i.bb = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.bc = mul i32 %i.b, %i.bb
  %i.bd = add i32 %i.ab, %i.bc                    ; 2 uses
  %storemerge.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 513, i32 %i.bd)
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i.i, i32 %i.b) ; 2 uses
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.be ; 5 uses
  %.sroa.3.8.insert.ext.i.i.i = zext nneg i32 %.sroa.speculated.i.i.i to i64 ; 2 uses
  %i.bg = add i32 %i.r, %i.bb                     ; 2 uses
  %.not.i39 = icmp ult i32 %i.bg, %i.l
  br i1 %.not.i39, label %bb.l, label %bb.k, !prof !54

bb.k:                                             ; preds = %.lr.ph.split
  store i8 1, ptr %i.c, align 8, !tbaa !851
  store i64 %i.ad, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit

bb.l:                                             ; preds = %.lr.ph.split
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bh ; 2 uses
  %.pre = load double, ptr %i.bi, align 8, !tbaa !170
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit: ; preds = %bb.k, %bb.l
  %i.bj = phi double [ %i.ah, %bb.k ], [ %.pre, %bb.l ]
  %.0.i40 = phi ptr [ @_hb_CrapPool, %bb.k ], [ %i.bi, %bb.l ]
  %i.bk = icmp eq i32 %.fr42, %.sroa.speculated.i.i.i
  br i1 %i.bk, label %.lr.ph.i.i, label %_ZN31cff2_private_dict_blend_opset_t17process_arg_blendER34cff2_private_blend_encoder_param_tRN3CFF8number_tE10hb_array_tIKS3_Ejj.exit, !prof !747

.lr.ph.i.i:                                       ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit
  %i.bl = load ptr, ptr %i.ag, align 8, !tbaa !1531 ; 5 uses
  %xtraiter = and i64 %.sroa.3.8.insert.ext.i.i.i, 3 ; 3 uses
  %i.bm = add nsw i32 %i.ba, -1
  %i.bn = icmp ult i32 %i.bm, 3
  br i1 %i.bn, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.3.8.insert.ext.i.i.i, 1020
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.3, %bb.m ] ; 6 uses
  %.079.i.i = phi double [ 0.000000e+00, %.lr.ph.i.i.new ], [ %i.cl, %bb.m ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.m ]
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i.i
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !790
  %i.bq = fpext float %i.bp to double
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i.i
  %i.bs = load double, ptr %i.br, align 8, !tbaa !170
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.bs, double %.079.i.i)
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.next.i.i
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !790
  %i.bw = fpext float %i.bv to double
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i
  %i.by = load double, ptr %i.bx, align 8, !tbaa !170
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.by, double %i.bt)
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.next.i.i.1
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !790
  %i.cc = fpext float %i.cb to double
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.1
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !170
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.ce, double %i.bz)
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.next.i.i.2
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !790
  %i.ci = fpext float %i.ch to double
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.2
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !170
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.ck, double %i.cf) ; 3 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN31cff2_private_dict_blend_opset_t17process_arg_blendER34cff2_private_blend_encoder_param_tRN3CFF8number_tE10hb_array_tIKS3_Ejj.exit.loopexit.unr-lcssa, label %bb.m, !llvm.loop !1532

_ZN31cff2_private_dict_blend_opset_t17process_arg_blendER34cff2_private_blend_encoder_param_tRN3CFF8number_tE10hb_array_tIKS3_Ejj.exit.loopexit.unr-lcssa: ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN31cff2_private_dict_blend_opset_t17process_arg_blendER34cff2_private_blend_encoder_param_tRN3CFF8number_tE10hb_array_tIKS3_Ejj.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN31cff2_private_dict_blend_opset_t17process_arg_blendER34cff2_private_blend_encoder_param_tRN3CFF8number_tE10hb_array_tIKS3_Ejj.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.3, %_ZN31cff2_private_dict_blend_opset_t17process_arg_blendER34cff2_private_blend_encoder_param_tRN3CFF8number_tE10hb_array_tIKS3_Ejj.exit.loopexit.unr-lcssa ]
  %.079.i.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i ], [ %i.cl, %_ZN31cff2_private_dict_blend_opset_t17process_arg_blendER34cff2_private_blend_encoder_param_tRN3CFF8number_tE10hb_array_tIKS3_Ejj.exit.loopexit.unr-lcssa ]
  %lcmp.mod64 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod64)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.n ] ; 3 uses
  %.079.i.i.epil = phi double [ %.079.i.i.epil.init, %.epil.preheader ], [ %i.cr, %bb.n ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.n ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i.i.epil
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !790
  %i.co = fpext float %i.cn to double
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i.i.epil
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !170
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.co, double %i.cq, double %.079.i.i.epil) ; 2 uses
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN31cff2_private_dict_blend_opset_t17process_arg_blendER34cff2_private_blend_encoder_param_tRN3CFF8number_tE10hb_array_tIKS3_Ejj.exit, label %bb.n, !llvm.loop !1533

_ZN31cff2_private_dict_blend_opset_t17process_arg_blendER34cff2_private_blend_encoder_param_tRN3CFF8number_tE10hb_array_tIKS3_Ejj.exit: ; preds = %_ZN31cff2_private_dict_blend_opset_t17process_arg_blendER34cff2_private_blend_encoder_param_tRN3CFF8number_tE10hb_array_tIKS3_Ejj.exit.loopexit.unr-lcssa, %bb.n, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit
  %.1.i.i = phi double [ 0.000000e+00, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit ], [ %i.cl, %_ZN31cff2_private_dict_blend_opset_t17process_arg_blendER34cff2_private_blend_encoder_param_tRN3CFF8number_tE10hb_array_tIKS3_Ejj.exit.loopexit.unr-lcssa ], [ %i.cr, %bb.n ]
  %i.cs = fadd double %i.bj, %.1.i.i
  %i.ct = tail call double @llvm.round.f64(double %i.cs)
  %i.cu = fptosi double %i.ct to i32
  %i.cv = sitofp i32 %i.cu to double
  store double %i.cv, ptr %.0.i40, align 8, !tbaa !170
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count49
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !1530

_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEj.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF13str_encoder_t13encode_num_tpERKNS_8number_tE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 19 uses
  %i.d = load double, ptr %1, align 8, !tbaa !170 ; 6 uses
  %i.e = fcmp oge double %i.d, -3.276800e+04
  %i.f = fcmp ole double %i.d, 3.276700e+04
  %or.cond.not.i = and i1 %i.e, %i.f
  %i.g = fptosi double %i.d to i16
  %i.h = sitofp i16 %i.g to double
  %i.i = fcmp oeq double %i.d, %i.h
  %i.j = select i1 %or.cond.not.i, i1 %i.i, i1 false
  br i1 %i.j, label %_ZNK3CFF8number_t6to_intEv.exit, label %bb.b

_ZNK3CFF8number_t6to_intEv.exit:                  ; preds = %bb.a
  %i.k = fptosi double %i.d to i32
  tail call void @_ZN3CFF13str_encoder_t10encode_intEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.k)
  br label %bb.ca

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 30, ptr %i.b, align 1, !tbaa !187
  %i.l = load ptr, ptr %0, align 8, !tbaa !188, !nonnull !113, !align !190 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !125  ; 3 uses
  %i.o = load i32, ptr %i.l, align 8, !tbaa !122
  %i.p = icmp slt i32 %i.n, %i.o
  br i1 %i.p, label %bb.c, label %bb.d, !prof !54

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !126
  %i.s = add nsw i32 %i.n, 1
  store i32 %i.s, ptr %i.m, align 4, !tbaa !125
  %i.t = zext i32 %i.n to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t
  store i8 30, ptr %i.u, align 1, !tbaa !187
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit

bb.d:                                             ; preds = %bb.b
  %i.v = call noundef ptr @_ZN11hb_vector_tIhLb0EE4pushIJRhEEEPhDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 1 dereferenceable(1) %i.b) ; 0 uses
  br label %_ZN3CFF13str_encoder_t11encode_byteEh.exit

_ZN3CFF13str_encoder_t11encode_byteEh.exit:       ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.w = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 16, ptr noundef nonnull @.str.7, double noundef %i.d) #16 ; 0 uses
  %i.x = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.c, i32 noundef 44) #18 ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN3CFF13str_encoder_t11encode_byteEh.exit
  store i8 46, ptr %i.x, align 1, !tbaa !187
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN3CFF13str_encoder_t11encode_byteEh.exit
  %i.y = load i8, ptr %i.c, align 16, !tbaa !187  ; 2 uses
  %i.z = icmp eq i8 %i.y, 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 4 uses
  %i.ab = load i8, ptr %i.aa, align 1             ; 2 uses
  %i.ac = icmp eq i8 %i.ab, 46
  %or.cond109 = select i1 %i.z, i1 %i.ac, i1 false
  br i1 %or.cond109, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp eq i8 %i.y, 45
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp eq i8 %i.ab, 48
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.ag = load i8, ptr %i.af, align 2
  %i.ah = icmp eq i8 %i.ag, 46
  %or.cond106 = select i1 %i.ae, i1 %i.ah, i1 false
  br i1 %or.cond106, label %.thread350, label %bb.i

.thread350:                                       ; preds = %bb.h
  store i8 45, ptr %i.aa, align 1, !tbaa !187
  br label %bb.s

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #18 ; 3 uses
  %i.aj = icmp ugt i64 %i.ai, 3
  br i1 %i.aj, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ai
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -3
  %i.am = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.al, ptr noundef nonnull dereferenceable(4) @.str.8) #18
  %.not98 = icmp eq i32 %i.am, 0
  br i1 %.not98, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.an = trunc i64 %i.ai to i32
  %i.ao = add i32 %i.an, -3                       ; 2 uses
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ap
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.089 = phi i32 [ %i.ao, %bb.k ], [ %i.av, %bb.l ] ; 3 uses
  %.pn = phi ptr [ %i.aq, %bb.k ], [ %.088, %bb.l ] ; 3 uses
  %.088 = getelementptr inbounds i8, ptr %.pn, i64 -1 ; 2 uses
  %i.ar = load i8, ptr %.088, align 1, !tbaa !187
  %i.as = icmp eq i8 %i.ar, 48
  %i.at = icmp ugt i32 %.089, 1
  %i.au = select i1 %i.as, i1 %i.at, i1 false
  %i.av = add i32 %.089, 1
  br i1 %i.au, label %bb.l, label %bb.m, !llvm.loop !1534

bb.m:                                             ; preds = %bb.l
  %i.aw = ptrtoint ptr %.pn to i64
  %i.ax = ptrtoint ptr %i.c to i64
  %.neg = add i64 %i.ax, 16
  %i.ay = sub i64 %.neg, %i.aw
  %i.az = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %.pn, i64 noundef %i.ay, ptr noundef nonnull @.str.9, i32 noundef %.089) #16 ; 0 uses
  br label %bb.r

bb.n:                                             ; preds = %bb.j, %bb.i
end_hunk_0
begin_hunk_1_@_ZN34cff2_private_blend_encoder_param_t13process_blendEv:bb.a
bb.g:                                             ; preds = %bb.d, %bb.e
  store i32 %i.x, ptr %i.ab, align 4, !tbaa !309
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !298 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2 ; 2 uses
  %i.ar = load i32, ptr %i.g, align 4, !tbaa !296 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1568
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.av = load i32, ptr %i.au, align 8, !tbaa !1569
  %.not.i.not = icmp eq i16 %i.v, 0
  br i1 %.not.i.not, label %bb.h, label %bb.i, !prof !57

bb.h:                                             ; preds = %bb.g
  %i.aw = load i32, ptr @_hb_NullPool, align 16
  store i32 %i.aw, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit

bb.i:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !310
  br label %_ZN11hb_vector_tIfLb0EEixEi.exit

_ZN11hb_vector_tIfLb0EEixEi.exit:                 ; preds = %bb.h, %bb.i
  %.0.i = phi ptr [ @_hb_CrapPool, %bb.h ], [ %i.ay, %bb.i ]
  %i.az = load i32, ptr %i.y, align 8, !tbaa !297
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bb = load i16, ptr %i.ba, align 1, !tbaa !430
  %i.bc = tail call noundef i16 @llvm.bswap.i16(i16 %i.bb)
  %i.bd = zext i16 %i.bc to i32
  %.not.i.i1 = icmp ult i32 %i.ar, %i.bd
  br i1 %.not.i.i1, label %bb.j, label %_ZNK2OT18ItemVariationStore18get_region_scalarsEjPKijPfj.exit, !prof !54

bb.j:                                             ; preds = %_ZN11hb_vector_tIfLb0EEixEi.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !761
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 10
  %i.bf = zext nneg i32 %i.ar to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bf
  br label %_ZNK2OT18ItemVariationStore18get_region_scalarsEjPKijPfj.exit

_ZNK2OT18ItemVariationStore18get_region_scalarsEjPKijPfj.exit: ; preds = %_ZN11hb_vector_tIfLb0EEixEi.exit, %bb.j
  %.0.i.i2 = phi ptr [ %i.bg, %bb.j ], [ @_hb_NullPool, %_ZN11hb_vector_tIfLb0EEixEi.exit ]
  %i.bh = load i32, ptr %.0.i.i2, align 1, !tbaa !578 ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 0
  %i.bj = tail call i32 @llvm.bswap.i32(i32 %i.bh)
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bk
  %.0.i.i.i3 = select i1 %i.bi, ptr @_hb_NullPool, ptr %i.bl, !prof !57
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.bn = load i32, ptr %i.bm, align 1, !tbaa !578 ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 0
  %i.bp = tail call i32 @llvm.bswap.i32(i32 %i.bn)
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bq
  %.0.i.i5.i = select i1 %i.bo, ptr @_hb_NullPool, ptr %i.br, !prof !57
  tail call void @_ZNK2OT7VarData18get_region_scalarsEPKijRKNS_13VarRegionListEPfj(ptr noundef nonnull align 1 dereferenceable(8) %.0.i.i.i3, ptr noundef %i.at, i32 noundef %i.av, ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i5.i, ptr noundef nonnull %.0.i, i32 noundef %i.az)
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN11hb_vector_tIfLb0EE12resize_exactEi.exit, %bb.f, %_ZNK2OT18ItemVariationStore18get_region_scalarsEjPKijPfj.exit
  store i8 1, ptr %i.a, align 8, !tbaa !295
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN31cff2_private_dict_blend_opset_t14rewrite_blendsERN3CFF27cff2_priv_dict_interp_env_tER34cff2_private_blend_encoder_param_tjjj(ptr noundef nonnull align 8 dereferenceable(4133) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %5 = alloca %struct.hb_vector_t.23, align 8     ; 9 uses
  %6 = alloca %"struct.CFF::str_encoder_t", align 8 ; 9 uses
  %7 = alloca %"struct.CFF::number_t", align 8    ; 4 uses
  %8 = alloca %"struct.CFF::number_t", align 8    ; 4 uses
  %9 = alloca %"struct.CFF::number_t", align 8    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1518 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !296  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !854
  %i.h = icmp uge i32 %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = zext i32 %i.e to i64
  %i.l = getelementptr inbounds nuw [72 x i8], ptr %i.j, i64 %i.k ; 4 uses
  %.not139 = icmp eq ptr %i.j, null
  %.not = select i1 %i.h, i1 true, i1 %.not139
  br i1 %.not, label %.critedge, label %bb.b, !prof !57

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !1360
  %.not140 = icmp eq i32 %i.n, %4
  br i1 %.not140, label %bb.c, label %.critedge, !prof !54

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !603
  %i.q = add i32 %i.p, 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.q, ptr %i.r, align 4, !tbaa !602
  br label %bb.ac

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store ptr %5, ptr %6, align 8, !tbaa !110
  %.not160 = icmp eq i32 %2, 0
  br i1 %.not160, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i64, ptr @_hb_NullPool, align 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %wide.trip.count = zext i32 %2 to i64
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 68
  %i.x = load i8, ptr %i.w, align 4, !tbaa !488, !range !112, !noundef !113
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.g, label %.preheader

bb.d:                                             ; preds = %.lr.ph, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit ] ; 3 uses
  %i.z = load i32, ptr %i.s, align 4, !tbaa !850
  %i.aa = zext i32 %i.z to i64
  %.not.i = icmp samesign ult i64 %indvars.iv, %i.aa
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !54

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.t, align 8, !tbaa !851
  store i64 %i.u, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit: ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ @_hb_CrapPool, %bb.e ], [ %i.ab, %bb.f ]
  call void @_ZN3CFF13str_encoder_t13encode_num_tpERKNS_8number_tE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %.0.i)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !1570

bb.g:                                             ; preds = %._crit_edge
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !859 ; 3 uses
  %.not100 = icmp eq i32 %i.ad, 0
  br i1 %.not100, label %.preheader, label %.preheader143

.preheader143:                                    ; preds = %bb.g
  %.not102155.not = icmp eq i32 %3, 0
  br i1 %.not102155.not, label %.critedge104, label %.lr.ph157

.lr.ph157:                                        ; preds = %.preheader143
  %i.ae = add i32 %i.ad, 1
  %i.af = add i32 %3, %2                          ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i64, ptr @_hb_NullPool, align 16   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ap = bitcast i64 %i.aj to double
  %wide.trip.count172 = zext i32 %i.ad to i64
  %i.aq = add i32 %3, %2
  br label %bb.m

.preheader:                                       ; preds = %._crit_edge, %bb.g
  %.not161 = icmp eq i32 %3, 0
  br i1 %.not161, label %.critedge104, label %.lr.ph159

.lr.ph159:                                        ; preds = %.preheader
  %i.ar = add i32 %3, %2
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load i64, ptr @_hb_NullPool, align 16   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %wide.trip.count180 = zext i32 %3 to i64
  %i.ba = bitcast i64 %i.av to double
  %i.bb = add i32 %3, %2
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph159, %_ZN31cff2_private_dict_blend_opset_t4foldER34cff2_private_blend_encoder_param_t10hb_array_tIKN3CFF8number_tEE.exit
  %indvars.iv177 = phi i64 [ 0, %.lr.ph159 ], [ %indvars.iv.next178, %_ZN31cff2_private_dict_blend_opset_t4foldER34cff2_private_blend_encoder_param_t10hb_array_tIKN3CFF8number_tEE.exit ] ; 3 uses
  %i.bc = trunc i64 %indvars.iv177 to i32
  %i.bd = mul i32 %4, %i.bc
  %i.be = add i32 %i.bd, %i.bb
  %i.bf = call i32 @llvm.usub.sat.i32(i32 513, i32 %i.be)
  %i.bg = call i32 @llvm.umin.i32(i32 %4, i32 %i.bf)
  %i.bh = trunc nuw i64 %indvars.iv177 to i32     ; 2 uses
  %i.bi = mul i32 %4, %i.bh
  %i.bj = add i32 %i.ar, %i.bi                    ; 2 uses
  %storemerge.i.i.i = call i32 @llvm.usub.sat.i32(i32 513, i32 %i.bj)
  %.sroa.speculated.i.i.i = call i32 @llvm.umin.i32(i32 %storemerge.i.i.i, i32 %4) ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.bk ; 5 uses
  %.sroa.3.8.insert.ext.i.i.i = zext nneg i32 %.sroa.speculated.i.i.i to i64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.bm = add i32 %2, %i.bh                       ; 2 uses
  %i.bn = load i32, ptr %i.at, align 4, !tbaa !850
  %.not.i105 = icmp ult i32 %i.bm, %i.bn
  br i1 %.not.i105, label %bb.j, label %bb.i, !prof !54

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.au, align 8, !tbaa !851
  store i64 %i.av, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit107

bb.j:                                             ; preds = %bb.h
  %i.bo = zext i32 %i.bm to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.bo
  %.pre182 = load double, ptr %i.bp, align 8, !tbaa !170
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit107

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit107: ; preds = %bb.i, %bb.j
  %i.bq = phi double [ %i.ba, %bb.i ], [ %.pre182, %bb.j ]
  %i.br = load i32, ptr %i.aw, align 4, !tbaa !1529 ; 2 uses
  %i.bs = icmp eq i32 %i.br, %.sroa.speculated.i.i.i
  %i.bt = icmp ne i32 %i.br, 0
  %or.cond.i.i = and i1 %i.bs, %i.bt
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZN31cff2_private_dict_blend_opset_t4foldER34cff2_private_blend_encoder_param_t10hb_array_tIKN3CFF8number_tEE.exit, !prof !747

.lr.ph.i.i:                                       ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit107
  %i.bu = load ptr, ptr %i.ax, align 8, !tbaa !1531 ; 5 uses
  %xtraiter221 = and i64 %.sroa.3.8.insert.ext.i.i.i, 3 ; 3 uses
  %i.bv = add nsw i32 %i.bg, -1
  %i.bw = icmp ult i32 %i.bv, 3
  br i1 %i.bw, label %.epil.preheader218, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter226 = and i64 %.sroa.3.8.insert.ext.i.i.i, 1020
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.3, %bb.k ] ; 6 uses
  %.079.i.i = phi double [ 0.000000e+00, %.lr.ph.i.i.new ], [ %i.cu, %bb.k ]
  %niter227 = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter227.next.3, %bb.k ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.i.i
  %i.by = load float, ptr %i.bx, align 4, !tbaa !790
  %i.bz = fpext float %i.by to double
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.i.i
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !170
  %i.cc = call double @llvm.fmuladd.f64(double %i.bz, double %i.cb, double %.079.i.i)
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next.i.i
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !790
  %i.cf = fpext float %i.ce to double
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next.i.i
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !170
  %i.ci = call double @llvm.fmuladd.f64(double %i.cf, double %i.ch, double %i.cc)
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next.i.i.1
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !790
  %i.cl = fpext float %i.ck to double
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next.i.i.1
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !170
  %i.co = call double @llvm.fmuladd.f64(double %i.cl, double %i.cn, double %i.ci)
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next.i.i.2
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !790
  %i.cr = fpext float %i.cq to double
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next.i.i.2
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !170
  %i.cu = call double @llvm.fmuladd.f64(double %i.cr, double %i.ct, double %i.co) ; 3 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter227.next.3 = add i64 %niter227, 4         ; 2 uses
  %niter227.ncmp.3 = icmp eq i64 %niter227.next.3, %unroll_iter226
  br i1 %niter227.ncmp.3, label %_ZN31cff2_private_dict_blend_opset_t4foldER34cff2_private_blend_encoder_param_t10hb_array_tIKN3CFF8number_tEE.exit.loopexit.unr-lcssa, label %bb.k, !llvm.loop !1532

_ZN31cff2_private_dict_blend_opset_t4foldER34cff2_private_blend_encoder_param_t10hb_array_tIKN3CFF8number_tEE.exit.loopexit.unr-lcssa: ; preds = %bb.k
  %lcmp.mod223.not = icmp eq i64 %xtraiter221, 0
  br i1 %lcmp.mod223.not, label %_ZN31cff2_private_dict_blend_opset_t4foldER34cff2_private_blend_encoder_param_t10hb_array_tIKN3CFF8number_tEE.exit, label %.epil.preheader218

.epil.preheader218:                               ; preds = %_ZN31cff2_private_dict_blend_opset_t4foldER34cff2_private_blend_encoder_param_t10hb_array_tIKN3CFF8number_tEE.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.3, %_ZN31cff2_private_dict_blend_opset_t4foldER34cff2_private_blend_encoder_param_t10hb_array_tIKN3CFF8number_tEE.exit.loopexit.unr-lcssa ]
  %.079.i.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i ], [ %i.cu, %_ZN31cff2_private_dict_blend_opset_t4foldER34cff2_private_blend_encoder_param_t10hb_array_tIKN3CFF8number_tEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod225 = icmp ne i64 %xtraiter221, 0
  call void @llvm.assume(i1 %lcmp.mod225)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader218
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader218 ], [ %indvars.iv.next.i.i.epil, %bb.l ] ; 3 uses
  %.079.i.i.epil = phi double [ %.079.i.i.epil.init, %.epil.preheader218 ], [ %i.da, %bb.l ]
  %epil.iter222 = phi i64 [ 0, %.epil.preheader218 ], [ %epil.iter222.next, %bb.l ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.i.i.epil
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !790
  %i.cx = fpext float %i.cw to double
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.i.i.epil
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !170
  %i.da = call double @llvm.fmuladd.f64(double %i.cx, double %i.cz, double %.079.i.i.epil) ; 2 uses
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter222.next = add i64 %epil.iter222, 1   ; 2 uses
  %epil.iter222.cmp.not = icmp eq i64 %epil.iter222.next, %xtraiter221
  br i1 %epil.iter222.cmp.not, label %_ZN31cff2_private_dict_blend_opset_t4foldER34cff2_private_blend_encoder_param_t10hb_array_tIKN3CFF8number_tEE.exit, label %bb.l, !llvm.loop !1571

_ZN31cff2_private_dict_blend_opset_t4foldER34cff2_private_blend_encoder_param_t10hb_array_tIKN3CFF8number_tEE.exit: ; preds = %_ZN31cff2_private_dict_blend_opset_t4foldER34cff2_private_blend_encoder_param_t10hb_array_tIKN3CFF8number_tEE.exit.loopexit.unr-lcssa, %bb.l, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit107
  %.1.i.i = phi double [ 0.000000e+00, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit107 ], [ %i.cu, %_ZN31cff2_private_dict_blend_opset_t4foldER34cff2_private_blend_encoder_param_t10hb_array_tIKN3CFF8number_tEE.exit.loopexit.unr-lcssa ], [ %i.da, %bb.l ]
  %i.db = load double, ptr %i.ay, align 8, !tbaa !1572
  %i.dc = fadd double %.1.i.i, %i.db              ; 2 uses
  %i.dd = call double @llvm.round.f64(double %i.dc)
  %i.de = load double, ptr %i.az, align 8, !tbaa !1573 ; 2 uses
  %i.df = fsub double %i.dd, %i.de                ; 2 uses
  store double %i.dc, ptr %i.ay, align 8, !tbaa !1572
  %i.dg = fadd double %i.de, %i.df
  store double %i.dg, ptr %i.az, align 8, !tbaa !1573
  %i.dh = fadd double %i.bq, %i.df
  store double %i.dh, ptr %7, align 8, !tbaa !170
  call void @_ZN3CFF13str_encoder_t13encode_num_tpERKNS_8number_tE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %exitcond181.not = icmp eq i64 %indvars.iv.next178, %wide.trip.count180
  br i1 %exitcond181.not, label %.critedge104, label %bb.h, !llvm.loop !1574

bb.m:                                             ; preds = %.lr.ph157, %bb.x
  %.092156 = phi i32 [ 0, %.lr.ph157 ], [ %i.dm, %bb.x ] ; 7 uses
  %i.di = add i32 %.092156, %2
  %i.dj = call i32 @llvm.usub.sat.i32(i32 512, i32 %i.di)
  %i.dk = udiv i32 %i.dj, %i.ae
  %i.dl = sub nuw i32 %3, %.092156
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.dk, i32 %i.dl) ; 3 uses
  %.not101.not = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not101.not, label %.thread, label %.preheader142, !prof !57

.preheader142:                                    ; preds = %bb.m
  %i.dm = add i32 %.sroa.speculated, %.092156     ; 5 uses
  %i.dn = icmp ult i32 %.092156, %i.dm
  br i1 %i.dn, label %.lr.ph150.preheader, label %._crit_edge154

.lr.ph150.preheader:                              ; preds = %.preheader142
  %i.do = zext i32 %.092156 to i64
  %i.dp = zext i32 %i.dm to i64
  %i.dq = mul i32 %4, %.092156
  %i.dr = add i32 %i.aq, %i.dq
  br label %.lr.ph150

.thread:                                          ; preds = %bb.m
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !603
  %i.du = add i32 %i.dt, 1
  br label %_ZN22hb_serialize_context_t5embedEPKcj.exit

.lr.ph153.preheader:                              ; preds = %_ZN31cff2_private_dict_blend_opset_t4foldER34cff2_private_blend_encoder_param_t10hb_array_tIKN3CFF8number_tEE.exit126
  %i.dv = zext i32 %.092156 to i64
  %i.dw = zext i32 %i.dm to i64
  br label %.lr.ph153

.lr.ph150:                                        ; preds = %.lr.ph150.preheader, %_ZN31cff2_private_dict_blend_opset_t4foldER34cff2_private_blend_encoder_param_t10hb_array_tIKN3CFF8number_tEE.exit126
  %indvar = phi i32 [ 0, %.lr.ph150.preheader ], [ %indvar.next, %_ZN31cff2_private_dict_blend_opset_t4foldER34cff2_private_blend_encoder_param_t10hb_array_tIKN3CFF8number_tEE.exit126 ] ; 2 uses
  %indvars.iv166 = phi i64 [ %i.do, %.lr.ph150.preheader ], [ %indvars.iv.next167, %_ZN31cff2_private_dict_blend_opset_t4foldER34cff2_private_blend_encoder_param_t10hb_array_tIKN3CFF8number_tEE.exit126 ] ; 2 uses
  %i.dx = mul i32 %4, %indvar
  %i.dy = add i32 %i.dr, %i.dx
  %i.dz = call i32 @llvm.usub.sat.i32(i32 513, i32 %i.dy)
  %i.ea = call i32 @llvm.umin.i32(i32 %4, i32 %i.dz)
  %i.eb = trunc nuw i64 %indvars.iv166 to i32     ; 2 uses
  %i.ec = mul i32 %4, %i.eb
  %i.ed = add i32 %i.af, %i.ec                    ; 2 uses
  %storemerge.i.i.i109 = call i32 @llvm.usub.sat.i32(i32 513, i32 %i.ed)
  %.sroa.speculated.i.i.i110 = call i32 @llvm.umin.i32(i32 %storemerge.i.i.i109, i32 %4) ; 2 uses
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ee ; 5 uses
  %.sroa.3.8.insert.ext.i.i.i111 = zext nneg i32 %.sroa.speculated.i.i.i110 to i64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.eg = add i32 %2, %i.eb                       ; 2 uses
  %i.eh = load i32, ptr %i.ah, align 4, !tbaa !850
  %.not.i114 = icmp ult i32 %i.eg, %i.eh
  br i1 %.not.i114, label %bb.o, label %bb.n, !prof !54

bb.n:                                             ; preds = %.lr.ph150
  store i8 1, ptr %i.ai, align 8, !tbaa !851
  store i64 %i.aj, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit116

bb.o:                                             ; preds = %.lr.ph150
  %i.ei = zext i32 %i.eg to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ei
  %.pre = load double, ptr %i.ej, align 8, !tbaa !170
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit116

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit116: ; preds = %bb.n, %bb.o
  %i.ek = phi double [ %i.ap, %bb.n ], [ %.pre, %bb.o ]
  %i.el = load i32, ptr %i.ak, align 4, !tbaa !1529 ; 2 uses
  %i.em = icmp eq i32 %i.el, %.sroa.speculated.i.i.i110
  %i.en = icmp ne i32 %i.el, 0
  %or.cond.i.i118 = and i1 %i.em, %i.en
  br i1 %or.cond.i.i118, label %.lr.ph.i.i120, label %_ZN31cff2_private_dict_blend_opset_t4foldER34cff2_private_blend_encoder_param_t10hb_array_tIKN3CFF8number_tEE.exit126, !prof !747

.lr.ph.i.i120:                                    ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit116
  %i.eo = load ptr, ptr %i.al, align 8, !tbaa !1531 ; 5 uses
  %xtraiter = and i64 %.sroa.3.8.insert.ext.i.i.i111, 3 ; 3 uses
  %i.ep = add nsw i32 %i.ea, -1
  %i.eq = icmp ult i32 %i.ep, 3
  br i1 %i.eq, label %.epil.preheader, label %.lr.ph.i.i120.new

.lr.ph.i.i120.new:                                ; preds = %.lr.ph.i.i120
  %unroll_iter = and i64 %.sroa.3.8.insert.ext.i.i.i111, 1020
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i120.new
  %indvars.iv.i.i122 = phi i64 [ 0, %.lr.ph.i.i120.new ], [ %indvars.iv.next.i.i124.3, %bb.p ] ; 6 uses
  %.079.i.i123 = phi double [ 0.000000e+00, %.lr.ph.i.i120.new ], [ %i.fo, %bb.p ]
  %niter = phi i64 [ 0, %.lr.ph.i.i120.new ], [ %niter.next.3, %bb.p ]
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv.i.i122
  %i.es = load float, ptr %i.er, align 4, !tbaa !790
  %i.et = fpext float %i.es to double
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv.i.i122
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !170
  %i.ew = call double @llvm.fmuladd.f64(double %i.et, double %i.ev, double %.079.i.i123)
  %indvars.iv.next.i.i124 = or disjoint i64 %indvars.iv.i.i122, 1 ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv.next.i.i124
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !790
  %i.ez = fpext float %i.ey to double
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv.next.i.i124
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !170
  %i.fc = call double @llvm.fmuladd.f64(double %i.ez, double %i.fb, double %i.ew)
  %indvars.iv.next.i.i124.1 = or disjoint i64 %indvars.iv.i.i122, 2 ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv.next.i.i124.1
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !790
  %i.ff = fpext float %i.fe to double
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv.next.i.i124.1
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !170
  %i.fi = call double @llvm.fmuladd.f64(double %i.ff, double %i.fh, double %i.fc)
  %indvars.iv.next.i.i124.2 = or disjoint i64 %indvars.iv.i.i122, 3 ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv.next.i.i124.2
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !790
  %i.fl = fpext float %i.fk to double
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv.next.i.i124.2
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !170
  %i.fo = call double @llvm.fmuladd.f64(double %i.fl, double %i.fn, double %i.fi) ; 3 uses
  %indvars.iv.next.i.i124.3 = add nuw nsw i64 %indvars.iv.i.i122, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN31cff2_private_dict_blend_opset_t4foldER34cff2_private_blend_encoder_param_t10hb_array_tIKN3CFF8number_tEE.exit126.loopexit.unr-lcssa, label %bb.p, !llvm.loop !1532

_ZN31cff2_private_dict_blend_opset_t4foldER34cff2_private_blend_encoder_param_t10hb_array_tIKN3CFF8number_tEE.exit126.loopexit.unr-lcssa: ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN31cff2_private_dict_blend_opset_t4foldER34cff2_private_blend_encoder_param_t10hb_array_tIKN3CFF8number_tEE.exit126, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN31cff2_private_dict_blend_opset_t4foldER34cff2_private_blend_encoder_param_t10hb_array_tIKN3CFF8number_tEE.exit126.loopexit.unr-lcssa, %.lr.ph.i.i120
  %indvars.iv.i.i122.epil.init = phi i64 [ 0, %.lr.ph.i.i120 ], [ %indvars.iv.next.i.i124.3, %_ZN31cff2_private_dict_blend_opset_t4foldER34cff2_private_blend_encoder_param_t10hb_array_tIKN3CFF8number_tEE.exit126.loopexit.unr-lcssa ]
  %.079.i.i123.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i120 ], [ %i.fo, %_ZN31cff2_private_dict_blend_opset_t4foldER34cff2_private_blend_encoder_param_t10hb_array_tIKN3CFF8number_tEE.exit126.loopexit.unr-lcssa ]
  %lcmp.mod209 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod209)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader
  %indvars.iv.i.i122.epil = phi i64 [ %indvars.iv.i.i122.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i124.epil, %bb.q ] ; 3 uses
  %.079.i.i123.epil = phi double [ %.079.i.i123.epil.init, %.epil.preheader ], [ %i.fu, %bb.q ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.q ]
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv.i.i122.epil
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !790
  %i.fr = fpext float %i.fq to double
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv.i.i122.epil
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !170
  %i.fu = call double @llvm.fmuladd.f64(double %i.fr, double %i.ft, double %.079.i.i123.epil) ; 2 uses
  %indvars.iv.next.i.i124.epil = add nuw nsw i64 %indvars.iv.i.i122.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN31cff2_private_dict_blend_opset_t4foldER34cff2_private_blend_encoder_param_t10hb_array_tIKN3CFF8number_tEE.exit126, label %bb.q, !llvm.loop !1575

_ZN31cff2_private_dict_blend_opset_t4foldER34cff2_private_blend_encoder_param_t10hb_array_tIKN3CFF8number_tEE.exit126: ; preds = %_ZN31cff2_private_dict_blend_opset_t4foldER34cff2_private_blend_encoder_param_t10hb_array_tIKN3CFF8number_tEE.exit126.loopexit.unr-lcssa, %bb.q, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit116
  %.1.i.i119 = phi double [ 0.000000e+00, %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit116 ], [ %i.fo, %_ZN31cff2_private_dict_blend_opset_t4foldER34cff2_private_blend_encoder_param_t10hb_array_tIKN3CFF8number_tEE.exit126.loopexit.unr-lcssa ], [ %i.fu, %bb.q ]
  %i.fv = load double, ptr %i.am, align 8, !tbaa !1572
  %i.fw = fadd double %.1.i.i119, %i.fv           ; 2 uses
  %i.fx = call double @llvm.round.f64(double %i.fw)
  %i.fy = load double, ptr %i.an, align 8, !tbaa !1573 ; 2 uses
  %i.fz = fsub double %i.fx, %i.fy                ; 2 uses
  store double %i.fw, ptr %i.am, align 8, !tbaa !1572
  %i.ga = fadd double %i.fy, %i.fz
  store double %i.ga, ptr %i.an, align 8, !tbaa !1573
  %i.gb = fadd double %i.ek, %i.fz
  store double %i.gb, ptr %8, align 8, !tbaa !170
  call void @_ZN3CFF13str_encoder_t13encode_num_tpERKNS_8number_tE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %i.gc = icmp samesign ult i64 %indvars.iv.next167, %i.dp
  %indvar.next = add i32 %indvar, 1
  br i1 %i.gc, label %.lr.ph150, label %.lr.ph153.preheader, !llvm.loop !1576

._crit_edge154:                                   ; preds = %bb.t, %.preheader142
  call void @_ZN3CFF13str_encoder_t10encode_intEi(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 23, ptr %i.a, align 1, !tbaa !187
  %i.gd = load ptr, ptr %6, align 8, !tbaa !188, !nonnull !113, !align !190 ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 4 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !125 ; 3 uses
  %i.gg = load i32, ptr %i.gd, align 8, !tbaa !122
  %i.gh = icmp slt i32 %i.gf, %i.gg
  br i1 %i.gh, label %bb.r, label %bb.s, !prof !54

bb.r:                                             ; preds = %._crit_edge154
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !126
  %i.gk = add nsw i32 %i.gf, 1
  store i32 %i.gk, ptr %i.ge, align 4, !tbaa !125
  %i.gl = zext i32 %i.gf to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gl
  store i8 23, ptr %i.gm, align 1, !tbaa !187
  br label %bb.x

bb.s:                                             ; preds = %._crit_edge154
  %i.gn = call noundef ptr @_ZN11hb_vector_tIhLb0EE4pushIJRhEEEPhDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.gd, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 0 uses
  br label %bb.x

.lr.ph153:                                        ; preds = %.lr.ph153.preheader, %bb.t
  %indvars.iv174 = phi i64 [ %i.dv, %.lr.ph153.preheader ], [ %indvars.iv.next175, %bb.t ] ; 2 uses
  %i.go = trunc nuw i64 %indvars.iv174 to i32
  %i.gp = mul i32 %4, %i.go
  %i.gq = add i32 %i.af, %i.gp                    ; 2 uses
  %storemerge.i.i.i127 = call i32 @llvm.usub.sat.i32(i32 513, i32 %i.gq)
  %.sroa.speculated.i.i.i128 = call i32 @llvm.umin.i32(i32 %storemerge.i.i.i127, i32 %4)
  %i.gr = zext i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.gr ; 5 uses
  br label %bb.u

bb.t:                                             ; preds = %_ZNK3CFF22cff2_instancing_plan_t19vardata_transform_t15transform_deltaEj10hb_array_tIKNS_8number_tEE.exit
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %i.gt = icmp samesign ult i64 %indvars.iv.next175, %i.dw
  br i1 %i.gt, label %.lr.ph153, label %._crit_edge154, !llvm.loop !1577

bb.u:                                             ; preds = %.lr.ph153, %_ZNK3CFF22cff2_instancing_plan_t19vardata_transform_t15transform_deltaEj10hb_array_tIKNS_8number_tEE.exit
  %indvars.iv169 = phi i64 [ 0, %.lr.ph153 ], [ %indvars.iv.next170, %_ZNK3CFF22cff2_instancing_plan_t19vardata_transform_t15transform_deltaEj10hb_array_tIKNS_8number_tEE.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.gu = load ptr, ptr %i.ao, align 8, !tbaa !1367
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr %i.gu, i64 %indvars.iv169 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !59
  %.sroa.speculated.i = call i32 @llvm.umin.i32(i32 %i.gx, i32 %.sroa.speculated.i.i.i128) ; 3 uses
  %.not.i132 = icmp eq i32 %.sroa.speculated.i, 0
  br i1 %.not.i132, label %_ZNK3CFF22cff2_instancing_plan_t19vardata_transform_t15transform_deltaEj10hb_array_tIKNS_8number_tEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !310 ; 5 uses
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated.i to i64 ; 2 uses
  %xtraiter211 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.ha = icmp samesign ult i32 %.sroa.speculated.i, 4
  br i1 %i.ha, label %.epil.preheader210, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter216 = and i64 %wide.trip.count.i, 1020
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.v ] ; 6 uses
  %.01012.i = phi double [ 0.000000e+00, %.lr.ph.i.new ], [ %i.hy, %bb.v ]
  %niter217 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter217.next.3, %bb.v ]
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv.i
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !790
  %i.hd = fpext float %i.hc to double
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv.i
  %i.hf = load double, ptr %i.he, align 8, !tbaa !170
  %i.hg = call double @llvm.fmuladd.f64(double %i.hd, double %i.hf, double %.01012.i)
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv.next.i
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !790
  %i.hj = fpext float %i.hi to double
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv.next.i
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !170
  %i.hm = call double @llvm.fmuladd.f64(double %i.hj, double %i.hl, double %i.hg)
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv.next.i.1
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !790
  %i.hp = fpext float %i.ho to double
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv.next.i.1
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !170
  %i.hs = call double @llvm.fmuladd.f64(double %i.hp, double %i.hr, double %i.hm)
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv.next.i.2
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !790
  %i.hv = fpext float %i.hu to double
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv.next.i.2
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !170
  %i.hy = call double @llvm.fmuladd.f64(double %i.hv, double %i.hx, double %i.hs) ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter217.next.3 = add i64 %niter217, 4         ; 2 uses
  %niter217.ncmp.3 = icmp eq i64 %niter217.next.3, %unroll_iter216
  br i1 %niter217.ncmp.3, label %_ZNK3CFF22cff2_instancing_plan_t19vardata_transform_t15transform_deltaEj10hb_array_tIKNS_8number_tEE.exit.loopexit.unr-lcssa, label %bb.v, !llvm.loop !1368

_ZNK3CFF22cff2_instancing_plan_t19vardata_transform_t15transform_deltaEj10hb_array_tIKNS_8number_tEE.exit.loopexit.unr-lcssa: ; preds = %bb.v
  %lcmp.mod213.not = icmp eq i64 %xtraiter211, 0
  br i1 %lcmp.mod213.not, label %_ZNK3CFF22cff2_instancing_plan_t19vardata_transform_t15transform_deltaEj10hb_array_tIKNS_8number_tEE.exit.loopexit, label %.epil.preheader210

.epil.preheader210:                               ; preds = %_ZNK3CFF22cff2_instancing_plan_t19vardata_transform_t15transform_deltaEj10hb_array_tIKNS_8number_tEE.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %_ZNK3CFF22cff2_instancing_plan_t19vardata_transform_t15transform_deltaEj10hb_array_tIKNS_8number_tEE.exit.loopexit.unr-lcssa ]
  %.01012.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.hy, %_ZNK3CFF22cff2_instancing_plan_t19vardata_transform_t15transform_deltaEj10hb_array_tIKNS_8number_tEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod215 = icmp ne i64 %xtraiter211, 0
  call void @llvm.assume(i1 %lcmp.mod215)
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.epil.preheader210
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader210 ], [ %indvars.iv.next.i.epil, %bb.w ] ; 3 uses
  %.01012.i.epil = phi double [ %.01012.i.epil.init, %.epil.preheader210 ], [ %i.ie, %bb.w ]
  %epil.iter212 = phi i64 [ 0, %.epil.preheader210 ], [ %epil.iter212.next, %bb.w ]
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv.i.epil
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !790
end_hunk_1
