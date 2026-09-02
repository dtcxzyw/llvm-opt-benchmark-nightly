Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-cff2?download=true
inline.NumInlined: 4922
inline.NumDeleted: 2282
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN3CFF10cs_opset_tINS_11blend_arg_tENS_21cff2_cs_opset_usage_tENS_20cff2_cs_interp_env_tIS1_EENS_18cff2_usage_param_tENS_17path_procs_null_tIS4_S5_EEE16process_hintmaskEjRS4_RS5_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !483
  %i.f = lshr i32 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16472 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !489
  %i.i = add i32 %i.h, %i.f                       ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !489
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16468
  %i.k = load i32, ptr %i.j, align 4, !tbaa !488
  %i.l = add i32 %i.i, 7
  %i.m = add i32 %i.l, %i.k
  %i.n = lshr i32 %i.m, 3                         ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16476
  store i32 %i.n, ptr %i.o, align 4, !tbaa !490
  store i8 1, ptr %i.a, align 2, !tbaa !487
  br label %_ZN3CFF15cs_interp_env_tINS_11blend_arg_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE23determine_hintmask_sizeEv.exit

_ZN3CFF15cs_interp_env_tINS_11blend_arg_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE23determine_hintmask_sizeEv.exit: ; preds = %._ZN3CFF15cs_interp_env_tINS_11blend_arg_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE23determine_hintmask_sizeEv.exit_crit_edge, %bb.b
  %i.p = phi i32 [ %.pre, %._ZN3CFF15cs_interp_env_tINS_11blend_arg_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE23determine_hintmask_sizeEv.exit_crit_edge ], [ %i.n, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16476
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !367
  %i.t = add i32 %i.s, %i.p
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !368
  %.not = icmp ugt i32 %i.t, %i.v
  br i1 %.not, label %bb.i, label %bb.c, !prof !99

bb.c:                                             ; preds = %_ZN3CFF15cs_interp_env_tINS_11blend_arg_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE23determine_hintmask_sizeEv.exit
  switch i32 %0, label %.critedge.i.i [
    i32 11, label %_ZN3CFF10cs_opset_tINS_11blend_arg_tENS_21cff2_cs_opset_usage_tENS_20cff2_cs_interp_env_tIS1_EENS_18cff2_usage_param_tENS_17path_procs_null_tIS4_S5_EEE14flush_hintmaskEjRS4_RS5_.exit
    i32 14, label %_ZN3CFF10cs_opset_tINS_11blend_arg_tENS_21cff2_cs_opset_usage_tENS_20cff2_cs_interp_env_tIS1_EENS_18cff2_usage_param_tENS_17path_procs_null_tIS4_S5_EEE14flush_hintmaskEjRS4_RS5_.exit
    i32 1, label %bb.d
    i32 18, label %bb.d
    i32 3, label %bb.d
    i32 23, label %bb.d
    i32 19, label %bb.d
    i32 20, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i8, ptr %i.w, align 8, !tbaa !354, !range !121, !noundef !122
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_ZN3CFF10cs_opset_tINS_11blend_arg_tENS_21cff2_cs_opset_usage_tENS_20cff2_cs_interp_env_tIS1_EENS_18cff2_usage_param_tENS_17path_procs_null_tIS4_S5_EEE14flush_hintmaskEjRS4_RS5_.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.d, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !483 ; 2 uses
  %.not14.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not14.i.i, label %_ZN3CFF10cs_opset_tINS_11blend_arg_tENS_21cff2_cs_opset_usage_tENS_20cff2_cs_interp_env_tIS1_EENS_18cff2_usage_param_tENS_17path_procs_null_tIS4_S5_EEE14flush_hintmaskEjRS4_RS5_.exit, label %_ZN3CFF11cff_stack_tINS_11blend_arg_tELi513EEixEj.exit.preheader.i.i

_ZN3CFF11cff_stack_tINS_11blend_arg_tELi513EEixEj.exit.preheader.i.i: ; preds = %.critedge.i.i
  %wide.trip.count.i.i = zext i32 %i.aa to i64
  br label %_ZN3CFF11cff_stack_tINS_11blend_arg_tELi513EEixEj.exit.i.i

bb.e:                                             ; preds = %_ZN3CFF11cff_stack_tINS_11blend_arg_tELi513EEixEj.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN3CFF10cs_opset_tINS_11blend_arg_tENS_21cff2_cs_opset_usage_tENS_20cff2_cs_interp_env_tIS1_EENS_18cff2_usage_param_tENS_17path_procs_null_tIS4_S5_EEE14flush_hintmaskEjRS4_RS5_.exit, label %_ZN3CFF11cff_stack_tINS_11blend_arg_tELi513EEixEj.exit.i.i, !llvm.loop !35

_ZN3CFF11cff_stack_tINS_11blend_arg_tELi513EEixEj.exit.i.i: ; preds = %bb.e, %_ZN3CFF11cff_stack_tINS_11blend_arg_tELi513EEixEj.exit.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %_ZN3CFF11cff_stack_tINS_11blend_arg_tELi513EEixEj.exit.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 44
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !612
  %.not.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.f:                                             ; preds = %_ZN3CFF11cff_stack_tINS_11blend_arg_tELi513EEixEj.exit.i.i
  %i.ae = load ptr, ptr %2, align 8, !tbaa !353   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16804
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !501 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 48 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !350, !range !121, !noundef !122
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.g, label %bb.h, !prof !99

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.ah, i32 noundef %i.ag)
  br label %_ZN3CFF10cs_opset_tINS_11blend_arg_tENS_21cff2_cs_opset_usage_tENS_20cff2_cs_interp_env_tIS1_EENS_18cff2_usage_param_tENS_17path_procs_null_tIS4_S5_EEE14flush_hintmaskEjRS4_RS5_.exit

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.ah, i32 noundef %i.ag)
  br label %_ZN3CFF10cs_opset_tINS_11blend_arg_tENS_21cff2_cs_opset_usage_tENS_20cff2_cs_interp_env_tIS1_EENS_18cff2_usage_param_tENS_17path_procs_null_tIS4_S5_EEE14flush_hintmaskEjRS4_RS5_.exit

