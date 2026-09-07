Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-ot-cff2-table?download=true
inline.NumInlined: 1161
inline.NumDeleted: 254
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN3CFF10cs_opset_tINS_8number_tE23cff2_cs_opset_extents_tNS_20cff2_cs_interp_env_tIS1_EE20cff2_extents_param_t25cff2_path_procs_extents_tE10process_opEjRS4_RS5_:bb.a
  store double %i.gz, ptr %i.gm, align 8, !tbaa !153
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 4153 ; 2 uses
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !94, !range !129, !noundef !130
  %i.hc = trunc nuw i8 %i.hb to i1
  br i1 %i.hc, label %_ZN3CFF10cs_opset_tINS_8number_tE23cff2_cs_opset_extents_tNS_20cff2_cs_interp_env_tIS1_EE20cff2_extents_param_t25cff2_path_procs_extents_tE17process_post_moveEjRS4_RS5_.exit157, label %bb.ap

bb.ap:                                            ; preds = %_ZN3CFF12path_procs_tI25cff2_path_procs_extents_tNS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_extents_param_tE7hmovetoERS4_RS5_.exit
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 4154 ; 2 uses
  %i.he = load i8, ptr %i.hd, align 2, !tbaa !95, !range !129, !noundef !130
  %i.hf = trunc nuw i8 %i.he to i1
  br i1 %i.hf, label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE23determine_hintmask_sizeEv.exit.i156, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 4160 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !97
  %i.hi = add i32 %i.hh, %i.gx                    ; 2 uses
  store i32 %i.hi, ptr %i.hg, align 8, !tbaa !97
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 4156
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !96
  %i.hl = add i32 %i.hi, 7
  %i.hm = add i32 %i.hl, %i.hk
  %i.hn = lshr i32 %i.hm, 3
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 4164
  store i32 %i.hn, ptr %i.ho, align 4, !tbaa !98
  store i8 1, ptr %i.hd, align 2, !tbaa !95
  br label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE23determine_hintmask_sizeEv.exit.i156

_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE23determine_hintmask_sizeEv.exit.i156: ; preds = %bb.aq, %bb.ap
  store i8 1, ptr %i.ha, align 1, !tbaa !94
  br label %_ZN3CFF10cs_opset_tINS_8number_tE23cff2_cs_opset_extents_tNS_20cff2_cs_interp_env_tIS1_EE20cff2_extents_param_t25cff2_path_procs_extents_tE17process_post_moveEjRS4_RS5_.exit157

_ZN3CFF10cs_opset_tINS_8number_tE23cff2_cs_opset_extents_tNS_20cff2_cs_interp_env_tIS1_EE20cff2_extents_param_t25cff2_path_procs_extents_tE17process_post_moveEjRS4_RS5_.exit157: ; preds = %_ZN3CFF12path_procs_tI25cff2_path_procs_extents_tNS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_extents_param_tE7hmovetoERS4_RS5_.exit, %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE23determine_hintmask_sizeEv.exit.i156
  store i32 0, ptr %i.gn, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.ar:                                            ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 4456 ; 2 uses
  %.sroa.4.0.copyload.i = load double, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !153
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !148 ; 2 uses
  %.not.i.i.i158 = icmp eq i32 %i.hq, 0
  br i1 %.not.i.i.i158, label %bb.at, label %bb.as, !prof !127

bb.as:                                            ; preds = %bb.ar
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hs = add i32 %i.hq, -1                       ; 2 uses
  %i.ht = zext i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.ht
  %.pre.i159 = load double, ptr %i.hu, align 8, !tbaa !123
  %i.hv = lshr i32 %i.hs, 1
  br label %_ZN3CFF12path_procs_tI25cff2_path_procs_extents_tNS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_extents_param_tE7vmovetoERS4_RS5_.exit

bb.at:                                            ; preds = %bb.ar
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 1, ptr %i.hw, align 8, !tbaa !149
  %i.hx = load i64, ptr @_hb_NullPool, align 16   ; 2 uses
  store i64 %i.hx, ptr @_hb_CrapPool, align 16
  %i.hy = bitcast i64 %i.hx to double
  br label %_ZN3CFF12path_procs_tI25cff2_path_procs_extents_tNS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_extents_param_tE7vmovetoERS4_RS5_.exit

_ZN3CFF12path_procs_tI25cff2_path_procs_extents_tNS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_extents_param_tE7vmovetoERS4_RS5_.exit: ; preds = %bb.as, %bb.at
  %i.hz = phi i32 [ %i.hv, %bb.as ], [ 0, %bb.at ]
  %i.ia = phi double [ %.pre.i159, %bb.as ], [ %i.hy, %bb.at ]
  %i.ib = fadd double %.sroa.4.0.copyload.i, %i.ia
  store i8 0, ptr %2, align 8, !tbaa !122
  store double %i.ib, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !153
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 4153 ; 2 uses
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !94, !range !129, !noundef !130
  %i.ie = trunc nuw i8 %i.id to i1
  br i1 %i.ie, label %_ZN3CFF10cs_opset_tINS_8number_tE23cff2_cs_opset_extents_tNS_20cff2_cs_interp_env_tIS1_EE20cff2_extents_param_t25cff2_path_procs_extents_tE17process_post_moveEjRS4_RS5_.exit162, label %bb.au

bb.au:                                            ; preds = %_ZN3CFF12path_procs_tI25cff2_path_procs_extents_tNS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_extents_param_tE7vmovetoERS4_RS5_.exit
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 4154 ; 2 uses
  %i.ig = load i8, ptr %i.if, align 2, !tbaa !95, !range !129, !noundef !130
  %i.ih = trunc nuw i8 %i.ig to i1
  br i1 %i.ih, label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE23determine_hintmask_sizeEv.exit.i161, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 4160 ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !97
  %i.ik = add i32 %i.ij, %i.hz                    ; 2 uses
  store i32 %i.ik, ptr %i.ii, align 8, !tbaa !97
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 4156
  %i.im = load i32, ptr %i.il, align 4, !tbaa !96
  %i.in = add i32 %i.ik, 7
  %i.io = add i32 %i.in, %i.im
  %i.ip = lshr i32 %i.io, 3
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 4164
  store i32 %i.ip, ptr %i.iq, align 4, !tbaa !98
  store i8 1, ptr %i.if, align 2, !tbaa !95
  br label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE23determine_hintmask_sizeEv.exit.i161

_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE23determine_hintmask_sizeEv.exit.i161: ; preds = %bb.av, %bb.au
  store i8 1, ptr %i.ic, align 1, !tbaa !94
  br label %_ZN3CFF10cs_opset_tINS_8number_tE23cff2_cs_opset_extents_tNS_20cff2_cs_interp_env_tIS1_EE20cff2_extents_param_t25cff2_path_procs_extents_tE17process_post_moveEjRS4_RS5_.exit162

