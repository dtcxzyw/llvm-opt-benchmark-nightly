Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-ot-cff1-table?download=true
inline.NumInlined: 1268
inline.NumDeleted: 249
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN23cff1_cs_opset_extents_t12process_seacERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_t:bb.a
  br i1 %i.er, label %_ZN8bounds_t5mergeERKS_.exit46, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.es = fcmp ogt double %i.ej, %i.eg
  br i1 %i.es, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store double %i.eg, ptr %i.cs, align 8, !tbaa !113
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.et = fcmp ogt double %i.eh, %i.ei
  br i1 %i.et, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store double %i.eh, ptr %i.ct, align 8, !tbaa !113
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.eu = fcmp ogt double %i.em, %i.ee
  br i1 %i.eu, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store double %i.ee, ptr %i.cx, align 8, !tbaa !113
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ev = fcmp ogt double %i.ef, %i.el
  br i1 %i.ev, label %bb.ai, label %_ZN8bounds_t5mergeERKS_.exit46

bb.ai:                                            ; preds = %bb.ah
  store double %i.ef, ptr %i.cy, align 8, !tbaa !113
  br label %_ZN8bounds_t5mergeERKS_.exit46

.critedge:                                        ; preds = %bb.l, %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit44, %bb.m
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !114
  %i.ey = add i32 %i.ex, 1
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !76
  br label %_ZN8bounds_t5mergeERKS_.exit46

_ZN8bounds_t5mergeERKS_.exit46:                   ; preds = %bb.ai, %bb.ah, %bb.aa, %bb.z, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF10cs_opset_tINS_8number_tE23cff1_cs_opset_extents_tNS_20cff1_cs_interp_env_tE20cff1_extents_param_t25cff1_path_procs_extents_tE10process_opEjRS3_RS4_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(4481) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  switch i32 %0, label %bb.bk [
    i32 11, label %bb.b
    i32 14, label %bb.g
    i32 255, label %bb.i
    i32 10, label %bb.o
    i32 29, label %bb.p
    i32 1, label %bb.q
    i32 18, label %bb.q
    i32 3, label %bb.v
    i32 23, label %bb.v
    i32 19, label %bb.ab
    i32 20, label %bb.ab
    i32 21, label %bb.af
    i32 22, label %bb.ak
    i32 4, label %bb.aq
    i32 5, label %bb.aw
    i32 6, label %bb.ax
    i32 7, label %bb.ay
    i32 8, label %bb.az
    i32 24, label %bb.ba
    i32 25, label %bb.bb
    i32 26, label %bb.bc
    i32 27, label %bb.bd
    i32 30, label %bb.be
    i32 31, label %bb.bf
    i32 290, label %bb.bg
    i32 291, label %bb.bh
    i32 292, label %bb.bi
    i32 293, label %bb.bj
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !76
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !114  ; 2 uses
  %i.e = icmp ugt i32 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.d, !prof !56

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i32 %i.d, 1
  store i32 %i.f, ptr %i.a, align 4, !tbaa !76
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4172 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !166  ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e, !prof !56

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4176
  %i.j = add i32 %i.h, -1                         ; 2 uses
  store i32 %i.j, ptr %i.g, align 4, !tbaa !166
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.k
  br label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE16return_from_subrEv.exit

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4168
  store i8 1, ptr %i.m, align 8, !tbaa !78
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE16return_from_subrEv.exit

_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE16return_from_subrEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.l, %bb.e ], [ @_hb_CrapPool, %bb.f ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4464) %1, ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i, i64 16, i1 false)
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4464 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !98, !range !110, !noundef !111
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN3CFF15cff1_cs_opset_tI23cff1_cs_opset_extents_t20cff1_extents_param_t25cff1_path_procs_extents_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !109
  %i.t = trunc i32 %i.s to i1
  br i1 %i.t, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i, label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i, !prof !112

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i: ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4472
  %i.w = load i64, ptr %i.u, align 8, !tbaa !113
  store i64 %i.w, ptr %i.v, align 8, !tbaa !113
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4465
  store i8 1, ptr %i.x, align 1, !tbaa !99
  br label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i

_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i: ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i, %bb.h
  store i8 1, ptr %i.o, align 8, !tbaa !98
  br label %_ZN3CFF15cff1_cs_opset_tI23cff1_cs_opset_extents_t20cff1_extents_param_t25cff1_path_procs_extents_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit

_ZN3CFF15cff1_cs_opset_tI23cff1_cs_opset_extents_t20cff1_extents_param_t25cff1_path_procs_extents_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit: ; preds = %bb.g, %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4152
  store i8 1, ptr %i.y, align 8, !tbaa !107
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 0, ptr %i.aa, align 4, !tbaa !100
  store i32 0, ptr %i.z, align 4, !tbaa !109
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.i:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !76 ; 4 uses
  %i.ae = add i32 %i.ad, 4
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !114 ; 3 uses
  %.not = icmp ugt i32 %i.ae, %i.ag
  br i1 %.not, label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit, label %bb.j, !prof !56

bb.j:                                             ; preds = %bb.i
  %.not.i.i128 = icmp ult i32 %i.ad, %i.ag
  br i1 %.not.i.i128, label %bb.l, label %bb.k, !prof !58

bb.k:                                             ; preds = %bb.j
  %i.ah = add i32 %i.ag, 1
  br label %_ZN3CFF14byte_str_ref_tixEi.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %1, align 8, !tbaa !108
  %i.aj = zext i32 %i.ad to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  br label %_ZN3CFF14byte_str_ref_tixEi.exit.i