_ZN3CFF10cs_opset_tINS_11blend_arg_tENS_21cff2_cs_opset_usage_tENS_20cff2_cs_interp_env_tIS1_EENS_18cff2_usage_param_tENS_17path_procs_null_tIS4_S5_EEE14flush_hintmaskEjRS4_RS5_.exit: ; preds = %bb.e, %bb.c, %bb.c, %bb.d, %.critedge.i.i, %bb.g, %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.al, align 4, !tbaa !483
  %i.am = load i32, ptr %i.q, align 4, !tbaa !490
  %i.an = load i32, ptr %i.r, align 4, !tbaa !367
  %i.ao = add i32 %i.an, %i.am
  store i32 %i.ao, ptr %i.r, align 4, !tbaa !367
  br label %bb.i

bb.i:                                             ; preds = %_ZN3CFF10cs_opset_tINS_11blend_arg_tENS_21cff2_cs_opset_usage_tENS_20cff2_cs_interp_env_tIS1_EENS_18cff2_usage_param_tENS_17path_procs_null_tIS4_S5_EEE14flush_hintmaskEjRS4_RS5_.exit, %_ZN3CFF15cs_interp_env_tINS_11blend_arg_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE23determine_hintmask_sizeEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF7opset_tINS_11blend_arg_tEE10process_opEjRNS_12interp_env_tIS1_EE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(16440) %1) local_unnamed_addr #0 comdat align 2 {
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
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !367  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !368  ; 4 uses
  %.not.i = icmp ult i32 %i.c, %i.e
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !97

bb.c:                                             ; preds = %bb.b
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %i.b, align 4, !tbaa !367
  br label %_ZN3CFF14byte_str_ref_tixEi.exit

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !369
  %i.h = zext i32 %i.c to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  br label %_ZN3CFF14byte_str_ref_tixEi.exit

_ZN3CFF14byte_str_ref_tixEi.exit:                 ; preds = %bb.c, %bb.d
  %i.j = phi i32 [ %i.f, %bb.c ], [ %i.c, %bb.d ] ; 2 uses
  %.0.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.i, %bb.d ]
  %i.k = load i8, ptr %.0.i, align 1, !tbaa !148
  %i.l = zext i8 %i.k to i16
  %i.m = shl nuw i16 %i.l, 8
  %i.n = add i32 %i.j, 1                          ; 2 uses
  %.not.i18 = icmp ult i32 %i.n, %i.e
  br i1 %.not.i18, label %bb.f, label %bb.e, !prof !97

bb.e:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit
  %i.o = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.o, ptr %i.b, align 4, !tbaa !367
  br label %_ZN3CFF14byte_str_ref_tixEi.exit20

bb.f:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit
  %i.p = load ptr, ptr %1, align 8, !tbaa !369
  %i.q = zext i32 %i.n to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  br label %_ZN3CFF14byte_str_ref_tixEi.exit20

_ZN3CFF14byte_str_ref_tixEi.exit20:               ; preds = %bb.e, %bb.f
  %i.s = phi i32 [ %i.o, %bb.e ], [ %i.j, %bb.f ]
  %.0.i19 = phi ptr [ @_hb_NullPool, %bb.e ], [ %i.r, %bb.f ]
  %i.t = load i8, ptr %.0.i19, align 1, !tbaa !148
  %i.u = zext i8 %i.t to i16
  %i.v = or disjoint i16 %i.m, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !483  ; 3 uses
  %i.y = icmp ult i32 %i.x, 513
  br i1 %i.y, label %bb.g, label %bb.h, !prof !97

bb.g:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit20
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = add nuw nsw i32 %i.x, 1
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !483
  %i.ab = zext nneg i32 %i.x to i64
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ab
  br label %_ZN3CFF11arg_stack_tINS_11blend_arg_tEE8push_intEi.exit

bb.h:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit20
  store i8 1, ptr %i.a, align 8, !tbaa !541
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(32) @_hb_NullPool, i64 32, i1 false)
  %.pre36 = load i32, ptr %i.b, align 4, !tbaa !367
  br label %_ZN3CFF11arg_stack_tINS_11blend_arg_tEE8push_intEi.exit