_ZN3CFF10cs_opset_tINS_8number_tE23cff2_cs_opset_extents_tNS_20cff2_cs_interp_env_tIS1_EE20cff2_extents_param_t25cff2_path_procs_extents_tE17process_post_moveEjRS4_RS5_.exit162: ; preds = %_ZN3CFF12path_procs_tI25cff2_path_procs_extents_tNS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_extents_param_tE7vmovetoERS4_RS5_.exit, %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE23determine_hintmask_sizeEv.exit.i161
  store i32 0, ptr %i.hp, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.aw:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI25cff2_path_procs_extents_tNS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_extents_param_tE7rlinetoERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.ir, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.ax:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI25cff2_path_procs_extents_tNS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_extents_param_tE7hlinetoERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.is, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.ay:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI25cff2_path_procs_extents_tNS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_extents_param_tE7vlinetoERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.it, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.az:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI25cff2_path_procs_extents_tNS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_extents_param_tE9rrcurvetoERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.iu, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.ba:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI25cff2_path_procs_extents_tNS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_extents_param_tE10rcurvelineERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.iv, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.bb:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI25cff2_path_procs_extents_tNS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_extents_param_tE10rlinecurveERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.iw, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.bc:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI25cff2_path_procs_extents_tNS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_extents_param_tE9vvcurvetoERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.ix, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.bd:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI25cff2_path_procs_extents_tNS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_extents_param_tE9hhcurvetoERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.iy, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.be:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI25cff2_path_procs_extents_tNS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_extents_param_tE9vhcurvetoERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.iz, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.bf:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI25cff2_path_procs_extents_tNS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_extents_param_tE9hvcurvetoERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.ja, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.bg:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI25cff2_path_procs_extents_tNS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_extents_param_tE5hflexERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.jb, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.bh:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI25cff2_path_procs_extents_tNS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_extents_param_tE4flexERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.jc, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.bi:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI25cff2_path_procs_extents_tNS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_extents_param_tE6hflex1ERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.jd, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.bj:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI25cff2_path_procs_extents_tNS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_extents_param_tE5flex1ERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.je, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.bk:                                            ; preds = %bb.a
  tail call void @_ZN3CFF7opset_tINS_8number_tEE10process_opEjRNS_12interp_env_tIS1_EE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(4128) %1)
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit: ; preds = %bb.ah, %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE23determine_hintmask_sizeEv.exit.i, %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEEixEj.exit.i144, %.critedge.i139, %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEEixEj.exit.i, %.critedge.i, %_ZN3CFF11arg_stack_tINS_8number_tEE10push_fixedEi.exit.i, %bb.h, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %_ZN3CFF10cs_opset_tINS_8number_tE23cff2_cs_opset_extents_tNS_20cff2_cs_interp_env_tIS1_EE20cff2_extents_param_t25cff2_path_procs_extents_tE17process_post_moveEjRS4_RS5_.exit162, %_ZN3CFF10cs_opset_tINS_8number_tE23cff2_cs_opset_extents_tNS_20cff2_cs_interp_env_tIS1_EE20cff2_extents_param_t25cff2_path_procs_extents_tE17process_post_moveEjRS4_RS5_.exit157, %_ZN3CFF10cs_opset_tINS_8number_tE23cff2_cs_opset_extents_tNS_20cff2_cs_interp_env_tIS1_EE20cff2_extents_param_t25cff2_path_procs_extents_tE17process_post_moveEjRS4_RS5_.exit, %bb.ae, %bb.ad, %bb.g, %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE16return_from_subrEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE13process_blendERNS_20cff2_cs_interp_env_tIS3_EERS2_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE13process_blendEv(ptr noundef nonnull align 8 dereferenceable(4523) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4488
  %i.b = load i32, ptr %i.a, align 8, !tbaa !105  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !148  ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b, !prof !127

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = add i32 %i.e, -1                         ; 3 uses
  store i32 %i.g, ptr %i.d, align 4, !tbaa !148
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %.pre.i.i = load double, ptr %i.i, align 8, !tbaa !123
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.c, align 8, !tbaa !149
  %i.j = load i64, ptr @_hb_NullPool, align 16    ; 2 uses
  store i64 %i.j, ptr @_hb_CrapPool, align 16
  %i.k = bitcast i64 %i.j to double
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i

_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i: ; preds = %bb.c, %bb.b
  %i.l = phi i32 [ %i.g, %bb.b ], [ 0, %bb.c ]    ; 4 uses
  %i.m = phi double [ %.pre.i.i, %bb.b ], [ %i.k, %bb.c ] ; 3 uses
  %i.n = fcmp ult double %i.m, f0xC1E0000000000000
  %i.o = fcmp ugt double %i.m, f0x41DFFFFFFFC00000
  %spec.select.not.i.i.not9.i = or i1 %i.n, %i.o
  %i.p = fptosi double %i.m to i32                ; 2 uses
  %i.q = icmp slt i32 %i.p, 0
  %or.cond.i = select i1 %spec.select.not.i.i.not9.i, i1 true, i1 %i.q, !prof !150
  br i1 %or.cond.i, label %.sink.split.i, label %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit, !prof !150

.sink.split.i:                                    ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i
  store i8 1, ptr %i.c, align 8, !tbaa !149
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit

_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit: ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i, %.sink.split.i
  %.0.i = phi i32 [ %i.p, %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i ], [ 0, %.sink.split.i ] ; 11 uses
  %i.r = add i32 %i.b, 1
  %i.s = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.r, i32 %.0.i) ; 2 uses
  %i.t = extractvalue { i32, i1 } %i.s, 0         ; 2 uses
  %i.u = extractvalue { i32, i1 } %i.s, 1
  %i.v = icmp ugt i32 %i.t, %i.l
  %i.w = or i1 %i.u, %i.v
  br i1 %i.w, label %bb.d, label %bb.e, !prof !127

bb.d:                                             ; preds = %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !131
  %i.z = add i32 %i.y, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !78
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEj.exit

bb.e:                                             ; preds = %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit
  %i.ab = sub nuw i32 %i.l, %i.t                  ; 23 uses
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ac = add i32 %i.ab, %.0.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 20 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4520
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !117, !range !129, !noundef !130
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %.lr.ph.split.us, label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader

_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader: ; preds = %.lr.ph
  %wide.trip.count = zext i32 %.0.i to i64        ; 6 uses
  %min.iters.check = icmp ult i32 %.0.i, 8
  br i1 %min.iters.check, label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader100, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader
  %i.ah = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.ai = trunc nsw i64 %i.ah to i32
  %i.aj = xor i32 %i.ab, -1
  %i.ak = icmp ult i32 %i.aj, %i.ai
  %i.al = icmp ugt i64 %i.ah, 4294967295
  %i.am = or i1 %i.ak, %i.al
  br i1 %i.am, label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader100, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = trunc nuw i64 %index to i32
  %i.ao = add i32 %i.ab, %i.an
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ap ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.aq, align 8, !tbaa !123
  %wide.load69 = load <2 x double>, ptr %i.ar, align 8, !tbaa !123
  %i.as = fadd <2 x double> %wide.load, zeroinitializer
  %i.at = fadd <2 x double> %wide.load69, zeroinitializer
  store <2 x double> %i.as, ptr %i.aq, align 8, !tbaa !123
  store <2 x double> %i.at, ptr %i.ar, align 8, !tbaa !123
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !188

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader100

_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader100: ; preds = %vector.scevcheck, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.prol.loopexit, label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.prol

_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.prol: ; preds = %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader100, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.prol ], [ %indvars.iv.ph, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader100 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.prol ], [ 0, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader100 ]
  %i.av = trunc nuw i64 %indvars.iv.prol to i32
  %i.aw = add i32 %i.ab, %i.av
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ax ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !123
  %i.ba = fadd double %i.az, 0.000000e+00
  store double %i.ba, ptr %i.ay, align 8, !tbaa !123
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.prol.loopexit, label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.prol, !llvm.loop !189

_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.prol.loopexit: ; preds = %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.prol, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader100
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader100 ], [ %indvars.iv.next.prol, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.prol ]
  %i.bb = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bc = icmp ugt i64 %i.bb, -4
  br i1 %i.bc, label %._crit_edge, label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader100.new

_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader100.new: ; preds = %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.prol.loopexit
  %invariant.op = add i32 1, %i.ab
  %invariant.op115 = add i32 2, %i.ab
  %invariant.op117 = add i32 3, %i.ab
  br label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !106 ; 3 uses
  %.not.i.i.us = icmp eq ptr %i.be, null
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  br i1 %.not.i.i.us, label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader, label %.lr.ph.split.us.split, !prof !127

_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader: ; preds = %.lr.ph.split.us
  %wide.trip.count56 = zext i32 %.0.i to i64      ; 6 uses
  %min.iters.check85 = icmp ult i32 %.0.i, 8
  br i1 %min.iters.check85, label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader96, label %vector.scevcheck83

vector.scevcheck83:                               ; preds = %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader
  %i.bg = add nsw i64 %wide.trip.count56, -1      ; 2 uses
  %i.bh = trunc nsw i64 %i.bg to i32
  %i.bi = xor i32 %i.ab, -1
  %i.bj = icmp ult i32 %i.bi, %i.bh
  %i.bk = icmp ugt i64 %i.bg, 4294967295
  %i.bl = or i1 %i.bj, %i.bk
  br i1 %i.bl, label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader96, label %vector.ph86