_ZN3CFF14byte_str_ref_tixEi.exit.i:               ; preds = %bb.l, %bb.k
  %i.al = phi i32 [ %i.ah, %bb.k ], [ %i.ad, %bb.l ]
  %.0.i.i129 = phi ptr [ @_hb_NullPool, %bb.k ], [ %i.ak, %bb.l ]
  %i.am = load i32, ptr %.0.i.i129, align 1, !tbaa !161
  %i.an = tail call noundef i32 @llvm.bswap.i32(i32 %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !109 ; 3 uses
  %i.aq = icmp ult i32 %i.ap, 513
  br i1 %i.aq, label %bb.m, label %bb.n, !prof !58

bb.m:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = add nuw nsw i32 %i.ap, 1
  store i32 %i.as, ptr %i.ao, align 4, !tbaa !109
  %i.at = zext nneg i32 %i.ap to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.at
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE10push_fixedEi.exit.i

bb.n:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit.i
  store i8 1, ptr %i.ab, align 8, !tbaa !162
  %3 = load i64, ptr @_hb_NullPool, align 16
  store i64 %3, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE10push_fixedEi.exit.i

_ZN3CFF11arg_stack_tINS_8number_tEE10push_fixedEi.exit.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i = phi ptr [ %i.au, %bb.m ], [ @_hb_CrapPool, %bb.n ]
  %i.av = sitofp i32 %i.an to double
  %i.aw = fmul nnan double %i.av, f0x3EF0000000000000
  store double %i.aw, ptr %.0.i.i.i, align 8, !tbaa !25
  %i.ax = add i32 %i.al, 4
  store i32 %i.ax, ptr %i.ac, align 4, !tbaa !76
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.o:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 4432
  tail call void @_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9call_subrERKNS_14biased_subrs_tIS6_EENS_9cs_type_tE(ptr noundef nonnull align 8 dereferenceable(4464) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i32 noundef 2)
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.p:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4416
  tail call void @_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9call_subrERKNS_14biased_subrs_tIS6_EENS_9cs_type_tE(ptr noundef nonnull align 8 dereferenceable(4464) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i32 noundef 1)
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.q:                                             ; preds = %bb.a, %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 4464 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !98, !range !110, !noundef !111
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %_ZN3CFF15cff1_cs_opset_tI23cff1_cs_opset_extents_t20cff1_extents_param_t25cff1_path_procs_extents_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit132, label %bb.r

bb.r:                                             ; preds = %bb.q
  switch i32 %0, label %_ZN3CFF15cff1_cs_opset_tI23cff1_cs_opset_extents_t20cff1_extents_param_t25cff1_path_procs_extents_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit132 [
    i32 14, label %bb.s
    i32 1, label %bb.s
    i32 18, label %bb.s
    i32 3, label %bb.s
    i32 4, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r, %bb.r, %bb.r, %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !109 ; 2 uses
  %i.bf = trunc i32 %i.be to i1
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !109 ; 2 uses
  %i.bi = icmp ugt i32 %i.bh, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bj = phi i32 [ %i.be, %bb.s ], [ %i.bh, %bb.t ]
  %.0.i = phi i1 [ %i.bf, %bb.s ], [ %i.bi, %bb.t ]
  %i.bk = icmp ne i32 %i.bj, 0
  %i.bl = and i1 %.0.i, %i.bk
  br i1 %i.bl, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i131, label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i130, !prof !112

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i131: ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 4472
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !113
  store i64 %i.bo, ptr %i.bn, align 8, !tbaa !113
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 4465
  store i8 1, ptr %i.bp, align 1, !tbaa !99
  br label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i130

_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i130: ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i131, %bb.u
  store i8 1, ptr %i.ba, align 8, !tbaa !98
  br label %_ZN3CFF15cff1_cs_opset_tI23cff1_cs_opset_extents_t20cff1_extents_param_t25cff1_path_procs_extents_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit132

_ZN3CFF15cff1_cs_opset_tI23cff1_cs_opset_extents_t20cff1_extents_param_t25cff1_path_procs_extents_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit132: ; preds = %bb.q, %bb.r, %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i130
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !109
  %i.bs = lshr i32 %i.br, 1
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 4156 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !92
  %i.bv = add i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !92
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 0, ptr %i.bw, align 4, !tbaa !100
  store i32 0, ptr %i.bq, align 4, !tbaa !109
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.v:                                             ; preds = %bb.a, %bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 4464 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !98, !range !110, !noundef !111
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %_ZN3CFF15cff1_cs_opset_tI23cff1_cs_opset_extents_t20cff1_extents_param_t25cff1_path_procs_extents_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit136, label %bb.w

bb.w:                                             ; preds = %bb.v
  switch i32 %0, label %_ZN3CFF15cff1_cs_opset_tI23cff1_cs_opset_extents_t20cff1_extents_param_t25cff1_path_procs_extents_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit136 [
    i32 14, label %bb.x
    i32 21, label %bb.z
    i32 18, label %bb.x
    i32 3, label %bb.x
    i32 23, label %bb.x
    i32 19, label %bb.x
    i32 20, label %bb.x
    i32 22, label %bb.y
    i32 4, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !109 ; 2 uses
  %i.cc = trunc i32 %i.cb to i1
  br label %bb.aa

bb.y:                                             ; preds = %bb.w, %bb.w
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !109 ; 2 uses
  %i.cf = icmp ugt i32 %i.ce, 1
  br label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !109 ; 2 uses
  %i.ci = icmp ugt i32 %i.ch, 2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cj = phi i32 [ %i.cb, %bb.x ], [ %i.ce, %bb.y ], [ %i.ch, %bb.z ]
  %.0.i133 = phi i1 [ %i.cc, %bb.x ], [ %i.cf, %bb.y ], [ %i.ci, %bb.z ]
  %i.ck = icmp ne i32 %i.cj, 0
  %i.cl = and i1 %.0.i133, %i.ck
  br i1 %i.cl, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i135, label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i134, !prof !112

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i135: ; preds = %bb.aa
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 4472
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !113
  store i64 %i.co, ptr %i.cn, align 8, !tbaa !113
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 4465
  store i8 1, ptr %i.cp, align 1, !tbaa !99
  br label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i134

_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i134: ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i135, %bb.aa
  store i8 1, ptr %i.bx, align 8, !tbaa !98
  br label %_ZN3CFF15cff1_cs_opset_tI23cff1_cs_opset_extents_t20cff1_extents_param_t25cff1_path_procs_extents_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit136

_ZN3CFF15cff1_cs_opset_tI23cff1_cs_opset_extents_t20cff1_extents_param_t25cff1_path_procs_extents_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit136: ; preds = %bb.v, %bb.w, %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i134
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !109
  %i.cs = lshr i32 %i.cr, 1
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 4160 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !93
  %i.cv = add i32 %i.cu, %i.cs
  store i32 %i.cv, ptr %i.ct, align 8, !tbaa !93
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 0, ptr %i.cw, align 4, !tbaa !100
  store i32 0, ptr %i.cq, align 4, !tbaa !109
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.ab:                                            ; preds = %bb.a, %bb.a
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 4464 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !98, !range !110, !noundef !111
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %_ZN3CFF15cff1_cs_opset_tI23cff1_cs_opset_extents_t20cff1_extents_param_t25cff1_path_procs_extents_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit140, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.db = load i32, ptr %i.da, align 4, !tbaa !109
  %i.dc = trunc i32 %i.db to i1
  br i1 %i.dc, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i139, label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i138, !prof !112

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i139: ; preds = %bb.ac
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 4472
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !113
  store i64 %i.df, ptr %i.de, align 8, !tbaa !113
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 4465
  store i8 1, ptr %i.dg, align 1, !tbaa !99
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 1, ptr %i.dh, align 4, !tbaa !100
  br label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i138

_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i138: ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i139, %bb.ac
  store i8 1, ptr %i.cx, align 8, !tbaa !98
  br label %_ZN3CFF15cff1_cs_opset_tI23cff1_cs_opset_extents_t20cff1_extents_param_t25cff1_path_procs_extents_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit140

_ZN3CFF15cff1_cs_opset_tI23cff1_cs_opset_extents_t20cff1_extents_param_t25cff1_path_procs_extents_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit140: ; preds = %bb.ab, %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i138
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 4154 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 2, !tbaa !91, !range !110, !noundef !111
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %._ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE23determine_hintmask_sizeEv.exit_crit_edge.i, label %bb.ad

._ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE23determine_hintmask_sizeEv.exit_crit_edge.i: ; preds = %_ZN3CFF15cff1_cs_opset_tI23cff1_cs_opset_extents_t20cff1_extents_param_t25cff1_path_procs_extents_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit140
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 4164
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !94
  br label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE23determine_hintmask_sizeEv.exit.i

bb.ad:                                            ; preds = %_ZN3CFF15cff1_cs_opset_tI23cff1_cs_opset_extents_t20cff1_extents_param_t25cff1_path_procs_extents_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit140
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !109
  %i.dn = lshr i32 %i.dm, 1
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 4160 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !93
  %i.dq = add i32 %i.dp, %i.dn                    ; 2 uses
  store i32 %i.dq, ptr %i.do, align 8, !tbaa !93
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 4156
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !92
  %i.dt = add i32 %i.dq, 7
end_hunk_0
begin_hunk_1_@_ZN3CFF12path_procs_tI25cff1_path_procs_extents_tNS_20cff1_cs_interp_env_tE20cff1_extents_param_tE6hflex1ERS2_RS3_:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI25cff1_path_procs_extents_tNS_20cff1_cs_interp_env_tE20cff1_extents_param_tE5flex1ERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %3 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %4 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %5 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %6 = alloca %"struct.CFF::point_t", align 16    ; 7 uses
  %7 = alloca %"struct.CFF::point_t", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !109
  %i.c = icmp eq i32 %i.b, 11
  br i1 %i.c, label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit50, label %bb.c, !prof !58

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit50: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load double, ptr %i.e, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !167
  %i.k = load <2 x double>, ptr %i.d, align 8, !tbaa !25 ; 2 uses
  %i.l = load <2 x double>, ptr %2, align 16, !tbaa !25
  %i.m = fadd <2 x double> %i.l, %i.k
  store <2 x double> %i.m, ptr %2, align 16, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !167
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load <2 x double>, ptr %i.n, align 8, !tbaa !25
  %i.p = load <2 x double>, ptr %3, align 16, !tbaa !25
  %i.q = fadd <2 x double> %i.p, %i.o
  store <2 x double> %i.q, ptr %3, align 16, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !167
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load <2 x double>, ptr %i.r, align 8, !tbaa !25
  %i.t = load <2 x double>, ptr %4, align 16, !tbaa !25
  %i.u = fadd <2 x double> %i.t, %i.s
  store <2 x double> %i.u, ptr %4, align 16, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !167
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load <2 x double>, ptr %i.v, align 8, !tbaa !25
  %i.x = load <2 x double>, ptr %5, align 16, !tbaa !25
  %i.y = fadd <2 x double> %i.x, %i.w
  store <2 x double> %i.y, ptr %5, align 16, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !167
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aa = load <2 x double>, ptr %i.z, align 8, !tbaa !25
  %i.ab = load <2 x double>, ptr %6, align 16, !tbaa !25
  %i.ac = fadd <2 x double> %i.ab, %i.aa
  store <2 x double> %i.ac, ptr %6, align 16, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !167
  %i.ad = load <2 x double>, ptr %i.f, align 8, !tbaa !25
  %i.ae = load <2 x double>, ptr %i.g, align 8, !tbaa !25
  %i.af = load <2 x double>, ptr %i.h, align 8, !tbaa !25
  %i.ag = load <2 x double>, ptr %i.i, align 8, !tbaa !25
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
  %.pre80 = load double, ptr %i.ar, align 8, !tbaa !25
  %i.as = load double, ptr %7, align 8, !tbaa !25
  %i.at = fadd double %i.as, %.pre80
  store double %i.at, ptr %7, align 8, !tbaa !25
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4456
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !113
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !113
  br label %bb.b

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit62: ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit50
  %i.ax = load i64, ptr %i.j, align 8, !tbaa !113
  store i64 %i.ax, ptr %7, align 8, !tbaa !113
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre79 = load double, ptr %i.ay, align 8, !tbaa !25
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !25
  %i.bb = fadd double %i.ba, %.pre79
  store double %i.bb, ptr %i.az, align 8, !tbaa !25
  br label %bb.b

bb.b:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit62, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit59
  call void @_ZN25cff1_path_procs_extents_t5curveERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tES7_S7_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @_ZN25cff1_path_procs_extents_t5curveERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tES7_S7_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !114
  %i.be = add i32 %i.bd, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !76
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF7opset_tINS_8number_tEE10process_opEjRNS_12interp_env_tIS1_EE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(4128) %1) local_unnamed_addr #2 comdat align 2 {
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
  %i.c = load i32, ptr %i.b, align 4, !tbaa !76   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !114  ; 4 uses
  %.not.i = icmp ult i32 %i.c, %i.e
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !58

bb.c:                                             ; preds = %bb.b
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %i.b, align 4, !tbaa !76
  br label %_ZN3CFF14byte_str_ref_tixEi.exit

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !108
  %i.h = zext i32 %i.c to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  br label %_ZN3CFF14byte_str_ref_tixEi.exit

_ZN3CFF14byte_str_ref_tixEi.exit:                 ; preds = %bb.c, %bb.d
  %i.j = phi i32 [ %i.f, %bb.c ], [ %i.c, %bb.d ] ; 2 uses
  %.0.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.i, %bb.d ]
  %i.k = load i8, ptr %.0.i, align 1, !tbaa !16
  %i.l = zext i8 %i.k to i16
  %i.m = shl nuw i16 %i.l, 8
  %i.n = add i32 %i.j, 1                          ; 2 uses
  %.not.i18 = icmp ult i32 %i.n, %i.e
  br i1 %.not.i18, label %bb.f, label %bb.e, !prof !58

bb.e:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit
  %i.o = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.o, ptr %i.b, align 4, !tbaa !76
  br label %_ZN3CFF14byte_str_ref_tixEi.exit20

bb.f:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit
  %i.p = load ptr, ptr %1, align 8, !tbaa !108
  %i.q = zext i32 %i.n to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  br label %_ZN3CFF14byte_str_ref_tixEi.exit20

_ZN3CFF14byte_str_ref_tixEi.exit20:               ; preds = %bb.e, %bb.f
  %i.s = phi i32 [ %i.o, %bb.e ], [ %i.j, %bb.f ]
  %.0.i19 = phi ptr [ @_hb_NullPool, %bb.e ], [ %i.r, %bb.f ]
  %i.t = load i8, ptr %.0.i19, align 1, !tbaa !16
  %i.u = zext i8 %i.t to i16
  %i.v = or disjoint i16 %i.m, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !109  ; 3 uses
  %i.y = icmp ult i32 %i.x, 513
  br i1 %i.y, label %bb.g, label %bb.h, !prof !58

bb.g:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit20
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = add nuw nsw i32 %i.x, 1
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !109
  %i.ab = zext nneg i32 %i.x to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit

bb.h:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit20
  store i8 1, ptr %i.a, align 8, !tbaa !162
  %2 = load i64, ptr @_hb_NullPool, align 16
  store i64 %2, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit

_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit: ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.ac, %bb.g ], [ @_hb_CrapPool, %bb.h ]
  %i.ad = sitofp i16 %i.v to double
  store double %i.ad, ptr %.0.i.i, align 8, !tbaa !25
  %i.ae = add i32 %i.s, 2
  store i32 %i.ae, ptr %i.b, align 4, !tbaa !76
  br label %bb.x