_ZN3CFF11arg_stack_tINS_11blend_arg_tEE8push_intEi.exit: ; preds = %bb.g, %bb.h
  %i.ad = phi i32 [ %i.s, %bb.g ], [ %.pre36, %bb.h ]
  %.0.i.i = phi ptr [ %i.ac, %bb.g ], [ @_hb_CrapPool, %bb.h ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !610
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store i32 0, ptr %i.af, align 8, !tbaa !611
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20
  store i32 0, ptr %i.ag, align 4, !tbaa !137
  %i.ah = sitofp i16 %i.v to double
  store double %i.ah, ptr %.0.i.i, align 8, !tbaa !145
  %i.ai = add i32 %i.ad, 2
  store i32 %i.ai, ptr %i.b, align 4, !tbaa !367
  br label %bb.x

bb.i:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !367 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !368 ; 2 uses
  %.not.i21 = icmp ult i32 %i.al, %i.an
  br i1 %.not.i21, label %bb.k, label %bb.j, !prof !97

bb.j:                                             ; preds = %bb.i
  %i.ao = add i32 %i.an, 1                        ; 2 uses
  store i32 %i.ao, ptr %i.ak, align 4, !tbaa !367
  br label %_ZN3CFF14byte_str_ref_tixEi.exit23

bb.k:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %1, align 8, !tbaa !369
  %i.aq = zext i32 %i.al to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aq
  br label %_ZN3CFF14byte_str_ref_tixEi.exit23

_ZN3CFF14byte_str_ref_tixEi.exit23:               ; preds = %bb.j, %bb.k
  %i.as = phi i32 [ %i.ao, %bb.j ], [ %i.al, %bb.k ]
  %.0.i22 = phi ptr [ @_hb_NullPool, %bb.j ], [ %i.ar, %bb.k ]
  %i.at = load i8, ptr %.0.i22, align 1, !tbaa !148
  %i.au = zext i8 %i.at to i32
  %2 = shl nuw nsw i32 %0, 8
  %3 = add nuw nsw i32 %2, 2412
  %sext17 = add nuw nsw i32 %3, %i.au
  %4 = and i32 %sext17, 65535
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !483 ; 3 uses
  %i.ax = icmp ult i32 %i.aw, 513
  br i1 %i.ax, label %bb.l, label %bb.m, !prof !97

bb.l:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit23
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = add nuw nsw i32 %i.aw, 1
  store i32 %i.az, ptr %i.av, align 4, !tbaa !483
  %i.ba = zext nneg i32 %i.aw to i64
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.ay, i64 %i.ba
  br label %_ZN3CFF11arg_stack_tINS_11blend_arg_tEE8push_intEi.exit25

bb.m:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit23
  store i8 1, ptr %i.aj, align 8, !tbaa !541
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(32) @_hb_NullPool, i64 32, i1 false)
  %.pre35 = load i32, ptr %i.ak, align 4, !tbaa !367
  br label %_ZN3CFF11arg_stack_tINS_11blend_arg_tEE8push_intEi.exit25

_ZN3CFF11arg_stack_tINS_11blend_arg_tEE8push_intEi.exit25: ; preds = %bb.l, %bb.m
  %i.bc = phi i32 [ %i.as, %bb.l ], [ %.pre35, %bb.m ]
  %.0.i.i24 = phi ptr [ %i.bb, %bb.l ], [ @_hb_CrapPool, %bb.m ] ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i24, i64 12
  store i32 0, ptr %i.bd, align 4, !tbaa !610
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i.i24, i64 8
  store i32 0, ptr %i.be, align 8, !tbaa !611
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i24, i64 20
  store i32 0, ptr %i.bf, align 4, !tbaa !137
  %i.bg = uitofp nneg i32 %4 to double
  store double %i.bg, ptr %.0.i.i24, align 8, !tbaa !145
  %i.bh = add i32 %i.bc, 1
  store i32 %i.bh, ptr %i.ak, align 4, !tbaa !367
  br label %bb.x

bb.n:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = shl nuw nsw i32 %0, 16
  %sext = add nsw i32 %i.bj, -16449536
  %i.bk = lshr exact i32 %sext, 8
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !367 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !368 ; 2 uses
  %.not.i26 = icmp ult i32 %i.bm, %i.bo
  br i1 %.not.i26, label %bb.p, label %bb.o, !prof !97

bb.o:                                             ; preds = %bb.n
  %i.bp = add i32 %i.bo, 1                        ; 2 uses
  store i32 %i.bp, ptr %i.bl, align 4, !tbaa !367
  br label %_ZN3CFF14byte_str_ref_tixEi.exit28

bb.p:                                             ; preds = %bb.n
  %i.bq = load ptr, ptr %1, align 8, !tbaa !369
  %i.br = zext i32 %i.bm to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br
  br label %_ZN3CFF14byte_str_ref_tixEi.exit28