vector.ph86:                                      ; preds = %vector.scevcheck83
  %n.vec87 = and i64 %wide.trip.count56, 2147483644 ; 3 uses
  br label %vector.body88

vector.body88:                                    ; preds = %vector.body88, %vector.ph86
  %index89 = phi i64 [ 0, %vector.ph86 ], [ %index.next92, %vector.body88 ] ; 2 uses
  %i.bm = trunc nuw i64 %index89 to i32
  %i.bn = add i32 %i.ab, %i.bm
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bo ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %wide.load90 = load <2 x double>, ptr %i.bp, align 8, !tbaa !123
  %wide.load91 = load <2 x double>, ptr %i.bq, align 8, !tbaa !123
  %i.br = fadd <2 x double> %wide.load90, zeroinitializer
  %i.bs = fadd <2 x double> %wide.load91, zeroinitializer
  store <2 x double> %i.br, ptr %i.bp, align 8, !tbaa !123
  store <2 x double> %i.bs, ptr %i.bq, align 8, !tbaa !123
  %index.next92 = add nuw i64 %index89, 4         ; 2 uses
  %i.bt = icmp eq i64 %index.next92, %n.vec87
  br i1 %i.bt, label %middle.block93, label %vector.body88, !llvm.loop !190

middle.block93:                                   ; preds = %vector.body88
  %cmp.n94 = icmp eq i64 %n.vec87, %wide.trip.count56
  br i1 %cmp.n94, label %._crit_edge, label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader96

_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader96: ; preds = %vector.scevcheck83, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader, %middle.block93
  %indvars.iv53.ph = phi i64 [ 0, %vector.scevcheck83 ], [ 0, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader ], [ %n.vec87, %middle.block93 ] ; 3 uses
  %xtraiter110 = and i64 %wide.trip.count56, 3    ; 2 uses
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.prol.loopexit, label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.prol

_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.prol: ; preds = %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader96, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.prol
  %indvars.iv53.prol = phi i64 [ %indvars.iv.next54.prol, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.prol ], [ %indvars.iv53.ph, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader96 ] ; 2 uses
  %prol.iter112 = phi i64 [ %prol.iter112.next, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.prol ], [ 0, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader96 ]
  %i.bu = trunc nuw i64 %indvars.iv53.prol to i32
  %i.bv = add i32 %i.ab, %i.bu
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bw ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !123
  %i.bz = fadd double %i.by, 0.000000e+00
  store double %i.bz, ptr %i.bx, align 8, !tbaa !123
  %indvars.iv.next54.prol = add nuw nsw i64 %indvars.iv53.prol, 1 ; 2 uses
  %prol.iter112.next = add i64 %prol.iter112, 1   ; 2 uses
  %prol.iter112.cmp.not = icmp eq i64 %prol.iter112.next, %xtraiter110
  br i1 %prol.iter112.cmp.not, label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.prol.loopexit, label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.prol, !llvm.loop !191

_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.prol.loopexit: ; preds = %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.prol, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader96
  %indvars.iv53.unr = phi i64 [ %indvars.iv53.ph, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader96 ], [ %indvars.iv.next54.prol, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.prol ]
  %i.ca = sub nsw i64 %indvars.iv53.ph, %wide.trip.count56
  %i.cb = icmp ugt i64 %i.ca, -4
  br i1 %i.cb, label %._crit_edge, label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader96.new

_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader96.new: ; preds = %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.prol.loopexit
  %invariant.op125 = add i32 1, %i.ab
  %invariant.op127 = add i32 2, %i.ab
  %invariant.op129 = add i32 3, %i.ab
  br label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us

_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us: ; preds = %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader96.new
  %indvars.iv53 = phi i64 [ %indvars.iv53.unr, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader96.new ], [ %indvars.iv.next54.3, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us ] ; 5 uses
  %i.cc = trunc nuw i64 %indvars.iv53 to i32
  %i.cd = add i32 %i.ab, %i.cc
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ce ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !123
  %i.ch = fadd double %i.cg, 0.000000e+00
  store double %i.ch, ptr %i.cf, align 8, !tbaa !123
  %i.ci = trunc i64 %indvars.iv53 to i32
  %.reass126 = add i32 %i.ci, %invariant.op125
  %i.cj = zext i32 %.reass126 to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.cj ; 2 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !123
  %i.cm = fadd double %i.cl, 0.000000e+00
  store double %i.cm, ptr %i.ck, align 8, !tbaa !123
  %i.cn = trunc i64 %indvars.iv53 to i32
  %.reass128 = add i32 %i.cn, %invariant.op127
  %i.co = zext i32 %.reass128 to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.co ; 2 uses
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !123
  %i.cr = fadd double %i.cq, 0.000000e+00
  store double %i.cr, ptr %i.cp, align 8, !tbaa !123
  %i.cs = trunc i64 %indvars.iv53 to i32
  %.reass130 = add i32 %i.cs, %invariant.op129
  %i.ct = zext i32 %.reass130 to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ct ; 2 uses
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !123
  %i.cw = fadd double %i.cv, 0.000000e+00
  store double %i.cw, ptr %i.cu, align 8, !tbaa !123
  %indvars.iv.next54.3 = add nuw nsw i64 %indvars.iv53, 4 ; 2 uses
  %exitcond57.not.3 = icmp eq i64 %indvars.iv.next54.3, %wide.trip.count56
  br i1 %exitcond57.not.3, label %._crit_edge, label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us, !llvm.loop !192

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.cx = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !138
  %.fr37 = freeze i32 %i.cy                       ; 2 uses
  %.not38 = icmp eq i32 %.fr37, 0
  %wide.trip.count51 = zext i32 %.0.i to i64      ; 7 uses
  br i1 %.not38, label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader, label %.lr.ph.split.us.split.split.preheader

.lr.ph.split.us.split.split.preheader:            ; preds = %.lr.ph.split.us.split
  %2 = tail call i32 @llvm.usub.sat.i32(i32 %i.e, i32 1)
  %i.cz = mul i32 %.0.i, %i.b
  %i.da = sub i32 %2, %i.cz
  br label %.lr.ph.split.us.split.split

_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader: ; preds = %.lr.ph.split.us.split
  %min.iters.check72 = icmp ult i32 %.0.i, 8
  br i1 %min.iters.check72, label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader97, label %vector.scevcheck70

vector.scevcheck70:                               ; preds = %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader
  %i.db = add nsw i64 %wide.trip.count51, -1      ; 2 uses
  %i.dc = trunc i64 %i.db to i32
  %i.dd = xor i32 %i.ab, -1
  %i.de = icmp ult i32 %i.dd, %i.dc
  %i.df = icmp ugt i64 %i.db, 4294967295
  %i.dg = or i1 %i.de, %i.df
  br i1 %i.dg, label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader97, label %vector.ph73

vector.ph73:                                      ; preds = %vector.scevcheck70
  %n.vec74 = and i64 %wide.trip.count51, 4294967292 ; 3 uses
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph73
  %index76 = phi i64 [ 0, %vector.ph73 ], [ %index.next79, %vector.body75 ] ; 2 uses
  %i.dh = trunc nuw i64 %index76 to i32
  %i.di = add i32 %i.ab, %i.dh
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.dj ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %wide.load77 = load <2 x double>, ptr %i.dk, align 8, !tbaa !123
  %wide.load78 = load <2 x double>, ptr %i.dl, align 8, !tbaa !123
  %i.dm = fadd <2 x double> %wide.load77, zeroinitializer
  %i.dn = fadd <2 x double> %wide.load78, zeroinitializer
  store <2 x double> %i.dm, ptr %i.dk, align 8, !tbaa !123
  store <2 x double> %i.dn, ptr %i.dl, align 8, !tbaa !123
  %index.next79 = add nuw i64 %index76, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next79, %n.vec74
  br i1 %i.do, label %middle.block80, label %vector.body75, !llvm.loop !193

middle.block80:                                   ; preds = %vector.body75
  %cmp.n81 = icmp eq i64 %n.vec74, %wide.trip.count51
  br i1 %cmp.n81, label %._crit_edge, label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader97