bb.i:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = shl nuw nsw i32 %0, 8
  %i.ah = add nuw nsw i32 %i.ag, 2304
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !76 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !114 ; 2 uses
  %.not.i21 = icmp ult i32 %i.aj, %i.al
  br i1 %.not.i21, label %bb.k, label %bb.j, !prof !58

bb.j:                                             ; preds = %bb.i
  %i.am = add i32 %i.al, 1                        ; 2 uses
  store i32 %i.am, ptr %i.ai, align 4, !tbaa !76
  br label %_ZN3CFF14byte_str_ref_tixEi.exit23

bb.k:                                             ; preds = %bb.i
  %i.an = load ptr, ptr %1, align 8, !tbaa !108
  %i.ao = zext i32 %i.aj to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  br label %_ZN3CFF14byte_str_ref_tixEi.exit23

_ZN3CFF14byte_str_ref_tixEi.exit23:               ; preds = %bb.j, %bb.k
  %i.aq = phi i32 [ %i.am, %bb.j ], [ %i.aj, %bb.k ]
  %.0.i22 = phi ptr [ @_hb_NullPool, %bb.j ], [ %i.ap, %bb.k ]
  %i.ar = load i8, ptr %.0.i22, align 1, !tbaa !16
  %i.as = zext i8 %i.ar to i32
  %.masked = and i32 %i.ah, 65280
  %i.at = or disjoint i32 %.masked, 108
  %sext17 = add nuw nsw i32 %i.at, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !109 ; 3 uses
  %i.aw = icmp ult i32 %i.av, 513
  br i1 %i.aw, label %bb.l, label %bb.m, !prof !58

bb.l:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit23
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = add nuw nsw i32 %i.av, 1
  store i32 %i.ay, ptr %i.au, align 4, !tbaa !109
  %i.az = zext nneg i32 %i.av to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.az
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit25

bb.m:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit23
  store i8 1, ptr %i.af, align 8, !tbaa !162
  %3 = load i64, ptr @_hb_NullPool, align 16
  store i64 %3, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit25

_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit25: ; preds = %bb.l, %bb.m
  %.0.i.i24 = phi ptr [ %i.ba, %bb.l ], [ @_hb_CrapPool, %bb.m ]
  %i.bb = uitofp nneg i32 %sext17 to double
  store double %i.bb, ptr %.0.i.i24, align 8, !tbaa !25
  %i.bc = add i32 %i.aq, 1
  store i32 %i.bc, ptr %i.ai, align 4, !tbaa !76
  br label %bb.x

bb.n:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = shl nuw nsw i32 %0, 16
  %sext = add nsw i32 %i.be, -16449536
  %i.bf = lshr exact i32 %sext, 8
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !76 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !114 ; 2 uses
  %.not.i26 = icmp ult i32 %i.bh, %i.bj
  br i1 %.not.i26, label %bb.p, label %bb.o, !prof !58