_ZN3CFF14byte_str_ref_tixEi.exit28:               ; preds = %bb.o, %bb.p
  %i.bt = phi i32 [ %i.bp, %bb.o ], [ %i.bm, %bb.p ]
  %.0.i27 = phi ptr [ @_hb_NullPool, %bb.o ], [ %i.bs, %bb.p ]
  %i.bu = load i8, ptr %.0.i27, align 1, !tbaa !148
  %i.bv = zext i8 %i.bu to i32
  %i.bw = or disjoint i32 %i.bk, %i.bv
  %i.bx = sub nuw nsw i32 -108, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !483 ; 3 uses
  %i.ca = icmp ult i32 %i.bz, 513
  br i1 %i.ca, label %bb.q, label %bb.r, !prof !97

bb.q:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit28
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cc = add nuw nsw i32 %i.bz, 1
  store i32 %i.cc, ptr %i.by, align 4, !tbaa !483
  %i.cd = zext nneg i32 %i.bz to i64
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %i.cb, i64 %i.cd
  br label %_ZN3CFF11arg_stack_tINS_11blend_arg_tEE8push_intEi.exit30

bb.r:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit28
  store i8 1, ptr %i.bi, align 8, !tbaa !541
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(32) @_hb_NullPool, i64 32, i1 false)
  %.pre = load i32, ptr %i.bl, align 4, !tbaa !367
  br label %_ZN3CFF11arg_stack_tINS_11blend_arg_tEE8push_intEi.exit30

_ZN3CFF11arg_stack_tINS_11blend_arg_tEE8push_intEi.exit30: ; preds = %bb.q, %bb.r
  %i.cf = phi i32 [ %i.bt, %bb.q ], [ %.pre, %bb.r ]
  %.0.i.i29 = phi ptr [ %i.ce, %bb.q ], [ @_hb_CrapPool, %bb.r ] ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.i29, i64 12
  store i32 0, ptr %i.cg, align 4, !tbaa !610
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i.i29, i64 8
  store i32 0, ptr %i.ch, align 8, !tbaa !611
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i.i29, i64 20
  store i32 0, ptr %i.ci, align 4, !tbaa !137
  %i.cj = sitofp i32 %i.bx to double
  store double %i.cj, ptr %.0.i.i29, align 8, !tbaa !145
  %i.ck = add i32 %i.cf, 1
  store i32 %i.ck, ptr %i.bl, align 4, !tbaa !367
  br label %bb.x

bb.s:                                             ; preds = %bb.a
  %i.cl = add i32 %0, -32
  %i.cm = icmp ult i32 %i.cl, 215
  br i1 %i.cm, label %bb.t, label %bb.w, !prof !97

bb.t:                                             ; preds = %bb.s
  %i.cn = add nsw i32 %0, -139
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !483 ; 3 uses
  %i.cq = icmp ult i32 %i.cp, 513
  br i1 %i.cq, label %bb.u, label %bb.v, !prof !97

bb.u:                                             ; preds = %bb.t
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cs = add nuw nsw i32 %i.cp, 1
  store i32 %i.cs, ptr %i.co, align 4, !tbaa !483
  %i.ct = zext nneg i32 %i.cp to i64
  %i.cu = getelementptr inbounds nuw [32 x i8], ptr %i.cr, i64 %i.ct
  br label %_ZN3CFF11arg_stack_tINS_11blend_arg_tEE8push_intEi.exit32

bb.v:                                             ; preds = %bb.t
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 1, ptr %i.cv, align 8, !tbaa !541
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(32) @_hb_NullPool, i64 32, i1 false)
  br label %_ZN3CFF11arg_stack_tINS_11blend_arg_tEE8push_intEi.exit32

_ZN3CFF11arg_stack_tINS_11blend_arg_tEE8push_intEi.exit32: ; preds = %bb.u, %bb.v
  %.0.i.i31 = phi ptr [ %i.cu, %bb.u ], [ @_hb_CrapPool, %bb.v ] ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i.i31, i64 12
  store i32 0, ptr %i.cw, align 4, !tbaa !610
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i.i31, i64 8
  store i32 0, ptr %i.cx, align 8, !tbaa !611
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i.i31, i64 20
  store i32 0, ptr %i.cy, align 4, !tbaa !137
  %i.cz = sitofp i32 %i.cn to double
  store double %i.cz, ptr %.0.i.i31, align 8, !tbaa !145
  br label %bb.x

bb.w:                                             ; preds = %bb.s
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.da, align 4, !tbaa !483
  br label %bb.x