_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader97: ; preds = %vector.scevcheck70, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader, %middle.block80
  %indvars.iv48.ph = phi i64 [ 0, %vector.scevcheck70 ], [ 0, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader ], [ %n.vec74, %middle.block80 ] ; 3 uses
  %xtraiter107 = and i64 %wide.trip.count51, 3    ; 2 uses
  %lcmp.mod108.not = icmp eq i64 %xtraiter107, 0
  br i1 %lcmp.mod108.not, label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.prol.loopexit, label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.prol

_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.prol: ; preds = %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader97, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.prol
  %indvars.iv48.prol = phi i64 [ %indvars.iv.next49.prol, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.prol ], [ %indvars.iv48.ph, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader97 ] ; 2 uses
  %prol.iter109 = phi i64 [ %prol.iter109.next, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.prol ], [ 0, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader97 ]
  %i.dp = trunc nuw i64 %indvars.iv48.prol to i32
  %i.dq = add i32 %i.ab, %i.dp
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.dr ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !123
  %i.du = fadd double %i.dt, 0.000000e+00
  store double %i.du, ptr %i.ds, align 8, !tbaa !123
  %indvars.iv.next49.prol = add nuw nsw i64 %indvars.iv48.prol, 1 ; 2 uses
  %prol.iter109.next = add i64 %prol.iter109, 1   ; 2 uses
  %prol.iter109.cmp.not = icmp eq i64 %prol.iter109.next, %xtraiter107
  br i1 %prol.iter109.cmp.not, label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.prol.loopexit, label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.prol, !llvm.loop !194

_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.prol.loopexit: ; preds = %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.prol, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader97
  %indvars.iv48.unr = phi i64 [ %indvars.iv48.ph, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader97 ], [ %indvars.iv.next49.prol, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.prol ]
  %i.dv = sub nsw i64 %indvars.iv48.ph, %wide.trip.count51
  %i.dw = icmp ugt i64 %i.dv, -4
  br i1 %i.dw, label %._crit_edge, label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader97.new

_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader97.new: ; preds = %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.prol.loopexit
  %invariant.op119 = add i32 1, %i.ab
  %invariant.op121 = add i32 2, %i.ab
  %invariant.op123 = add i32 3, %i.ab
  br label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35

_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35: ; preds = %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader97.new
  %indvars.iv48 = phi i64 [ %indvars.iv48.unr, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader97.new ], [ %indvars.iv.next49.3, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35 ] ; 5 uses
  %i.dx = trunc nuw i64 %indvars.iv48 to i32
  %i.dy = add i32 %i.ab, %i.dx
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.dz ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !123
  %i.ec = fadd double %i.eb, 0.000000e+00
  store double %i.ec, ptr %i.ea, align 8, !tbaa !123
  %i.ed = trunc i64 %indvars.iv48 to i32
  %.reass120 = add i32 %i.ed, %invariant.op119
  %i.ee = zext i32 %.reass120 to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ee ; 2 uses
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !123
  %i.eh = fadd double %i.eg, 0.000000e+00
  store double %i.eh, ptr %i.ef, align 8, !tbaa !123
  %i.ei = trunc i64 %indvars.iv48 to i32
  %.reass122 = add i32 %i.ei, %invariant.op121
  %i.ej = zext i32 %.reass122 to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ej ; 2 uses
  %i.el = load double, ptr %i.ek, align 8, !tbaa !123
  %i.em = fadd double %i.el, 0.000000e+00
  store double %i.em, ptr %i.ek, align 8, !tbaa !123
  %i.en = trunc i64 %indvars.iv48 to i32
  %.reass124 = add i32 %i.en, %invariant.op123
  %i.eo = zext i32 %.reass124 to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.eo ; 2 uses
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !123
  %i.er = fadd double %i.eq, 0.000000e+00
  store double %i.er, ptr %i.ep, align 8, !tbaa !123
  %indvars.iv.next49.3 = add nuw nsw i64 %indvars.iv48, 4 ; 2 uses
  %exitcond52.not.3 = icmp eq i64 %indvars.iv.next49.3, %wide.trip.count51
  br i1 %exitcond52.not.3, label %._crit_edge, label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35, !llvm.loop !195

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split.split.preheader, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us ], [ 0, %.lr.ph.split.us.split.split.preheader ] ; 3 uses
  %i.es = trunc nuw i64 %indvars.iv43 to i32      ; 2 uses
  %i.et = mul i32 %i.b, %i.es
  %i.eu = add i32 %i.ac, %i.et                    ; 2 uses
  %storemerge.i.i.i.us = tail call i32 @llvm.usub.sat.i32(i32 513, i32 %i.eu)
  %.sroa.speculated.i.i.i.us = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i.i.us, i32 %i.b) ; 2 uses
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ev ; 5 uses
  %.sroa.3.8.insert.ext.i.i.i.us = zext nneg i32 %.sroa.speculated.i.i.i.us to i64 ; 2 uses
  %i.ex = add i32 %i.ab, %i.es
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ey ; 2 uses
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !123
  %i.fb = icmp eq i32 %.fr37, %.sroa.speculated.i.i.i.us
  br i1 %i.fb, label %.lr.ph.i.i.us, label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us, !prof !158

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.split.us.split.split
  %i.fc = trunc i64 %indvars.iv43 to i32
  %i.fd = mul i32 %i.b, %i.fc
  %i.fe = add i32 %i.fd, %i.da
  %i.ff = tail call i32 @llvm.usub.sat.i32(i32 513, i32 %i.fe)
  %i.fg = tail call i32 @llvm.umin.i32(i32 %i.b, i32 %i.ff)
  %i.fh = load ptr, ptr %i.bf, align 8, !tbaa !140 ; 5 uses
  %xtraiter103 = and i64 %.sroa.3.8.insert.ext.i.i.i.us, 3 ; 3 uses
  %i.fi = add nsw i32 %i.fg, -1
  %i.fj = icmp ult i32 %i.fi, 3
  br i1 %i.fj, label %.epil.preheader, label %.lr.ph.i.i.us.new

.lr.ph.i.i.us.new:                                ; preds = %.lr.ph.i.i.us
  %unroll_iter = and i64 %.sroa.3.8.insert.ext.i.i.i.us, 1020
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.us.new
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us.new ], [ %indvars.iv.next.i.i.us.3, %bb.f ] ; 6 uses
  %.079.i.i.us = phi double [ 0.000000e+00, %.lr.ph.i.i.us.new ], [ %i.gh, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.us.new ], [ %niter.next.3, %bb.f ]
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv.i.i.us
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !135
  %i.fm = fpext float %i.fl to double
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.i.i.us
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !123
  %i.fp = tail call double @llvm.fmuladd.f64(double %i.fm, double %i.fo, double %.079.i.i.us)
  %indvars.iv.next.i.i.us = or disjoint i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv.next.i.i.us
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !135
  %i.fs = fpext float %i.fr to double
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.next.i.i.us
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !123
  %i.fv = tail call double @llvm.fmuladd.f64(double %i.fs, double %i.fu, double %i.fp)
  %indvars.iv.next.i.i.us.1 = or disjoint i64 %indvars.iv.i.i.us, 2 ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv.next.i.i.us.1
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !135
  %i.fy = fpext float %i.fx to double
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.next.i.i.us.1
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !123
  %i.gb = tail call double @llvm.fmuladd.f64(double %i.fy, double %i.ga, double %i.fv)
  %indvars.iv.next.i.i.us.2 = or disjoint i64 %indvars.iv.i.i.us, 3 ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv.next.i.i.us.2
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !135
  %i.ge = fpext float %i.gd to double
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.next.i.i.us.2
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !123
  %i.gh = tail call double @llvm.fmuladd.f64(double %i.ge, double %i.gg, double %i.gb) ; 3 uses
  %indvars.iv.next.i.i.us.3 = add nuw nsw i64 %indvars.iv.i.i.us, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.loopexit.unr-lcssa, label %bb.f, !llvm.loop !0