bb.o:                                             ; preds = %bb.n
  %i.bk = add i32 %i.bj, 1                        ; 2 uses
  store i32 %i.bk, ptr %i.bg, align 4, !tbaa !76
  br label %_ZN3CFF14byte_str_ref_tixEi.exit28

bb.p:                                             ; preds = %bb.n
  %i.bl = load ptr, ptr %1, align 8, !tbaa !108
  %i.bm = zext i32 %i.bh to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bm
  br label %_ZN3CFF14byte_str_ref_tixEi.exit28

_ZN3CFF14byte_str_ref_tixEi.exit28:               ; preds = %bb.o, %bb.p
  %i.bo = phi i32 [ %i.bk, %bb.o ], [ %i.bh, %bb.p ]
  %.0.i27 = phi ptr [ @_hb_NullPool, %bb.o ], [ %i.bn, %bb.p ]
  %i.bp = load i8, ptr %.0.i27, align 1, !tbaa !16
  %i.bq = zext i8 %i.bp to i32
  %i.br = or disjoint i32 %i.bf, %i.bq
  %i.bs = sub nuw nsw i32 -108, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !109 ; 3 uses
  %i.bv = icmp ult i32 %i.bu, 513
  br i1 %i.bv, label %bb.q, label %bb.r, !prof !58

bb.q:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit28
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bx = add nuw nsw i32 %i.bu, 1
  store i32 %i.bx, ptr %i.bt, align 4, !tbaa !109
  %i.by = zext nneg i32 %i.bu to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.by
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit30

bb.r:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit28
  store i8 1, ptr %i.bd, align 8, !tbaa !162
  %4 = load i64, ptr @_hb_NullPool, align 16
  store i64 %4, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit30

_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit30: ; preds = %bb.q, %bb.r
  %.0.i.i29 = phi ptr [ %i.bz, %bb.q ], [ @_hb_CrapPool, %bb.r ]
  %i.ca = sitofp i32 %i.bs to double
  store double %i.ca, ptr %.0.i.i29, align 8, !tbaa !25
  %i.cb = add i32 %i.bo, 1
  store i32 %i.cb, ptr %i.bg, align 4, !tbaa !76
  br label %bb.x

bb.s:                                             ; preds = %bb.a
  %i.cc = add i32 %0, -32
  %i.cd = icmp ult i32 %i.cc, 215
  br i1 %i.cd, label %bb.t, label %bb.w, !prof !58

bb.t:                                             ; preds = %bb.s
  %i.ce = add nsw i32 %0, -139
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !109 ; 3 uses
  %i.ch = icmp ult i32 %i.cg, 513
  br i1 %i.ch, label %bb.u, label %bb.v, !prof !58

bb.u:                                             ; preds = %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cj = add nuw nsw i32 %i.cg, 1
  store i32 %i.cj, ptr %i.cf, align 4, !tbaa !109
  %i.ck = zext nneg i32 %i.cg to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ck
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit32

bb.v:                                             ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 1, ptr %i.cm, align 8, !tbaa !162
  %5 = load i64, ptr @_hb_NullPool, align 16
  store i64 %5, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit32

_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit32: ; preds = %bb.u, %bb.v
  %.0.i.i31 = phi ptr [ %i.cl, %bb.u ], [ @_hb_CrapPool, %bb.v ]
  %i.cn = sitofp i32 %i.ce to double
  store double %i.cn, ptr %.0.i.i31, align 8, !tbaa !25
  br label %bb.x

bb.w:                                             ; preds = %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.co, align 4, !tbaa !109
  br label %bb.x

bb.x:                                             ; preds = %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit32, %bb.w, %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit30, %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit25, %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN25cff1_path_procs_extents_t5curveERN3CFF20cff1_cs_interp_env_tER20cff1_extents_param_tRKNS0_7point_tES7_S7_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !105, !range !110, !noundef !111
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %._ZN8bounds_t6updateERKN3CFF7point_tE.exit_crit_edge, label %bb.b