bb.x:                                             ; preds = %_ZN3CFF11arg_stack_tINS_11blend_arg_tEE8push_intEi.exit32, %bb.w, %_ZN3CFF11arg_stack_tINS_11blend_arg_tEE8push_intEi.exit30, %_ZN3CFF11arg_stack_tINS_11blend_arg_tEE8push_intEi.exit25, %_ZN3CFF11arg_stack_tINS_11blend_arg_tEE8push_intEi.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF20cff2_cs_interp_env_tINS_11blend_arg_tEE13process_blendEv(ptr noundef nonnull align 8 dereferenceable(16835) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16834 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2, !tbaa !495, !range !121, !noundef !122
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16824 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !375
  %i.f = load atomic ptr, ptr %i.e acquire, align 8 ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !375
  %i.h = cmpxchg weak ptr %i.g, ptr %i.f, ptr null acq_rel monotonic, align 8
  %i.i = extractvalue { ptr, i1 } %i.h, 1
  br i1 %i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = tail call ptr @hb_calloc(i64 noundef 1, i64 noundef 16) #16 ; 3 uses
  %.not9.i = icmp eq ptr %i.j, null
  br i1 %.not9.i, label %bb.f, label %bb.e, !prof !99

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16816
  store ptr null, ptr %i.k, align 8, !tbaa !374
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !368
  %i.n = add i32 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.n, ptr %i.o, align 4, !tbaa !367
  br label %bb.p

bb.g:                                             ; preds = %bb.c, %bb.e
  %.07.i.ph = phi ptr [ %i.j, %bb.e ], [ %i.f, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16816 ; 3 uses
  store ptr %.07.i.ph, ptr %i.p, align 8, !tbaa !374
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16792 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !498  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16804 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !501  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.w = load i16, ptr %i.v, align 1, !tbaa !276
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32
  %.not.i.i = icmp ult i32 %i.u, %i.y
  br i1 %.not.i.i, label %bb.h, label %_ZNK2OT18ItemVariationStore22get_region_index_countEj.exit, !prof !97

bb.h:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !443
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 10
  %i.aa = zext nneg i32 %i.u to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.aa
  br label %_ZNK2OT18ItemVariationStore22get_region_index_countEj.exit

_ZNK2OT18ItemVariationStore22get_region_index_countEj.exit: ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.ab, %bb.h ], [ @_hb_NullPool, %bb.g ]
  %i.ac = load i32, ptr %.0.i.i, align 1, !tbaa !346 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  %i.ae = tail call i32 @llvm.bswap.i32(i32 %i.ac)
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.af
  %.0.i.i.i = select i1 %i.ad, ptr @_hb_NullPool, ptr %i.ag, !prof !99
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.ai = load i16, ptr %i.ah, align 1, !tbaa !276
  %i.aj = tail call noundef i16 @llvm.bswap.i16(i16 %i.ai)
  %i.ak = zext i16 %i.aj to i32                   ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16800 ; 2 uses
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !493
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16832
  %i.an = load i8, ptr %i.am, align 8, !tbaa !499, !range !121, !noundef !122
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.i, label %bb.p

bb.i:                                             ; preds = %_ZNK2OT18ItemVariationStore22get_region_index_countEj.exit
  %i.ap = load ptr, ptr %i.p, align 8, !tbaa !374 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN3CFF12dict_opset_t9parse_bcdERNS_14byte_str_ref_tE:bb.a

bb.c:                                             ; preds = %bb.b, %bb.n
  %.02454 = phi i32 [ 0, %bb.b ], [ %i.ai, %bb.n ] ; 4 uses
  %.02753 = phi i32 [ 0, %bb.b ], [ %i.ah, %bb.n ] ; 2 uses
  %.02852 = phi i8 [ 0, %bb.b ], [ %.129, %bb.n ] ; 2 uses
  %i.k = phi i32 [ %i.e, %bb.b ], [ %i.s, %bb.n ] ; 4 uses
  %i.l = and i32 %.02753, 1
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.m = add i32 %i.k, 1                          ; 2 uses
  %.not50 = icmp ugt i32 %i.m, %i.g
  br i1 %.not50, label %.thread41, label %bb.e, !prof !99

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp ult i32 %i.k, %i.g
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !97

bb.f:                                             ; preds = %bb.e
  store i32 %i.i, ptr %i.d, align 4, !tbaa !367
  br label %_ZN3CFF14byte_str_ref_tixEi.exit

bb.g:                                             ; preds = %bb.e
  %i.n = zext i32 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.n
  br label %_ZN3CFF14byte_str_ref_tixEi.exit

_ZN3CFF14byte_str_ref_tixEi.exit:                 ; preds = %bb.f, %bb.g
  %.pre-phi58 = phi i32 [ %.pre57, %bb.f ], [ %i.m, %bb.g ] ; 2 uses
  %.0.i = phi ptr [ @_hb_NullPool, %bb.f ], [ %i.o, %bb.g ]
  %i.p = load i8, ptr %.0.i, align 1, !tbaa !148  ; 2 uses
  store i32 %.pre-phi58, ptr %i.d, align 4, !tbaa !367
  %i.q = lshr i8 %i.p, 4
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.r = and i8 %.02852, 15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN3CFF14byte_str_ref_tixEi.exit
  %i.s = phi i32 [ %i.k, %bb.h ], [ %.pre-phi58, %_ZN3CFF14byte_str_ref_tixEi.exit ]
  %.129 = phi i8 [ %.02852, %bb.h ], [ %i.p, %_ZN3CFF14byte_str_ref_tixEi.exit ]
  %.0.in = phi i8 [ %i.r, %bb.h ], [ %i.q, %_ZN3CFF14byte_str_ref_tixEi.exit ] ; 3 uses
  switch i8 %.0.in, label %bb.k [
    i8 13, label %.thread41
    i8 15, label %bb.j
  ], !prof !1364

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr %i.a, ptr %i.b, align 8, !tbaa !267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.t = zext nneg i32 %.02454 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.t
  %i.v = call noundef zeroext i1 @_Z15hb_parse_doublePPKcS0_Pdb(ptr noundef nonnull %i.b, ptr noundef nonnull %i.u, ptr noundef nonnull %i.c, i1 noundef zeroext true) #16
  %i.w = load double, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br i1 %i.v, label %bb.o, label %..thread41_crit_edge, !prof !97

..thread41_crit_edge:                             ; preds = %bb.j
  %.pre = load i32, ptr %i.f, align 8, !tbaa !368
  %.pre56 = add i32 %.pre, 1
  br label %.thread41

bb.k:                                             ; preds = %bb.i
  %i.x = zext nneg i8 %.0.in to i64
  %i.y = getelementptr inbounds nuw i8, ptr @.str.2, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !148
  %i.aa = zext nneg i32 %.02454 to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aa
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !148
  %i.ac = icmp eq i8 %.0.in, 12
  br i1 %i.ac, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ad = add nuw nsw i32 %.02454, 1              ; 3 uses
  %i.ae = icmp eq i32 %i.ad, 32
  br i1 %i.ae, label %.thread41, label %bb.m, !prof !99

bb.m:                                             ; preds = %bb.l
  %i.af = zext nneg i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.af
  store i8 45, ptr %i.ag, align 1, !tbaa !148
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.226 = phi i32 [ %i.ad, %bb.m ], [ %.02454, %bb.k ] ; 2 uses
  %i.ah = add i32 %.02753, 1
  %i.ai = add nuw nsw i32 %.226, 1
  %i.aj = icmp ult i32 %.226, 31
  br i1 %i.aj, label %bb.c, label %.thread41, !llvm.loop !1363

.thread41:                                        ; preds = %bb.d, %bb.i, %bb.l, %bb.n, %..thread41_crit_edge
  %.pre-phi = phi i32 [ %.pre56, %..thread41_crit_edge ], [ %i.i, %bb.n ], [ %i.i, %bb.l ], [ %i.i, %bb.i ], [ %i.i, %bb.d ]
  store i32 %.pre-phi, ptr %i.d, align 4, !tbaa !367
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %.thread41
  %.4 = phi double [ 0.000000e+00, %.thread41 ], [ %i.w, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.o
  %.5 = phi double [ %.4, %bb.o ], [ 0.000000e+00, %bb.a ]
  ret double %.5
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
  %i.c = load i32, ptr %i.b, align 4, !tbaa !367  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !368  ; 4 uses
  %.not.i = icmp ult i32 %i.c, %i.e
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !97

bb.c:                                             ; preds = %bb.b
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %i.b, align 4, !tbaa !367
  br label %_ZN3CFF14byte_str_ref_tixEi.exit

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !369
  %i.h = zext i32 %i.c to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  br label %_ZN3CFF14byte_str_ref_tixEi.exit

_ZN3CFF14byte_str_ref_tixEi.exit:                 ; preds = %bb.c, %bb.d
  %i.j = phi i32 [ %i.f, %bb.c ], [ %i.c, %bb.d ] ; 2 uses
  %.0.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.i, %bb.d ]
  %i.k = load i8, ptr %.0.i, align 1, !tbaa !148
  %i.l = zext i8 %i.k to i16
  %i.m = shl nuw i16 %i.l, 8
  %i.n = add i32 %i.j, 1                          ; 2 uses
  %.not.i18 = icmp ult i32 %i.n, %i.e
  br i1 %.not.i18, label %bb.f, label %bb.e, !prof !97

bb.e:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit
  %i.o = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.o, ptr %i.b, align 4, !tbaa !367
  br label %_ZN3CFF14byte_str_ref_tixEi.exit20

bb.f:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit
  %i.p = load ptr, ptr %1, align 8, !tbaa !369
  %i.q = zext i32 %i.n to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  br label %_ZN3CFF14byte_str_ref_tixEi.exit20

_ZN3CFF14byte_str_ref_tixEi.exit20:               ; preds = %bb.e, %bb.f
  %i.s = phi i32 [ %i.o, %bb.e ], [ %i.j, %bb.f ]
  %.0.i19 = phi ptr [ @_hb_NullPool, %bb.e ], [ %i.r, %bb.f ]
  %i.t = load i8, ptr %.0.i19, align 1, !tbaa !148
  %i.u = zext i8 %i.t to i16
  %i.v = or disjoint i16 %i.m, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !502  ; 3 uses
  %i.y = icmp ult i32 %i.x, 513
  br i1 %i.y, label %bb.g, label %bb.h, !prof !97

bb.g:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit20
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = add nuw nsw i32 %i.x, 1
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !502
  %i.ab = zext nneg i32 %i.x to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit

bb.h:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit20
  store i8 1, ptr %i.a, align 8, !tbaa !503
  %i.ad = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.ad, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit

_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit: ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.ac, %bb.g ], [ @_hb_CrapPool, %bb.h ]
  %i.ae = sitofp i16 %i.v to double
  store double %i.ae, ptr %.0.i.i, align 8, !tbaa !145
  %i.af = add i32 %i.s, 2
  store i32 %i.af, ptr %i.b, align 4, !tbaa !367
  br label %bb.x