_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod104.not = icmp eq i64 %xtraiter103, 0
  br i1 %lcmp.mod104.not, label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.loopexit.unr-lcssa, %.lr.ph.i.i.us
  %indvars.iv.i.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us.3, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.loopexit.unr-lcssa ]
  %.079.i.i.us.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i.us ], [ %i.gh, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.loopexit.unr-lcssa ]
  %lcmp.mod106 = icmp ne i64 %xtraiter103, 0
  tail call void @llvm.assume(i1 %lcmp.mod106)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv.i.i.us.epil = phi i64 [ %indvars.iv.i.i.us.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.us.epil, %bb.g ] ; 3 uses
  %.079.i.i.us.epil = phi double [ %.079.i.i.us.epil.init, %.epil.preheader ], [ %i.gn, %bb.g ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv.i.i.us.epil
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !135
  %i.gk = fpext float %i.gj to double
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.i.i.us.epil
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !123
  %i.gn = tail call double @llvm.fmuladd.f64(double %i.gk, double %i.gm, double %.079.i.i.us.epil) ; 2 uses
  %indvars.iv.next.i.i.us.epil = add nuw nsw i64 %indvars.iv.i.i.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter103
end_hunk_0
begin_hunk_1_@_ZN3CFF10cs_opset_tINS_8number_tE20cff2_cs_opset_path_tNS_20cff2_cs_interp_env_tIS1_EE17cff2_path_param_t22cff2_path_procs_path_tE10process_opEjRS4_RS5_:bb.a
  store i32 %i.fn, ptr %i.fl, align 8, !tbaa !97
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 4156
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !96
  %i.fq = add i32 %i.fn, 7
  %i.fr = add i32 %i.fq, %i.fp
  %i.fs = lshr i32 %i.fr, 3
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 4164
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !98
  store i8 1, ptr %i.ff, align 2, !tbaa !95
  br label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE23determine_hintmask_sizeEv.exit.i149

_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE23determine_hintmask_sizeEv.exit.i149: ; preds = %bb.ak, %bb.aj
  store i8 1, ptr %i.fc, align 1, !tbaa !94
  br label %_ZN3CFF10cs_opset_tINS_8number_tE20cff2_cs_opset_path_tNS_20cff2_cs_interp_env_tIS1_EE17cff2_path_param_t22cff2_path_procs_path_tE17process_post_moveEjRS4_RS5_.exit

_ZN3CFF10cs_opset_tINS_8number_tE20cff2_cs_opset_path_tNS_20cff2_cs_interp_env_tIS1_EE17cff2_path_param_t22cff2_path_procs_path_tE17process_post_moveEjRS4_RS5_.exit: ; preds = %bb.ai, %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE23determine_hintmask_sizeEv.exit.i149
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.fu, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.al:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE7hmovetoERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 4153 ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !94, !range !129, !noundef !130
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %_ZN3CFF10cs_opset_tINS_8number_tE20cff2_cs_opset_path_tNS_20cff2_cs_interp_env_tIS1_EE17cff2_path_param_t22cff2_path_procs_path_tE17process_post_moveEjRS4_RS5_.exit151, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 4154 ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 2, !tbaa !95, !range !129, !noundef !130
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE23determine_hintmask_sizeEv.exit.i150, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !148
  %i.gd = lshr i32 %i.gc, 1
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 4160 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !97
  %i.gg = add i32 %i.gf, %i.gd                    ; 2 uses
  store i32 %i.gg, ptr %i.ge, align 8, !tbaa !97
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 4156
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !96
  %i.gj = add i32 %i.gg, 7
  %i.gk = add i32 %i.gj, %i.gi
  %i.gl = lshr i32 %i.gk, 3
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 4164
  store i32 %i.gl, ptr %i.gm, align 4, !tbaa !98
  store i8 1, ptr %i.fy, align 2, !tbaa !95
  br label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE23determine_hintmask_sizeEv.exit.i150

_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE23determine_hintmask_sizeEv.exit.i150: ; preds = %bb.an, %bb.am
  store i8 1, ptr %i.fv, align 1, !tbaa !94
  br label %_ZN3CFF10cs_opset_tINS_8number_tE20cff2_cs_opset_path_tNS_20cff2_cs_interp_env_tIS1_EE17cff2_path_param_t22cff2_path_procs_path_tE17process_post_moveEjRS4_RS5_.exit151

_ZN3CFF10cs_opset_tINS_8number_tE20cff2_cs_opset_path_tNS_20cff2_cs_interp_env_tIS1_EE17cff2_path_param_t22cff2_path_procs_path_tE17process_post_moveEjRS4_RS5_.exit151: ; preds = %bb.al, %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE23determine_hintmask_sizeEv.exit.i150
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.gn, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.ao:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE7vmovetoERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 4153 ; 2 uses
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !94, !range !129, !noundef !130
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %_ZN3CFF10cs_opset_tINS_8number_tE20cff2_cs_opset_path_tNS_20cff2_cs_interp_env_tIS1_EE17cff2_path_param_t22cff2_path_procs_path_tE17process_post_moveEjRS4_RS5_.exit153, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 4154 ; 2 uses
  %i.gs = load i8, ptr %i.gr, align 2, !tbaa !95, !range !129, !noundef !130
  %i.gt = trunc nuw i8 %i.gs to i1
  br i1 %i.gt, label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE23determine_hintmask_sizeEv.exit.i152, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !148
  %i.gw = lshr i32 %i.gv, 1
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 4160 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !97
  %i.gz = add i32 %i.gy, %i.gw                    ; 2 uses
  store i32 %i.gz, ptr %i.gx, align 8, !tbaa !97
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 4156
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !96
  %i.hc = add i32 %i.gz, 7
  %i.hd = add i32 %i.hc, %i.hb
  %i.he = lshr i32 %i.hd, 3
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 4164
  store i32 %i.he, ptr %i.hf, align 4, !tbaa !98
  store i8 1, ptr %i.gr, align 2, !tbaa !95
  br label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE23determine_hintmask_sizeEv.exit.i152

_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE23determine_hintmask_sizeEv.exit.i152: ; preds = %bb.aq, %bb.ap
  store i8 1, ptr %i.go, align 1, !tbaa !94
  br label %_ZN3CFF10cs_opset_tINS_8number_tE20cff2_cs_opset_path_tNS_20cff2_cs_interp_env_tIS1_EE17cff2_path_param_t22cff2_path_procs_path_tE17process_post_moveEjRS4_RS5_.exit153

_ZN3CFF10cs_opset_tINS_8number_tE20cff2_cs_opset_path_tNS_20cff2_cs_interp_env_tIS1_EE17cff2_path_param_t22cff2_path_procs_path_tE17process_post_moveEjRS4_RS5_.exit153: ; preds = %bb.ao, %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE23determine_hintmask_sizeEv.exit.i152
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.hg, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.ar:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE7rlinetoERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.hh, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.as:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE7hlinetoERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.hi, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.at:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE7vlinetoERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.hj, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.au:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE9rrcurvetoERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.hk, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.av:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE10rcurvelineERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.hl, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.aw:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE10rlinecurveERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.hm, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.ax:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE9vvcurvetoERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.hn, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.ay:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE9hhcurvetoERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.ho, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.az:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE9vhcurvetoERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.hp, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.ba:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE9hvcurvetoERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.hq, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.bb:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE5hflexERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.hr, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.bc:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE4flexERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.hs, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.bd:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE6hflex1ERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.ht, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.be:                                            ; preds = %bb.a
  tail call void @_ZN3CFF12path_procs_tI22cff2_path_procs_path_tNS_20cff2_cs_interp_env_tINS_8number_tEEE17cff2_path_param_tE5flex1ERS4_RS5_(ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.hu, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.bf:                                            ; preds = %bb.a
  tail call void @_ZN3CFF7opset_tINS_8number_tEE10process_opEjRNS_12interp_env_tIS1_EE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(4128) %1)
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit: ; preds = %bb.ah, %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE23determine_hintmask_sizeEv.exit.i, %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEEixEj.exit.i144, %.critedge.i139, %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEEixEj.exit.i, %.critedge.i, %_ZN3CFF11arg_stack_tINS_8number_tEE10push_fixedEi.exit.i, %bb.h, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %_ZN3CFF10cs_opset_tINS_8number_tE20cff2_cs_opset_path_tNS_20cff2_cs_interp_env_tIS1_EE17cff2_path_param_t22cff2_path_procs_path_tE17process_post_moveEjRS4_RS5_.exit153, %_ZN3CFF10cs_opset_tINS_8number_tE20cff2_cs_opset_path_tNS_20cff2_cs_interp_env_tIS1_EE17cff2_path_param_t22cff2_path_procs_path_tE17process_post_moveEjRS4_RS5_.exit151, %_ZN3CFF10cs_opset_tINS_8number_tE20cff2_cs_opset_path_tNS_20cff2_cs_interp_env_tIS1_EE17cff2_path_param_t22cff2_path_procs_path_tE17process_post_moveEjRS4_RS5_.exit, %bb.ae, %bb.ad, %bb.g, %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE16return_from_subrEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE13process_blendERNS_20cff2_cs_interp_env_tIS3_EERS2_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE13process_blendEv(ptr noundef nonnull align 8 dereferenceable(4523) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4488
  %i.b = load i32, ptr %i.a, align 8, !tbaa !105  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !148  ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b, !prof !127

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = add i32 %i.e, -1                         ; 3 uses
  store i32 %i.g, ptr %i.d, align 4, !tbaa !148
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %.pre.i.i = load double, ptr %i.i, align 8, !tbaa !123
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.c, align 8, !tbaa !149
  %i.j = load i64, ptr @_hb_NullPool, align 16    ; 2 uses
  store i64 %i.j, ptr @_hb_CrapPool, align 16
  %i.k = bitcast i64 %i.j to double
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i

_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i: ; preds = %bb.c, %bb.b
  %i.l = phi i32 [ %i.g, %bb.b ], [ 0, %bb.c ]    ; 4 uses
  %i.m = phi double [ %.pre.i.i, %bb.b ], [ %i.k, %bb.c ] ; 3 uses
  %i.n = fcmp ult double %i.m, f0xC1E0000000000000
  %i.o = fcmp ugt double %i.m, f0x41DFFFFFFFC00000
  %spec.select.not.i.i.not9.i = or i1 %i.n, %i.o
  %i.p = fptosi double %i.m to i32                ; 2 uses
  %i.q = icmp slt i32 %i.p, 0
  %or.cond.i = select i1 %spec.select.not.i.i.not9.i, i1 true, i1 %i.q, !prof !150
  br i1 %or.cond.i, label %.sink.split.i, label %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit, !prof !150

.sink.split.i:                                    ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i
  store i8 1, ptr %i.c, align 8, !tbaa !149
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit

_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit: ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i, %.sink.split.i
  %.0.i = phi i32 [ %i.p, %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i ], [ 0, %.sink.split.i ] ; 11 uses
  %i.r = add i32 %i.b, 1
  %i.s = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.r, i32 %.0.i) ; 2 uses
  %i.t = extractvalue { i32, i1 } %i.s, 0         ; 2 uses
  %i.u = extractvalue { i32, i1 } %i.s, 1
  %i.v = icmp ugt i32 %i.t, %i.l
  %i.w = or i1 %i.u, %i.v
  br i1 %i.w, label %bb.d, label %bb.e, !prof !127

bb.d:                                             ; preds = %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !131
  %i.z = add i32 %i.y, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !78
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEj.exit

bb.e:                                             ; preds = %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit
  %i.ab = sub nuw i32 %i.l, %i.t                  ; 23 uses
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ac = add i32 %i.ab, %.0.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 20 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4520
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !117, !range !129, !noundef !130
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %.lr.ph.split.us, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader

_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader: ; preds = %.lr.ph
  %wide.trip.count = zext i32 %.0.i to i64        ; 6 uses
  %min.iters.check = icmp ult i32 %.0.i, 8
  br i1 %min.iters.check, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader100, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader
  %i.ah = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.ai = trunc nsw i64 %i.ah to i32
  %i.aj = xor i32 %i.ab, -1
  %i.ak = icmp ult i32 %i.aj, %i.ai
  %i.al = icmp ugt i64 %i.ah, 4294967295
  %i.am = or i1 %i.ak, %i.al
  br i1 %i.am, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader100, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = trunc nuw i64 %index to i32
  %i.ao = add i32 %i.ab, %i.an
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ap ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.aq, align 8, !tbaa !123
  %wide.load69 = load <2 x double>, ptr %i.ar, align 8, !tbaa !123
  %i.as = fadd <2 x double> %wide.load, zeroinitializer
  %i.at = fadd <2 x double> %wide.load69, zeroinitializer
  store <2 x double> %i.as, ptr %i.aq, align 8, !tbaa !123
  store <2 x double> %i.at, ptr %i.ar, align 8, !tbaa !123
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !221

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader100

_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader100: ; preds = %vector.scevcheck, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.prol.loopexit, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.prol

_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.prol: ; preds = %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader100, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.prol ], [ %indvars.iv.ph, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader100 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.prol ], [ 0, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader100 ]
  %i.av = trunc nuw i64 %indvars.iv.prol to i32
  %i.aw = add i32 %i.ab, %i.av
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ax ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !123
  %i.ba = fadd double %i.az, 0.000000e+00
  store double %i.ba, ptr %i.ay, align 8, !tbaa !123
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.prol.loopexit, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.prol, !llvm.loop !222