._ZN8bounds_t6updateERKN3CFF7point_tE.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !25
  br label %_ZN8bounds_t6updateERKN3CFF7point_tE.exit

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %1, align 8, !tbaa !105
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  %i.e = load double, ptr %i.c, align 8, !tbaa !25 ; 2 uses
  %i.f = load double, ptr %i.d, align 8           ; 4 uses
  %i.g = fcmp ogt double %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store double %i.f, ptr %i.c, align 8, !tbaa !113
  %.pre.i = load double, ptr %i.d, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi double [ %i.f, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %i.i = phi double [ %.pre.i, %bb.c ], [ %i.f, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !25
  %i.l = fcmp ogt double %i.i, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store double %i.i, ptr %i.j, align 8, !tbaa !113
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !25
  %i.p = load double, ptr %i.m, align 8           ; 3 uses
  %i.q = fcmp ogt double %i.o, %i.p
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store double %i.p, ptr %i.n, align 8, !tbaa !113
  %.pre9.i = load double, ptr %i.m, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = phi double [ %.pre9.i, %bb.g ], [ %i.p, %bb.f ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !25
  %i.u = fcmp ogt double %i.r, %i.t
  br i1 %i.u, label %bb.i, label %_ZN8bounds_t6updateERKN3CFF7point_tE.exit

bb.i:                                             ; preds = %bb.h
  store double %i.r, ptr %i.s, align 8, !tbaa !113
  br label %_ZN8bounds_t6updateERKN3CFF7point_tE.exit

_ZN8bounds_t6updateERKN3CFF7point_tE.exit:        ; preds = %._ZN8bounds_t6updateERKN3CFF7point_tE.exit_crit_edge, %bb.i, %bb.h
  %i.v = phi double [ %.pre, %._ZN8bounds_t6updateERKN3CFF7point_tE.exit_crit_edge ], [ %i.h, %bb.i ], [ %i.h, %bb.h ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.x = load double, ptr %2, align 8             ; 4 uses
  %i.y = fcmp ogt double %i.v, %i.x
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN8bounds_t6updateERKN3CFF7point_tE.exit
  store double %i.x, ptr %i.w, align 8, !tbaa !113
  %.pre.i13 = load double, ptr %2, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN8bounds_t6updateERKN3CFF7point_tE.exit
  %i.z = phi double [ %i.x, %bb.j ], [ %i.v, %_ZN8bounds_t6updateERKN3CFF7point_tE.exit ]
  %i.aa = phi double [ %.pre.i13, %bb.j ], [ %i.x, %_ZN8bounds_t6updateERKN3CFF7point_tE.exit ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !25 ; 2 uses
  %i.ad = fcmp ogt double %i.aa, %i.ac
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store double %i.aa, ptr %i.ab, align 8, !tbaa !113
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ae = phi double [ %i.aa, %bb.l ], [ %i.ac, %bb.k ]
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !25 ; 2 uses
  %i.ai = load double, ptr %i.af, align 8         ; 4 uses
  %i.aj = fcmp ogt double %i.ah, %i.ai
  br i1 %i.aj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store double %i.ai, ptr %i.ag, align 8, !tbaa !113
  %.pre9.i12 = load double, ptr %i.af, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ak = phi double [ %i.ai, %bb.n ], [ %i.ah, %bb.m ]
  %i.al = phi double [ %.pre9.i12, %bb.n ], [ %i.ai, %bb.m ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !25 ; 2 uses
  %i.ao = fcmp ogt double %i.al, %i.an
  br i1 %i.ao, label %bb.p, label %_ZN8bounds_t6updateERKN3CFF7point_tE.exit14

bb.p:                                             ; preds = %bb.o
  store double %i.al, ptr %i.am, align 8, !tbaa !113
  br label %_ZN8bounds_t6updateERKN3CFF7point_tE.exit14

_ZN8bounds_t6updateERKN3CFF7point_tE.exit14:      ; preds = %bb.o, %bb.p
  %i.ap = phi double [ %i.an, %bb.o ], [ %i.al, %bb.p ]
  %i.aq = load double, ptr %3, align 8            ; 3 uses
  %i.ar = fcmp ogt double %i.z, %i.aq
  br i1 %i.ar, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN8bounds_t6updateERKN3CFF7point_tE.exit14
  store double %i.aq, ptr %i.w, align 8, !tbaa !113
  %.pre.i16 = load double, ptr %3, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN8bounds_t6updateERKN3CFF7point_tE.exit14
  %i.as = phi double [ %.pre.i16, %bb.q ], [ %i.aq, %_ZN8bounds_t6updateERKN3CFF7point_tE.exit14 ] ; 2 uses
  %i.at = fcmp ogt double %i.as, %i.ae
  br i1 %i.at, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store double %i.as, ptr %i.ab, align 8, !tbaa !113
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.av = load double, ptr %i.au, align 8         ; 3 uses
  %i.aw = fcmp ogt double %i.ak, %i.av
  br i1 %i.aw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store double %i.av, ptr %i.ag, align 8, !tbaa !113
  %.pre9.i15 = load double, ptr %i.au, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ax = phi double [ %.pre9.i15, %bb.u ], [ %i.av, %bb.t ] ; 2 uses
  %i.ay = fcmp ogt double %i.ax, %i.ap
  br i1 %i.ay, label %bb.w, label %_ZN8bounds_t6updateERKN3CFF7point_tE.exit17

bb.w:                                             ; preds = %bb.v
  store double %i.ax, ptr %i.am, align 8, !tbaa !113
  br label %_ZN8bounds_t6updateERKN3CFF7point_tE.exit17

_ZN8bounds_t6updateERKN3CFF7point_tE.exit17:      ; preds = %bb.v, %bb.w
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !167
  %i.ba = load double, ptr %i.w, align 8, !tbaa !25
  %i.bb = load double, ptr %i.az, align 8         ; 3 uses
  %i.bc = fcmp ogt double %i.ba, %i.bb
  br i1 %i.bc, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN8bounds_t6updateERKN3CFF7point_tE.exit17
  store double %i.bb, ptr %i.w, align 8, !tbaa !113
  %.pre.i19 = load double, ptr %i.az, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN8bounds_t6updateERKN3CFF7point_tE.exit17
  %i.bd = phi double [ %.pre.i19, %bb.x ], [ %i.bb, %_ZN8bounds_t6updateERKN3CFF7point_tE.exit17 ] ; 2 uses
  %i.be = load double, ptr %i.ab, align 8, !tbaa !25
  %i.bf = fcmp ogt double %i.bd, %i.be
  br i1 %i.bf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store double %i.bd, ptr %i.ab, align 8, !tbaa !113
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 2 uses
  %i.bh = load double, ptr %i.ag, align 8, !tbaa !25
  %i.bi = load double, ptr %i.bg, align 8         ; 3 uses
  %i.bj = fcmp ogt double %i.bh, %i.bi
end_hunk_1
begin_hunk_2_@_ZN20cff1_cs_opset_path_t12process_seacERN3CFF20cff1_cs_interp_env_tER17cff1_path_param_t:bb.a
bb.p:                                             ; preds = %_ZN2OT4cff132lookup_standard_encoding_for_sidEj.exit.i43
  %i.da = getelementptr inbounds nuw i8, ptr %i.cc, i64 244
  %i.db = load i32, ptr %i.da, align 4, !tbaa !165
  %i.dc = icmp eq i32 %i.db, 0
  %i.dd = icmp samesign ult i32 %.0.i40, 229
  %or.cond.i45 = and i1 %i.dd, %i.dc
  %..i46 = select i1 %or.cond.i45, i32 %i.cu, i32 0
  br label %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit47

_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit47: ; preds = %bb.o, %bb.p
  %.0.i42 = phi i32 [ %..i46, %bb.p ], [ %i.cz, %bb.o ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 4480
  %i.df = load i8, ptr %i.de, align 8, !tbaa !101, !range !110, !noundef !111
  %i.dg = trunc nuw i8 %i.df to i1
  %.not = xor i1 %i.dg, true
  %i.dh = icmp ne i32 %.0.i34, 0
  %or.cond = and i1 %i.dh, %.not
  %i.di = icmp ne i32 %.0.i42, 0
  %or.cond3 = and i1 %i.di, %or.cond
  br i1 %or.cond3, label %bb.q, label %.critedge, !prof !227

bb.q:                                             ; preds = %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit47
  %i.dj = load ptr, ptr %i.bf, align 8, !tbaa !124
  %i.dk = load ptr, ptr %1, align 8, !tbaa !125
  %i.dl = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.dm = tail call fastcc noundef zeroext i1 @_ZL9_get_pathPKN2OT4cff113accelerator_tEP9hb_font_tjR17hb_draw_session_tbPN3CFF7point_tEPl(ptr noundef %i.dj, ptr noundef %i.dk, i32 noundef %.0.i34, ptr noundef nonnull align 8 dereferenceable(64) %i.dl, i1 noundef zeroext true, ptr noundef null, ptr noundef null)
  br i1 %i.dm, label %bb.r, label %.critedge, !prof !58

bb.r:                                             ; preds = %bb.q
  %i.dn = load ptr, ptr %i.bf, align 8, !tbaa !124
  %i.do = load ptr, ptr %1, align 8, !tbaa !125
  %i.dp = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.dq = call fastcc noundef zeroext i1 @_ZL9_get_pathPKN2OT4cff113accelerator_tEP9hb_font_tjR17hb_draw_session_tbPN3CFF7point_tEPl(ptr noundef %i.dn, ptr noundef %i.do, i32 noundef %.0.i42, ptr noundef nonnull align 8 dereferenceable(64) %i.dp, i1 noundef zeroext true, ptr noundef nonnull %2, ptr noundef null)
  br i1 %i.dq, label %bb.s, label %.critedge, !prof !58

.critedge:                                        ; preds = %bb.n, %_ZNK3CFF8number_t6to_intEv.exit41, %bb.q, %_ZNK2OT4cff119accelerator_templ_tIN3CFF25cff1_private_dict_opset_tENS2_31cff1_private_dict_values_base_tINS2_10dict_val_tEEEE17std_code_to_glyphEj.exit47, %bb.r
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !114
  %i.dt = add i32 %i.ds, 1
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !76
  br label %bb.s

bb.s:                                             ; preds = %.critedge, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF10cs_opset_tINS_8number_tE20cff1_cs_opset_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_t22cff1_path_procs_path_tE10process_opEjRS3_RS4_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(4481) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  switch i32 %0, label %bb.bf [
    i32 11, label %bb.b
    i32 14, label %bb.g
    i32 255, label %bb.i
    i32 10, label %bb.o
    i32 29, label %bb.p
    i32 1, label %bb.q
    i32 18, label %bb.q
    i32 3, label %bb.v
    i32 23, label %bb.v
    i32 19, label %bb.ab
    i32 20, label %bb.ab
    i32 21, label %bb.af
    i32 22, label %bb.aj
    i32 4, label %bb.an
    i32 5, label %bb.ar
    i32 6, label %bb.as
    i32 7, label %bb.at
    i32 8, label %bb.au
    i32 24, label %bb.av
    i32 25, label %bb.aw
    i32 26, label %bb.ax
    i32 27, label %bb.ay
    i32 30, label %bb.az
    i32 31, label %bb.ba
    i32 290, label %bb.bb
    i32 291, label %bb.bc
    i32 292, label %bb.bd
    i32 293, label %bb.be
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !76
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !114  ; 2 uses
  %i.e = icmp ugt i32 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.d, !prof !56

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i32 %i.d, 1
  store i32 %i.f, ptr %i.a, align 4, !tbaa !76
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4172 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !166  ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e, !prof !56

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4176
  %i.j = add i32 %i.h, -1                         ; 2 uses
  store i32 %i.j, ptr %i.g, align 4, !tbaa !166
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.k
  br label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE16return_from_subrEv.exit

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4168
  store i8 1, ptr %i.m, align 8, !tbaa !78
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE16return_from_subrEv.exit

_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE16return_from_subrEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.l, %bb.e ], [ @_hb_CrapPool, %bb.f ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4464) %1, ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i, i64 16, i1 false)
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4464 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !98, !range !110, !noundef !111
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_path_t17cff1_path_param_t22cff1_path_procs_path_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !109
  %i.t = trunc i32 %i.s to i1
  br i1 %i.t, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i, label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i, !prof !112

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i: ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4472
  %i.w = load i64, ptr %i.u, align 8, !tbaa !113
  store i64 %i.w, ptr %i.v, align 8, !tbaa !113
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4465
  store i8 1, ptr %i.x, align 1, !tbaa !99
  br label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i

_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i: ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i, %bb.h
  store i8 1, ptr %i.o, align 8, !tbaa !98
  br label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_path_t17cff1_path_param_t22cff1_path_procs_path_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit

_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_path_t17cff1_path_param_t22cff1_path_procs_path_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit: ; preds = %bb.g, %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4152
  store i8 1, ptr %i.y, align 8, !tbaa !107
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 0, ptr %i.aa, align 4, !tbaa !100
  store i32 0, ptr %i.z, align 4, !tbaa !109
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.i:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !76 ; 4 uses
  %i.ae = add i32 %i.ad, 4
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !114 ; 3 uses
  %.not = icmp ugt i32 %i.ae, %i.ag
  br i1 %.not, label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit, label %bb.j, !prof !56

bb.j:                                             ; preds = %bb.i
  %.not.i.i128 = icmp ult i32 %i.ad, %i.ag
  br i1 %.not.i.i128, label %bb.l, label %bb.k, !prof !58

bb.k:                                             ; preds = %bb.j
  %i.ah = add i32 %i.ag, 1
  br label %_ZN3CFF14byte_str_ref_tixEi.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %1, align 8, !tbaa !108
  %i.aj = zext i32 %i.ad to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  br label %_ZN3CFF14byte_str_ref_tixEi.exit.i

_ZN3CFF14byte_str_ref_tixEi.exit.i:               ; preds = %bb.l, %bb.k
  %i.al = phi i32 [ %i.ah, %bb.k ], [ %i.ad, %bb.l ]
  %.0.i.i129 = phi ptr [ @_hb_NullPool, %bb.k ], [ %i.ak, %bb.l ]
  %i.am = load i32, ptr %.0.i.i129, align 1, !tbaa !161
  %i.an = tail call noundef i32 @llvm.bswap.i32(i32 %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !109 ; 3 uses
  %i.aq = icmp ult i32 %i.ap, 513
  br i1 %i.aq, label %bb.m, label %bb.n, !prof !58

bb.m:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = add nuw nsw i32 %i.ap, 1
  store i32 %i.as, ptr %i.ao, align 4, !tbaa !109
  %i.at = zext nneg i32 %i.ap to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.at
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE10push_fixedEi.exit.i

bb.n:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit.i
  store i8 1, ptr %i.ab, align 8, !tbaa !162
  %3 = load i64, ptr @_hb_NullPool, align 16
  store i64 %3, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE10push_fixedEi.exit.i

_ZN3CFF11arg_stack_tINS_8number_tEE10push_fixedEi.exit.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i = phi ptr [ %i.au, %bb.m ], [ @_hb_CrapPool, %bb.n ]
  %i.av = sitofp i32 %i.an to double
  %i.aw = fmul nnan double %i.av, f0x3EF0000000000000
  store double %i.aw, ptr %.0.i.i.i, align 8, !tbaa !25
  %i.ax = add i32 %i.al, 4
  store i32 %i.ax, ptr %i.ac, align 4, !tbaa !76
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.o:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 4432
  tail call void @_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9call_subrERKNS_14biased_subrs_tIS6_EENS_9cs_type_tE(ptr noundef nonnull align 8 dereferenceable(4464) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i32 noundef 2)
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.p:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4416
  tail call void @_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9call_subrERKNS_14biased_subrs_tIS6_EENS_9cs_type_tE(ptr noundef nonnull align 8 dereferenceable(4464) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i32 noundef 1)
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.q:                                             ; preds = %bb.a, %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 4464 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !98, !range !110, !noundef !111
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_path_t17cff1_path_param_t22cff1_path_procs_path_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit132, label %bb.r

bb.r:                                             ; preds = %bb.q
  switch i32 %0, label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_path_t17cff1_path_param_t22cff1_path_procs_path_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit132 [
    i32 14, label %bb.s
    i32 1, label %bb.s
    i32 18, label %bb.s
    i32 3, label %bb.s
    i32 4, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r, %bb.r, %bb.r, %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !109 ; 2 uses
  %i.bf = trunc i32 %i.be to i1
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !109 ; 2 uses
  %i.bi = icmp ugt i32 %i.bh, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bj = phi i32 [ %i.be, %bb.s ], [ %i.bh, %bb.t ]
  %.0.i = phi i1 [ %i.bf, %bb.s ], [ %i.bi, %bb.t ]
  %i.bk = icmp ne i32 %i.bj, 0
  %i.bl = and i1 %.0.i, %i.bk
  br i1 %i.bl, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i131, label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i130, !prof !112

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i131: ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 4472
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !113
  store i64 %i.bo, ptr %i.bn, align 8, !tbaa !113
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 4465
  store i8 1, ptr %i.bp, align 1, !tbaa !99
  br label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i130

_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i130: ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i131, %bb.u
  store i8 1, ptr %i.ba, align 8, !tbaa !98
  br label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_path_t17cff1_path_param_t22cff1_path_procs_path_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit132

_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_path_t17cff1_path_param_t22cff1_path_procs_path_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit132: ; preds = %bb.q, %bb.r, %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i130
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !109
  %i.bs = lshr i32 %i.br, 1
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 4156 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !92
  %i.bv = add i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !92
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 0, ptr %i.bw, align 4, !tbaa !100
  store i32 0, ptr %i.bq, align 4, !tbaa !109
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.v:                                             ; preds = %bb.a, %bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 4464 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !98, !range !110, !noundef !111
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_path_t17cff1_path_param_t22cff1_path_procs_path_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit136, label %bb.w

bb.w:                                             ; preds = %bb.v
  switch i32 %0, label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_path_t17cff1_path_param_t22cff1_path_procs_path_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit136 [
    i32 14, label %bb.x
    i32 21, label %bb.z
    i32 18, label %bb.x
    i32 3, label %bb.x
    i32 23, label %bb.x
    i32 19, label %bb.x
    i32 20, label %bb.x
    i32 22, label %bb.y
    i32 4, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !109 ; 2 uses
  %i.cc = trunc i32 %i.cb to i1
  br label %bb.aa

bb.y:                                             ; preds = %bb.w, %bb.w
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !109 ; 2 uses
  %i.cf = icmp ugt i32 %i.ce, 1
  br label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !109 ; 2 uses
  %i.ci = icmp ugt i32 %i.ch, 2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cj = phi i32 [ %i.cb, %bb.x ], [ %i.ce, %bb.y ], [ %i.ch, %bb.z ]
  %.0.i133 = phi i1 [ %i.cc, %bb.x ], [ %i.cf, %bb.y ], [ %i.ci, %bb.z ]
  %i.ck = icmp ne i32 %i.cj, 0
  %i.cl = and i1 %.0.i133, %i.ck
  br i1 %i.cl, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i135, label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i134, !prof !112

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i135: ; preds = %bb.aa
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 4472
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !113
  store i64 %i.co, ptr %i.cn, align 8, !tbaa !113
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 4465
  store i8 1, ptr %i.cp, align 1, !tbaa !99
  br label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i134

_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i134: ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i135, %bb.aa
  store i8 1, ptr %i.bx, align 8, !tbaa !98
  br label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_path_t17cff1_path_param_t22cff1_path_procs_path_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit136

_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_path_t17cff1_path_param_t22cff1_path_procs_path_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit136: ; preds = %bb.v, %bb.w, %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i134
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !109
  %i.cs = lshr i32 %i.cr, 1
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 4160 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !93
  %i.cv = add i32 %i.cu, %i.cs
  store i32 %i.cv, ptr %i.ct, align 8, !tbaa !93
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 0, ptr %i.cw, align 4, !tbaa !100
  store i32 0, ptr %i.cq, align 4, !tbaa !109
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.ab:                                            ; preds = %bb.a, %bb.a
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 4464 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !98, !range !110, !noundef !111
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_path_t17cff1_path_param_t22cff1_path_procs_path_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit140, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.db = load i32, ptr %i.da, align 4, !tbaa !109
  %i.dc = trunc i32 %i.db to i1
  br i1 %i.dc, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i139, label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i138, !prof !112

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i139: ; preds = %bb.ac
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 4472
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !113
  store i64 %i.df, ptr %i.de, align 8, !tbaa !113
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 4465
  store i8 1, ptr %i.dg, align 1, !tbaa !99
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 1, ptr %i.dh, align 4, !tbaa !100
  br label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i138

_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i138: ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i139, %bb.ac
  store i8 1, ptr %i.cx, align 8, !tbaa !98
  br label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_path_t17cff1_path_param_t22cff1_path_procs_path_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit140

_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_path_t17cff1_path_param_t22cff1_path_procs_path_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit140: ; preds = %bb.ab, %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i138
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 4154 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 2, !tbaa !91, !range !110, !noundef !111
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %._ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE23determine_hintmask_sizeEv.exit_crit_edge.i, label %bb.ad

._ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE23determine_hintmask_sizeEv.exit_crit_edge.i: ; preds = %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_path_t17cff1_path_param_t22cff1_path_procs_path_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit140
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 4164
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !94
  br label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE23determine_hintmask_sizeEv.exit.i

bb.ad:                                            ; preds = %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_path_t17cff1_path_param_t22cff1_path_procs_path_tE11check_widthEjRNS_20cff1_cs_interp_env_tERS2_.exit140
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !109
  %i.dn = lshr i32 %i.dm, 1
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 4160 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !93
  %i.dq = add i32 %i.dp, %i.dn                    ; 2 uses
  store i32 %i.dq, ptr %i.do, align 8, !tbaa !93
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 4156
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !92
  %i.dt = add i32 %i.dq, 7
end_hunk_2
begin_hunk_3_@_ZN20cff1_cs_opset_seac_t12process_seacERN3CFF20cff1_cs_interp_env_tER16get_seac_param_t:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 244
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !245
  %i.as = icmp eq i32 %i.ar, 0
  %i.at = icmp samesign ult i32 %.0.i10, 229
  %or.cond.i = and i1 %i.at, %i.as
  %..i = select i1 %or.cond.i, i32 %i.ak, i32 0
  br label %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE17std_code_to_glyphEj.exit

_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE17std_code_to_glyphEj.exit: ; preds = %_ZNK3CFF8number_t6to_intEv.exit16, %bb.h, %bb.i
  %i.au = phi ptr [ %i.af, %_ZNK3CFF8number_t6to_intEv.exit16 ], [ %.pre26, %bb.h ], [ %i.af, %bb.i ] ; 3 uses
  %.0.i17 = phi i32 [ 0, %_ZNK3CFF8number_t6to_intEv.exit16 ], [ %i.ap, %bb.h ], [ %..i, %bb.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.0.i17, ptr %i.av, align 8, !tbaa !158
  %i.aw = icmp ult i32 %.0.i15, 256
  br i1 %i.aw, label %_ZN2OT4cff132lookup_standard_encoding_for_sidEj.exit.i20, label %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE17std_code_to_glyphEj.exit24

_ZN2OT4cff132lookup_standard_encoding_for_sidEj.exit.i20: ; preds = %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE17std_code_to_glyphEj.exit
  %i.ax = zext nneg i32 %.0.i15 to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @_ZL24standard_encoding_to_sid, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !16
  %i.ba = zext i8 %i.az to i32                    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !243 ; 2 uses
  %.not.i21 = icmp eq ptr %i.bc, @_hb_NullPool
  br i1 %.not.i21, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN2OT4cff132lookup_standard_encoding_for_sidEj.exit.i20
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 296
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !244
  %i.bf = tail call noundef i32 @_ZNK3CFF7Charset9get_glyphEjj(ptr noundef nonnull align 1 dereferenceable(5) %i.bc, i32 noundef %i.ba, i32 noundef %i.be)
  br label %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE17std_code_to_glyphEj.exit24

bb.k:                                             ; preds = %_ZN2OT4cff132lookup_standard_encoding_for_sidEj.exit.i20
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 244
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !245
  %i.bi = icmp eq i32 %i.bh, 0
  %i.bj = icmp samesign ult i32 %.0.i15, 229
  %or.cond.i22 = and i1 %i.bj, %i.bi
  %..i23 = select i1 %or.cond.i22, i32 %i.ba, i32 0
  br label %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE17std_code_to_glyphEj.exit24

_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE17std_code_to_glyphEj.exit24: ; preds = %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE17std_code_to_glyphEj.exit, %bb.j, %bb.k
  %.0.i19 = phi i32 [ 0, %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE17std_code_to_glyphEj.exit ], [ %i.bf, %bb.j ], [ %..i23, %bb.k ]
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %.0.i19, ptr %i.bk, align 4, !tbaa !159
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF10cs_opset_tINS_8number_tE20cff1_cs_opset_seac_tNS_20cff1_cs_interp_env_tE16get_seac_param_tNS_17path_procs_null_tIS3_S4_EEE10process_opEjRS3_RS4_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(4481) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  switch i32 %0, label %bb.bf [
    i32 11, label %bb.b
    i32 14, label %bb.g
    i32 255, label %bb.i
    i32 10, label %bb.o
    i32 29, label %bb.p
    i32 1, label %bb.q
    i32 18, label %bb.q
    i32 3, label %bb.v
    i32 23, label %bb.v
    i32 19, label %bb.ab
    i32 20, label %bb.ab
    i32 21, label %bb.af
    i32 22, label %bb.aj
    i32 4, label %bb.an
    i32 5, label %bb.ar
    i32 6, label %bb.as
    i32 7, label %bb.at
    i32 8, label %bb.au
    i32 24, label %bb.av
    i32 25, label %bb.aw
    i32 26, label %bb.ax
    i32 27, label %bb.ay
    i32 30, label %bb.az
    i32 31, label %bb.ba
    i32 290, label %bb.bb
    i32 291, label %bb.bc
    i32 292, label %bb.bd
    i32 293, label %bb.be
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !76
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !114  ; 2 uses
  %i.e = icmp ugt i32 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.d, !prof !56

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i32 %i.d, 1
  store i32 %i.f, ptr %i.a, align 4, !tbaa !76
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4172 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !166  ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e, !prof !56

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4176
  %i.j = add i32 %i.h, -1                         ; 2 uses
  store i32 %i.j, ptr %i.g, align 4, !tbaa !166
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.k
  br label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE16return_from_subrEv.exit

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4168
  store i8 1, ptr %i.m, align 8, !tbaa !78
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE16return_from_subrEv.exit

_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE16return_from_subrEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.l, %bb.e ], [ @_hb_CrapPool, %bb.f ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4464) %1, ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i, i64 16, i1 false)
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4464 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !98, !range !110, !noundef !111
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !109
  %i.t = trunc i32 %i.s to i1
  br i1 %i.t, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i, label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i, !prof !112

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i: ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4472
  %i.w = load i64, ptr %i.u, align 8, !tbaa !113
  store i64 %i.w, ptr %i.v, align 8, !tbaa !113
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4465
  store i8 1, ptr %i.x, align 1, !tbaa !99
  br label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i

_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i: ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i, %bb.h
  store i8 1, ptr %i.o, align 8, !tbaa !98
  br label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit

_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit: ; preds = %bb.g, %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4152
  store i8 1, ptr %i.y, align 8, !tbaa !107
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 0, ptr %i.aa, align 4, !tbaa !100
  store i32 0, ptr %i.z, align 4, !tbaa !109
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.i:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !76 ; 4 uses
  %i.ae = add i32 %i.ad, 4
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !114 ; 3 uses
  %.not = icmp ugt i32 %i.ae, %i.ag
  br i1 %.not, label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit, label %bb.j, !prof !56

bb.j:                                             ; preds = %bb.i
  %.not.i.i128 = icmp ult i32 %i.ad, %i.ag
  br i1 %.not.i.i128, label %bb.l, label %bb.k, !prof !58

bb.k:                                             ; preds = %bb.j
  %i.ah = add i32 %i.ag, 1
  br label %_ZN3CFF14byte_str_ref_tixEi.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %1, align 8, !tbaa !108
  %i.aj = zext i32 %i.ad to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  br label %_ZN3CFF14byte_str_ref_tixEi.exit.i

_ZN3CFF14byte_str_ref_tixEi.exit.i:               ; preds = %bb.l, %bb.k
  %i.al = phi i32 [ %i.ah, %bb.k ], [ %i.ad, %bb.l ]
  %.0.i.i129 = phi ptr [ @_hb_NullPool, %bb.k ], [ %i.ak, %bb.l ]
  %i.am = load i32, ptr %.0.i.i129, align 1, !tbaa !161
  %i.an = tail call noundef i32 @llvm.bswap.i32(i32 %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !109 ; 3 uses
  %i.aq = icmp ult i32 %i.ap, 513
  br i1 %i.aq, label %bb.m, label %bb.n, !prof !58

bb.m:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = add nuw nsw i32 %i.ap, 1
  store i32 %i.as, ptr %i.ao, align 4, !tbaa !109
  %i.at = zext nneg i32 %i.ap to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.at
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE10push_fixedEi.exit.i

bb.n:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit.i
  store i8 1, ptr %i.ab, align 8, !tbaa !162
  %3 = load i64, ptr @_hb_NullPool, align 16
  store i64 %3, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE10push_fixedEi.exit.i

_ZN3CFF11arg_stack_tINS_8number_tEE10push_fixedEi.exit.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i = phi ptr [ %i.au, %bb.m ], [ @_hb_CrapPool, %bb.n ]
  %i.av = sitofp i32 %i.an to double
  %i.aw = fmul nnan double %i.av, f0x3EF0000000000000
  store double %i.aw, ptr %.0.i.i.i, align 8, !tbaa !25
  %i.ax = add i32 %i.al, 4
  store i32 %i.ax, ptr %i.ac, align 4, !tbaa !76
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.o:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 4432
  tail call void @_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9call_subrERKNS_14biased_subrs_tIS6_EENS_9cs_type_tE(ptr noundef nonnull align 8 dereferenceable(4464) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i32 noundef 2)
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.p:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4416
  tail call void @_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9call_subrERKNS_14biased_subrs_tIS6_EENS_9cs_type_tE(ptr noundef nonnull align 8 dereferenceable(4464) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i32 noundef 1)
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.q:                                             ; preds = %bb.a, %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 4464 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !98, !range !110, !noundef !111
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit132, label %bb.r

bb.r:                                             ; preds = %bb.q
  switch i32 %0, label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit132 [
    i32 14, label %bb.s
    i32 1, label %bb.s
    i32 18, label %bb.s
    i32 3, label %bb.s
    i32 4, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r, %bb.r, %bb.r, %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !109 ; 2 uses
  %i.bf = trunc i32 %i.be to i1
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !109 ; 2 uses
  %i.bi = icmp ugt i32 %i.bh, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bj = phi i32 [ %i.be, %bb.s ], [ %i.bh, %bb.t ]
  %.0.i = phi i1 [ %i.bf, %bb.s ], [ %i.bi, %bb.t ]
  %i.bk = icmp ne i32 %i.bj, 0
  %i.bl = and i1 %.0.i, %i.bk
  br i1 %i.bl, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i131, label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i130, !prof !112

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i131: ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 4472
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !113
  store i64 %i.bo, ptr %i.bn, align 8, !tbaa !113
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 4465
  store i8 1, ptr %i.bp, align 1, !tbaa !99
  br label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i130

_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i130: ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i131, %bb.u
  store i8 1, ptr %i.ba, align 8, !tbaa !98
  br label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit132

_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit132: ; preds = %bb.q, %bb.r, %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i130
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !109
  %i.bs = lshr i32 %i.br, 1
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 4156 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !92
  %i.bv = add i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !92
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 0, ptr %i.bw, align 4, !tbaa !100
  store i32 0, ptr %i.bq, align 4, !tbaa !109
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.v:                                             ; preds = %bb.a, %bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 4464 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !98, !range !110, !noundef !111
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit136, label %bb.w

bb.w:                                             ; preds = %bb.v
  switch i32 %0, label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit136 [
    i32 14, label %bb.x
    i32 21, label %bb.z
    i32 18, label %bb.x
    i32 3, label %bb.x
    i32 23, label %bb.x
    i32 19, label %bb.x
    i32 20, label %bb.x
    i32 22, label %bb.y
    i32 4, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !109 ; 2 uses
  %i.cc = trunc i32 %i.cb to i1
  br label %bb.aa

bb.y:                                             ; preds = %bb.w, %bb.w
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !109 ; 2 uses
  %i.cf = icmp ugt i32 %i.ce, 1
  br label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !109 ; 2 uses
  %i.ci = icmp ugt i32 %i.ch, 2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cj = phi i32 [ %i.cb, %bb.x ], [ %i.ce, %bb.y ], [ %i.ch, %bb.z ]
  %.0.i133 = phi i1 [ %i.cc, %bb.x ], [ %i.cf, %bb.y ], [ %i.ci, %bb.z ]
  %i.ck = icmp ne i32 %i.cj, 0
  %i.cl = and i1 %.0.i133, %i.ck
  br i1 %i.cl, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i135, label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i134, !prof !112

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i135: ; preds = %bb.aa
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 4472
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !113
  store i64 %i.co, ptr %i.cn, align 8, !tbaa !113
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 4465
  store i8 1, ptr %i.cp, align 1, !tbaa !99
  br label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i134

_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i134: ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i135, %bb.aa
  store i8 1, ptr %i.bx, align 8, !tbaa !98
  br label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit136

_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit136: ; preds = %bb.v, %bb.w, %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i134
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !109
  %i.cs = lshr i32 %i.cr, 1
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 4160 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !93
  %i.cv = add i32 %i.cu, %i.cs
  store i32 %i.cv, ptr %i.ct, align 8, !tbaa !93
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 0, ptr %i.cw, align 4, !tbaa !100
  store i32 0, ptr %i.cq, align 4, !tbaa !109
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.ab:                                            ; preds = %bb.a, %bb.a
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 4464 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !98, !range !110, !noundef !111
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit140, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.db = load i32, ptr %i.da, align 4, !tbaa !109
  %i.dc = trunc i32 %i.db to i1
  br i1 %i.dc, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i139, label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i138, !prof !112

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i139: ; preds = %bb.ac
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 4472
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !113
  store i64 %i.df, ptr %i.de, align 8, !tbaa !113
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 4465
  store i8 1, ptr %i.dg, align 1, !tbaa !99
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 4468
  store i32 1, ptr %i.dh, align 4, !tbaa !100
  br label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i138

_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i138: ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i139, %bb.ac
  store i8 1, ptr %i.cx, align 8, !tbaa !98
  br label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit140

_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit140: ; preds = %bb.ab, %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i138
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 4154 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 2, !tbaa !91, !range !110, !noundef !111
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %._ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE23determine_hintmask_sizeEv.exit_crit_edge.i, label %bb.ad

._ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE23determine_hintmask_sizeEv.exit_crit_edge.i: ; preds = %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit140
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 4164
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !94
  br label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE23determine_hintmask_sizeEv.exit.i

bb.ad:                                            ; preds = %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit140
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !109
  %i.dn = lshr i32 %i.dm, 1
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 4160 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !93
  %i.dq = add i32 %i.dp, %i.dn                    ; 2 uses
  store i32 %i.dq, ptr %i.do, align 8, !tbaa !93
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 4156
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !92
  %i.dt = add i32 %i.dq, 7
end_hunk_3