bb.i:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !367 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !368 ; 2 uses
  %.not.i21 = icmp ult i32 %i.ai, %i.ak
  br i1 %.not.i21, label %bb.k, label %bb.j, !prof !97

bb.j:                                             ; preds = %bb.i
  %i.al = add i32 %i.ak, 1                        ; 2 uses
  store i32 %i.al, ptr %i.ah, align 4, !tbaa !367
  br label %_ZN3CFF14byte_str_ref_tixEi.exit23

bb.k:                                             ; preds = %bb.i
  %i.am = load ptr, ptr %1, align 8, !tbaa !369
  %i.an = zext i32 %i.ai to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  br label %_ZN3CFF14byte_str_ref_tixEi.exit23

_ZN3CFF14byte_str_ref_tixEi.exit23:               ; preds = %bb.j, %bb.k
  %i.ap = phi i32 [ %i.al, %bb.j ], [ %i.ai, %bb.k ]
  %.0.i22 = phi ptr [ @_hb_NullPool, %bb.j ], [ %i.ao, %bb.k ]
  %i.aq = load i8, ptr %.0.i22, align 1, !tbaa !148
  %i.ar = zext i8 %i.aq to i32
  %2 = shl nuw nsw i32 %0, 8
  %3 = add nuw nsw i32 %2, 2412
  %sext17 = add nuw nsw i32 %3, %i.ar
  %4 = and i32 %sext17, 65535
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !502 ; 3 uses
  %i.au = icmp ult i32 %i.at, 513
  br i1 %i.au, label %bb.l, label %bb.m, !prof !97