_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.prol.loopexit: ; preds = %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.prol, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader100
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader100 ], [ %indvars.iv.next.prol, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.prol ]
  %i.bb = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bc = icmp ugt i64 %i.bb, -4
  br i1 %i.bc, label %._crit_edge, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader100.new

_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.preheader100.new: ; preds = %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.prol.loopexit
  %invariant.op = add i32 1, %i.ab
  %invariant.op115 = add i32 2, %i.ab
  %invariant.op117 = add i32 3, %i.ab
  br label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !106 ; 3 uses
  %.not.i.i.us = icmp eq ptr %i.be, null
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  br i1 %.not.i.i.us, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader, label %.lr.ph.split.us.split, !prof !127

_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader: ; preds = %.lr.ph.split.us
  %wide.trip.count56 = zext i32 %.0.i to i64      ; 6 uses
  %min.iters.check85 = icmp ult i32 %.0.i, 8
  br i1 %min.iters.check85, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader96, label %vector.scevcheck83

vector.scevcheck83:                               ; preds = %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader
  %i.bg = add nsw i64 %wide.trip.count56, -1      ; 2 uses
  %i.bh = trunc nsw i64 %i.bg to i32
  %i.bi = xor i32 %i.ab, -1
  %i.bj = icmp ult i32 %i.bi, %i.bh
  %i.bk = icmp ugt i64 %i.bg, 4294967295
  %i.bl = or i1 %i.bj, %i.bk
  br i1 %i.bl, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader96, label %vector.ph86

vector.ph86:                                      ; preds = %vector.scevcheck83
  %n.vec87 = and i64 %wide.trip.count56, 2147483644 ; 3 uses
  br label %vector.body88

vector.body88:                                    ; preds = %vector.body88, %vector.ph86
  %index89 = phi i64 [ 0, %vector.ph86 ], [ %index.next92, %vector.body88 ] ; 2 uses
  %i.bm = trunc nuw i64 %index89 to i32
  %i.bn = add i32 %i.ab, %i.bm
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bo ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %wide.load90 = load <2 x double>, ptr %i.bp, align 8, !tbaa !123
  %wide.load91 = load <2 x double>, ptr %i.bq, align 8, !tbaa !123
  %i.br = fadd <2 x double> %wide.load90, zeroinitializer
  %i.bs = fadd <2 x double> %wide.load91, zeroinitializer
  store <2 x double> %i.br, ptr %i.bp, align 8, !tbaa !123
  store <2 x double> %i.bs, ptr %i.bq, align 8, !tbaa !123
  %index.next92 = add nuw i64 %index89, 4         ; 2 uses
  %i.bt = icmp eq i64 %index.next92, %n.vec87
  br i1 %i.bt, label %middle.block93, label %vector.body88, !llvm.loop !223

middle.block93:                                   ; preds = %vector.body88
  %cmp.n94 = icmp eq i64 %n.vec87, %wide.trip.count56
  br i1 %cmp.n94, label %._crit_edge, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader96

_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader96: ; preds = %vector.scevcheck83, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader, %middle.block93
  %indvars.iv53.ph = phi i64 [ 0, %vector.scevcheck83 ], [ 0, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader ], [ %n.vec87, %middle.block93 ] ; 3 uses
  %xtraiter110 = and i64 %wide.trip.count56, 3    ; 2 uses
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.prol.loopexit, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.prol

_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.prol: ; preds = %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader96, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.prol
  %indvars.iv53.prol = phi i64 [ %indvars.iv.next54.prol, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.prol ], [ %indvars.iv53.ph, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader96 ] ; 2 uses
  %prol.iter112 = phi i64 [ %prol.iter112.next, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.prol ], [ 0, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader96 ]
  %i.bu = trunc nuw i64 %indvars.iv53.prol to i32
  %i.bv = add i32 %i.ab, %i.bu
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bw ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !123
  %i.bz = fadd double %i.by, 0.000000e+00
  store double %i.bz, ptr %i.bx, align 8, !tbaa !123
  %indvars.iv.next54.prol = add nuw nsw i64 %indvars.iv53.prol, 1 ; 2 uses
  %prol.iter112.next = add i64 %prol.iter112, 1   ; 2 uses
  %prol.iter112.cmp.not = icmp eq i64 %prol.iter112.next, %xtraiter110
  br i1 %prol.iter112.cmp.not, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.prol.loopexit, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.prol, !llvm.loop !224

_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.prol.loopexit: ; preds = %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.prol, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader96
  %indvars.iv53.unr = phi i64 [ %indvars.iv53.ph, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader96 ], [ %indvars.iv.next54.prol, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.prol ]
  %i.ca = sub nsw i64 %indvars.iv53.ph, %wide.trip.count56
  %i.cb = icmp ugt i64 %i.ca, -4
  br i1 %i.cb, label %._crit_edge, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader96.new

_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader96.new: ; preds = %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.prol.loopexit
  %invariant.op125 = add i32 1, %i.ab
  %invariant.op127 = add i32 2, %i.ab
  %invariant.op129 = add i32 3, %i.ab
  br label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us

_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us: ; preds = %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader96.new
  %indvars.iv53 = phi i64 [ %indvars.iv53.unr, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us.preheader96.new ], [ %indvars.iv.next54.3, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us ] ; 5 uses
  %i.cc = trunc nuw i64 %indvars.iv53 to i32
  %i.cd = add i32 %i.ab, %i.cc
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ce ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !123
  %i.ch = fadd double %i.cg, 0.000000e+00
  store double %i.ch, ptr %i.cf, align 8, !tbaa !123
  %i.ci = trunc i64 %indvars.iv53 to i32
  %.reass126 = add i32 %i.ci, %invariant.op125
  %i.cj = zext i32 %.reass126 to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.cj ; 2 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !123
  %i.cm = fadd double %i.cl, 0.000000e+00
  store double %i.cm, ptr %i.ck, align 8, !tbaa !123
  %i.cn = trunc i64 %indvars.iv53 to i32
  %.reass128 = add i32 %i.cn, %invariant.op127
  %i.co = zext i32 %.reass128 to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.co ; 2 uses
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !123
  %i.cr = fadd double %i.cq, 0.000000e+00
  store double %i.cr, ptr %i.cp, align 8, !tbaa !123
  %i.cs = trunc i64 %indvars.iv53 to i32
  %.reass130 = add i32 %i.cs, %invariant.op129
  %i.ct = zext i32 %.reass130 to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ct ; 2 uses
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !123
  %i.cw = fadd double %i.cv, 0.000000e+00
  store double %i.cw, ptr %i.cu, align 8, !tbaa !123
  %indvars.iv.next54.3 = add nuw nsw i64 %indvars.iv53, 4 ; 2 uses
  %exitcond57.not.3 = icmp eq i64 %indvars.iv.next54.3, %wide.trip.count56
  br i1 %exitcond57.not.3, label %._crit_edge, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us, !llvm.loop !225

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.cx = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !138
  %.fr37 = freeze i32 %i.cy                       ; 2 uses
  %.not38 = icmp eq i32 %.fr37, 0
  %wide.trip.count51 = zext i32 %.0.i to i64      ; 7 uses
  br i1 %.not38, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader, label %.lr.ph.split.us.split.split.preheader

.lr.ph.split.us.split.split.preheader:            ; preds = %.lr.ph.split.us.split
  %2 = tail call i32 @llvm.usub.sat.i32(i32 %i.e, i32 1)
  %i.cz = mul i32 %.0.i, %i.b
  %i.da = sub i32 %2, %i.cz
  br label %.lr.ph.split.us.split.split

_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader: ; preds = %.lr.ph.split.us.split
  %min.iters.check72 = icmp ult i32 %.0.i, 8
  br i1 %min.iters.check72, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader97, label %vector.scevcheck70

vector.scevcheck70:                               ; preds = %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader
  %i.db = add nsw i64 %wide.trip.count51, -1      ; 2 uses
  %i.dc = trunc i64 %i.db to i32
  %i.dd = xor i32 %i.ab, -1
  %i.de = icmp ult i32 %i.dd, %i.dc
  %i.df = icmp ugt i64 %i.db, 4294967295
  %i.dg = or i1 %i.de, %i.df
  br i1 %i.dg, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader97, label %vector.ph73

vector.ph73:                                      ; preds = %vector.scevcheck70
  %n.vec74 = and i64 %wide.trip.count51, 4294967292 ; 3 uses
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph73
  %index76 = phi i64 [ 0, %vector.ph73 ], [ %index.next79, %vector.body75 ] ; 2 uses
  %i.dh = trunc nuw i64 %index76 to i32
  %i.di = add i32 %i.ab, %i.dh
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.dj ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %wide.load77 = load <2 x double>, ptr %i.dk, align 8, !tbaa !123
  %wide.load78 = load <2 x double>, ptr %i.dl, align 8, !tbaa !123
  %i.dm = fadd <2 x double> %wide.load77, zeroinitializer
  %i.dn = fadd <2 x double> %wide.load78, zeroinitializer
  store <2 x double> %i.dm, ptr %i.dk, align 8, !tbaa !123
  store <2 x double> %i.dn, ptr %i.dl, align 8, !tbaa !123
  %index.next79 = add nuw i64 %index76, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next79, %n.vec74
  br i1 %i.do, label %middle.block80, label %vector.body75, !llvm.loop !226

middle.block80:                                   ; preds = %vector.body75
  %cmp.n81 = icmp eq i64 %n.vec74, %wide.trip.count51
  br i1 %cmp.n81, label %._crit_edge, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader97

_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader97: ; preds = %vector.scevcheck70, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader, %middle.block80
  %indvars.iv48.ph = phi i64 [ 0, %vector.scevcheck70 ], [ 0, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader ], [ %n.vec74, %middle.block80 ] ; 3 uses
  %xtraiter107 = and i64 %wide.trip.count51, 3    ; 2 uses
  %lcmp.mod108.not = icmp eq i64 %xtraiter107, 0
  br i1 %lcmp.mod108.not, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.prol.loopexit, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.prol

_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.prol: ; preds = %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader97, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.prol
  %indvars.iv48.prol = phi i64 [ %indvars.iv.next49.prol, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.prol ], [ %indvars.iv48.ph, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader97 ] ; 2 uses
  %prol.iter109 = phi i64 [ %prol.iter109.next, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.prol ], [ 0, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader97 ]
  %i.dp = trunc nuw i64 %indvars.iv48.prol to i32
  %i.dq = add i32 %i.ab, %i.dp
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.dr ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !123
  %i.du = fadd double %i.dt, 0.000000e+00
  store double %i.du, ptr %i.ds, align 8, !tbaa !123
  %indvars.iv.next49.prol = add nuw nsw i64 %indvars.iv48.prol, 1 ; 2 uses
  %prol.iter109.next = add i64 %prol.iter109, 1   ; 2 uses
  %prol.iter109.cmp.not = icmp eq i64 %prol.iter109.next, %xtraiter107
  br i1 %prol.iter109.cmp.not, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.prol.loopexit, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.prol, !llvm.loop !227