bb.l:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit23
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = add nuw nsw i32 %i.at, 1
  store i32 %i.aw, ptr %i.as, align 4, !tbaa !502
  %i.ax = zext nneg i32 %i.at to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ax
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit25

bb.m:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit23
  store i8 1, ptr %i.ag, align 8, !tbaa !503
  %i.az = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.az, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit25

_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit25: ; preds = %bb.l, %bb.m
  %.0.i.i24 = phi ptr [ %i.ay, %bb.l ], [ @_hb_CrapPool, %bb.m ]
  %i.ba = uitofp nneg i32 %4 to double
  store double %i.ba, ptr %.0.i.i24, align 8, !tbaa !145
  %i.bb = add i32 %i.ap, 1
  store i32 %i.bb, ptr %i.ah, align 4, !tbaa !367
  br label %bb.x

bb.n:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = shl nuw nsw i32 %0, 16
  %sext = add nsw i32 %i.bd, -16449536
  %i.be = lshr exact i32 %sext, 8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !367 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !368 ; 2 uses
  %.not.i26 = icmp ult i32 %i.bg, %i.bi
  br i1 %.not.i26, label %bb.p, label %bb.o, !prof !97

bb.o:                                             ; preds = %bb.n
  %i.bj = add i32 %i.bi, 1                        ; 2 uses
  store i32 %i.bj, ptr %i.bf, align 4, !tbaa !367
  br label %_ZN3CFF14byte_str_ref_tixEi.exit28

bb.p:                                             ; preds = %bb.n
  %i.bk = load ptr, ptr %1, align 8, !tbaa !369
  %i.bl = zext i32 %i.bg to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  br label %_ZN3CFF14byte_str_ref_tixEi.exit28

_ZN3CFF14byte_str_ref_tixEi.exit28:               ; preds = %bb.o, %bb.p
  %i.bn = phi i32 [ %i.bj, %bb.o ], [ %i.bg, %bb.p ]
  %.0.i27 = phi ptr [ @_hb_NullPool, %bb.o ], [ %i.bm, %bb.p ]
  %i.bo = load i8, ptr %.0.i27, align 1, !tbaa !148
  %i.bp = zext i8 %i.bo to i32
  %i.bq = or disjoint i32 %i.be, %i.bp
  %i.br = sub nuw nsw i32 -108, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !502 ; 3 uses
  %i.bu = icmp ult i32 %i.bt, 513
  br i1 %i.bu, label %bb.q, label %bb.r, !prof !97

bb.q:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit28
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bw = add nuw nsw i32 %i.bt, 1
  store i32 %i.bw, ptr %i.bs, align 4, !tbaa !502
  %i.bx = zext nneg i32 %i.bt to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bx
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit30

bb.r:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit28
  store i8 1, ptr %i.bc, align 8, !tbaa !503
  %i.bz = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.bz, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit30

_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit30: ; preds = %bb.q, %bb.r
  %.0.i.i29 = phi ptr [ %i.by, %bb.q ], [ @_hb_CrapPool, %bb.r ]
  %i.ca = sitofp i32 %i.br to double
  store double %i.ca, ptr %.0.i.i29, align 8, !tbaa !145
  %i.cb = add i32 %i.bn, 1
  store i32 %i.cb, ptr %i.bf, align 4, !tbaa !367
  br label %bb.x