_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.prol.loopexit: ; preds = %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.prol, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader97
  %indvars.iv48.unr = phi i64 [ %indvars.iv48.ph, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader97 ], [ %indvars.iv.next49.prol, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.prol ]
  %i.dv = sub nsw i64 %indvars.iv48.ph, %wide.trip.count51
  %i.dw = icmp ugt i64 %i.dv, -4
  br i1 %i.dw, label %._crit_edge, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader97.new

_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader97.new: ; preds = %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.prol.loopexit
  %invariant.op119 = add i32 1, %i.ab
  %invariant.op121 = add i32 2, %i.ab
  %invariant.op123 = add i32 3, %i.ab
  br label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35

_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35: ; preds = %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader97.new
  %indvars.iv48 = phi i64 [ %indvars.iv48.unr, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35.preheader97.new ], [ %indvars.iv.next49.3, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35 ] ; 5 uses
  %i.dx = trunc nuw i64 %indvars.iv48 to i32
  %i.dy = add i32 %i.ab, %i.dx
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.dz ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !123
  %i.ec = fadd double %i.eb, 0.000000e+00
  store double %i.ec, ptr %i.ea, align 8, !tbaa !123
  %i.ed = trunc i64 %indvars.iv48 to i32
  %.reass120 = add i32 %i.ed, %invariant.op119
  %i.ee = zext i32 %.reass120 to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ee ; 2 uses
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !123
  %i.eh = fadd double %i.eg, 0.000000e+00
  store double %i.eh, ptr %i.ef, align 8, !tbaa !123
  %i.ei = trunc i64 %indvars.iv48 to i32
  %.reass122 = add i32 %i.ei, %invariant.op121
  %i.ej = zext i32 %.reass122 to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ej ; 2 uses
  %i.el = load double, ptr %i.ek, align 8, !tbaa !123
  %i.em = fadd double %i.el, 0.000000e+00
  store double %i.em, ptr %i.ek, align 8, !tbaa !123
  %i.en = trunc i64 %indvars.iv48 to i32
  %.reass124 = add i32 %i.en, %invariant.op123
  %i.eo = zext i32 %.reass124 to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.eo ; 2 uses
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !123
  %i.er = fadd double %i.eq, 0.000000e+00
  store double %i.er, ptr %i.ep, align 8, !tbaa !123
  %indvars.iv.next49.3 = add nuw nsw i64 %indvars.iv48, 4 ; 2 uses
  %exitcond52.not.3 = icmp eq i64 %indvars.iv.next49.3, %wide.trip.count51
  br i1 %exitcond52.not.3, label %._crit_edge, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.us35, !llvm.loop !228

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split.split.preheader, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us ], [ 0, %.lr.ph.split.us.split.split.preheader ] ; 3 uses
  %i.es = trunc nuw i64 %indvars.iv43 to i32      ; 2 uses
  %i.et = mul i32 %i.b, %i.es
  %i.eu = add i32 %i.ac, %i.et                    ; 2 uses
  %storemerge.i.i.i.us = tail call i32 @llvm.usub.sat.i32(i32 513, i32 %i.eu)
  %.sroa.speculated.i.i.i.us = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i.i.us, i32 %i.b) ; 2 uses
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ev ; 5 uses
  %.sroa.3.8.insert.ext.i.i.i.us = zext nneg i32 %.sroa.speculated.i.i.i.us to i64 ; 2 uses
  %i.ex = add i32 %i.ab, %i.es
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ey ; 2 uses
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !123
  %i.fb = icmp eq i32 %.fr37, %.sroa.speculated.i.i.i.us
  br i1 %i.fb, label %.lr.ph.i.i.us, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us, !prof !158

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.split.us.split.split
  %i.fc = trunc i64 %indvars.iv43 to i32
  %i.fd = mul i32 %i.b, %i.fc
  %i.fe = add i32 %i.fd, %i.da
  %i.ff = tail call i32 @llvm.usub.sat.i32(i32 513, i32 %i.fe)
  %i.fg = tail call i32 @llvm.umin.i32(i32 %i.b, i32 %i.ff)
  %i.fh = load ptr, ptr %i.bf, align 8, !tbaa !140 ; 5 uses
  %xtraiter103 = and i64 %.sroa.3.8.insert.ext.i.i.i.us, 3 ; 3 uses
  %i.fi = add nsw i32 %i.fg, -1
  %i.fj = icmp ult i32 %i.fi, 3
  br i1 %i.fj, label %.epil.preheader, label %.lr.ph.i.i.us.new

.lr.ph.i.i.us.new:                                ; preds = %.lr.ph.i.i.us
  %unroll_iter = and i64 %.sroa.3.8.insert.ext.i.i.i.us, 1020
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.us.new
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us.new ], [ %indvars.iv.next.i.i.us.3, %bb.f ] ; 6 uses
  %.079.i.i.us = phi double [ 0.000000e+00, %.lr.ph.i.i.us.new ], [ %i.gh, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.us.new ], [ %niter.next.3, %bb.f ]
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv.i.i.us
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !135
  %i.fm = fpext float %i.fl to double
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.i.i.us
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !123
  %i.fp = tail call double @llvm.fmuladd.f64(double %i.fm, double %i.fo, double %.079.i.i.us)
  %indvars.iv.next.i.i.us = or disjoint i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv.next.i.i.us
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !135
  %i.fs = fpext float %i.fr to double
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.next.i.i.us
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !123
  %i.fv = tail call double @llvm.fmuladd.f64(double %i.fs, double %i.fu, double %i.fp)
  %indvars.iv.next.i.i.us.1 = or disjoint i64 %indvars.iv.i.i.us, 2 ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv.next.i.i.us.1
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !135
  %i.fy = fpext float %i.fx to double
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.next.i.i.us.1
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !123
  %i.gb = tail call double @llvm.fmuladd.f64(double %i.fy, double %i.ga, double %i.fv)
  %indvars.iv.next.i.i.us.2 = or disjoint i64 %indvars.iv.i.i.us, 3 ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv.next.i.i.us.2
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !135
  %i.ge = fpext float %i.gd to double
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.next.i.i.us.2
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !123
  %i.gh = tail call double @llvm.fmuladd.f64(double %i.ge, double %i.gg, double %i.gb) ; 3 uses
  %indvars.iv.next.i.i.us.3 = add nuw nsw i64 %indvars.iv.i.i.us, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.loopexit.unr-lcssa, label %bb.f, !llvm.loop !0

_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod104.not = icmp eq i64 %xtraiter103, 0
  br i1 %lcmp.mod104.not, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.loopexit.unr-lcssa, %.lr.ph.i.i.us
  %indvars.iv.i.i.us.epil.init = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us.3, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.loopexit.unr-lcssa ]
  %.079.i.i.us.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i.us ], [ %i.gh, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE17process_arg_blendIS3_TnPN12hb_enable_ifIXntsr10hb_is_sameIT_NS_11blend_arg_tEEE5valueEvE4typeELPv0EEEvRNS_20cff2_cs_interp_env_tIS3_EERS3_10hb_array_tIKS3_Ejj.exit.us.loopexit.unr-lcssa ]
  %lcmp.mod106 = icmp ne i64 %xtraiter103, 0
  tail call void @llvm.assume(i1 %lcmp.mod106)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv.i.i.us.epil = phi i64 [ %indvars.iv.i.i.us.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.us.epil, %bb.g ] ; 3 uses
  %.079.i.i.us.epil = phi double [ %.079.i.i.us.epil.init, %.epil.preheader ], [ %i.gn, %bb.g ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv.i.i.us.epil
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !135
  %i.gk = fpext float %i.gj to double
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.i.i.us.epil
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !123
  %i.gn = tail call double @llvm.fmuladd.f64(double %i.gk, double %i.gm, double %.079.i.i.us.epil) ; 2 uses
  %indvars.iv.next.i.i.us.epil = add nuw nsw i64 %indvars.iv.i.i.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter103
end_hunk_1