bb.s:                                             ; preds = %bb.a
  %i.cc = add i32 %0, -32
  %i.cd = icmp ult i32 %i.cc, 215
  br i1 %i.cd, label %bb.t, label %bb.w, !prof !97

bb.t:                                             ; preds = %bb.s
  %i.ce = add nsw i32 %0, -139
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !502 ; 3 uses
  %i.ch = icmp ult i32 %i.cg, 513
  br i1 %i.ch, label %bb.u, label %bb.v, !prof !97

bb.u:                                             ; preds = %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cj = add nuw nsw i32 %i.cg, 1
  store i32 %i.cj, ptr %i.cf, align 4, !tbaa !502
  %i.ck = zext nneg i32 %i.cg to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ck
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit32

bb.v:                                             ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 1, ptr %i.cm, align 8, !tbaa !503
  %i.cn = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.cn, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit32

_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit32: ; preds = %bb.u, %bb.v
  %.0.i.i31 = phi ptr [ %i.cl, %bb.u ], [ @_hb_CrapPool, %bb.v ]
  %i.co = sitofp i32 %i.ce to double
  store double %i.co, ptr %.0.i.i31, align 8, !tbaa !145
  br label %bb.x

bb.w:                                             ; preds = %bb.s
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.cp, align 4, !tbaa !502
  br label %bb.x

bb.x:                                             ; preds = %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit32, %bb.w, %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit30, %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit25, %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit
  ret void
}

declare hidden noundef zeroext i1 @_Z15hb_parse_doublePPKcS0_Pdb(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE13set_with_hashIS3_RjEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !508, !range !121, !noundef !122
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k, !prof !97

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !526  ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !527
  %.not36 = icmp ult i32 %i.g, %i.i
  br i1 %.not36, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0)
  br i1 %i.j, label %.critedge, label %bb.k, !prof !97

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.k = and i32 %2, 1073741823                   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !518
  %i.n = urem i32 %i.k, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !509  ; 3 uses
  %i.q = zext nneg i32 %i.n to i64                ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8              ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not46 = icmp eq i32 %i.u, 0
  br i1 %.not46, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge, %bb.f
  %i.v = phi ptr [ %i.ae, %bb.f ], [ %i.p, %.critedge ]
  %i.w = phi i32 [ %i.ar, %bb.f ], [ %i.t, %.critedge ]
  %i.x = phi ptr [ %i.ap, %bb.f ], [ %i.r, %.critedge ]
  %i.y = phi i64 [ %i.ao, %bb.f ], [ %i.q, %.critedge ]
  %.050 = phi i32 [ %i.ak, %bb.f ], [ 0, %.critedge ] ; 2 uses
  %.03148 = phi i32 [ %i.an, %bb.f ], [ %i.n, %.critedge ] ; 3 uses
  %.03247 = phi i32 [ %spec.select, %bb.f ], [ -1, %.critedge ] ; 3 uses
  %i.z = lshr i32 %i.w, 2
  %i.aa = icmp eq i32 %i.z, %i.k
  br i1 %i.aa, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !520
  %i.ac = load ptr, ptr %1, align 8, !tbaa !298
  %i.ad = tail call noundef zeroext i1 @_ZNK12hb_hashmap_tIj6TripleLb0EE8is_equalERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %i.ac)
  br i1 %i.ad, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !509
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %4, label %..loopexit_crit_edge, label %bb.k

..loopexit_crit_edge:                             ; preds = %bb.e
  %.pre58 = load ptr, ptr %i.o, align 8, !tbaa !509
  br label %.loopexit

bb.f:                                             ; preds = %._crit_edge, %.lr.ph
  %i.ae = phi ptr [ %.pre, %._crit_edge ], [ %i.v, %.lr.ph ] ; 4 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.y
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = trunc i32 %i.ah to i1
  %i.aj = icmp ne i32 %.03247, -1
  %or.cond.not = select i1 %i.ai, i1 true, i1 %i.aj
  %spec.select = select i1 %or.cond.not, i32 %.03247, i32 %.03148 ; 2 uses
  %i.ak = add i32 %.050, 1                        ; 3 uses
  %i.al = add i32 %i.ak, %.03148
  %i.am = load i32, ptr %i.h, align 4, !tbaa !527
  %i.an = and i32 %i.am, %i.al                    ; 3 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i32, ptr %i.aq, align 8            ; 2 uses
  %i.as = and i32 %i.ar, 2
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !1365

.loopexit:                                        ; preds = %bb.f, %..loopexit_crit_edge
  %i.at = phi ptr [ %.pre58, %..loopexit_crit_edge ], [ %i.ae, %bb.f ]
  %.03245 = phi i32 [ %.03247, %..loopexit_crit_edge ], [ %spec.select, %bb.f ]
  %.03143 = phi i32 [ %.03148, %..loopexit_crit_edge ], [ %i.an, %bb.f ]
  %.03041 = phi i32 [ %.050, %..loopexit_crit_edge ], [ %i.ak, %bb.f ]
  %.03245.fr = freeze i32 %.03245                 ; 2 uses
  %i.au = icmp eq i32 %.03245.fr, -1
end_hunk_1
