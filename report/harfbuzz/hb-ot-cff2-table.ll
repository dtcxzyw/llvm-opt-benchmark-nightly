Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-ot-cff2-table?download=true
inline.NumInlined: 1161
inline.NumDeleted: 254
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE10process_opEjRNS_20cff2_cs_interp_env_tIS3_EERS2_:bb.a

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE13process_blendERNS_20cff2_cs_interp_env_tIS3_EERS2_(ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !148  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e, !prof !127

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = add i32 %i.c, -1
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %.pre.i.i.i.i = load double, ptr %i.g, align 8, !tbaa !123
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  store i8 1, ptr %i.a, align 8, !tbaa !149
  %i.h = load i64, ptr @_hb_NullPool, align 16    ; 2 uses
  store i64 %i.h, ptr @_hb_CrapPool, align 16
  %i.i = bitcast i64 %i.h to double
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i.i

_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.j = phi double [ %.pre.i.i.i.i, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.k = fcmp ult double %i.j, f0xC1E0000000000000
  %i.l = fcmp ugt double %i.j, f0x41DFFFFFFFC00000
  %spec.select.not.i.i.not9.i.i.i = or i1 %i.k, %i.l
  %i.m = fptosi double %i.j to i32                ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  %or.cond.i.i.i = select i1 %spec.select.not.i.i.not9.i.i.i, i1 true, i1 %i.n, !prof !150
  br i1 %or.cond.i.i.i, label %.sink.split.i.i.i, label %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit.i.i, !prof !150

.sink.split.i.i.i:                                ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i.i
  store i8 1, ptr %i.a, align 8, !tbaa !149
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit.i.i

_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit.i.i: ; preds = %.sink.split.i.i.i, %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i.i
  %.0.i.i.i = phi i32 [ %i.m, %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i.i ], [ 0, %.sink.split.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4521 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !108, !range !129, !noundef !130
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4522
  %i.s = load i8, ptr %i.r, align 2, !range !129
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond.i.i = select i1 %i.q, i1 true, i1 %i.t, !prof !64
  br i1 %or.cond.i.i, label %.critedge.i.i, label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE15process_vsindexERNS_20cff2_cs_interp_env_tIS3_EERS2_.exit, !prof !64

.critedge.i.i:                                    ; preds = %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !131
  %i.w = add i32 %i.v, 1
  br label %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE15process_vsindexERNS_20cff2_cs_interp_env_tIS3_EERS2_.exit

_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE15process_vsindexERNS_20cff2_cs_interp_env_tIS3_EERS2_.exit: ; preds = %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit.i.i, %.critedge.i.i
  %.sink4.i.i = phi i64 [ 12, %.critedge.i.i ], [ 4492, %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit.i.i ]
  %.0.i.sink.i.i = phi i32 [ %i.w, %.critedge.i.i ], [ %.0.i.i.i, %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.sink4.i.i
  store i32 %.0.i.sink.i.i, ptr %i.x, align 4, !tbaa !136
  store i8 1, ptr %i.o, align 1, !tbaa !108
  store i32 0, ptr %i.b, align 4, !tbaa !148
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN3CFF10cs_opset_tINS_8number_tE23cff2_cs_opset_extents_tNS_20cff2_cs_interp_env_tIS1_EE20cff2_extents_param_t25cff2_path_procs_extents_tE10process_opEjRS4_RS5_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN3CFF15cff2_cs_opset_tI23cff2_cs_opset_extents_t20cff2_extents_param_tNS_8number_tE25cff2_path_procs_extents_tE15process_vsindexERNS_20cff2_cs_interp_env_tIS3_EERS2_.exit, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF10cs_opset_tINS_8number_tE23cff2_cs_opset_extents_tNS_20cff2_cs_interp_env_tIS1_EE20cff2_extents_param_t25cff2_path_procs_extents_tE10process_opEjRS4_RS5_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  switch i32 %0, label %bb.bk [
    i32 11, label %bb.b
    i32 14, label %bb.g
    i32 255, label %bb.h
    i32 10, label %bb.n
    i32 29, label %bb.v
    i32 1, label %bb.ad
    i32 18, label %bb.ad
    i32 3, label %bb.ae
    i32 23, label %bb.ae
    i32 19, label %bb.af
    i32 20, label %bb.af
    i32 21, label %bb.ai
    i32 22, label %bb.am
    i32 4, label %bb.ar
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !131  ; 2 uses
  %i.e = icmp ugt i32 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.d, !prof !127

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i32 %i.d, 1
  store i32 %i.f, ptr %i.a, align 4, !tbaa !78
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4172 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !128  ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e, !prof !127

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4176
  %i.j = add i32 %i.h, -1                         ; 2 uses
  store i32 %i.j, ptr %i.g, align 4, !tbaa !128
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.k
  br label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE16return_from_subrEv.exit

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4168
  store i8 1, ptr %i.m, align 8, !tbaa !80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE16return_from_subrEv.exit

_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE16return_from_subrEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.l, %bb.e ], [ @_hb_CrapPool, %bb.f ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4464) %1, ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i, i64 16, i1 false)
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4152
  store i8 1, ptr %i.o, align 8, !tbaa !124
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.p, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !78   ; 4 uses
  %i.t = add i32 %i.s, 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !131  ; 3 uses
  %.not = icmp ugt i32 %i.t, %i.v
  br i1 %.not, label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit, label %bb.i, !prof !127

bb.i:                                             ; preds = %bb.h
  %.not.i.i128 = icmp ult i32 %i.s, %i.v
  br i1 %.not.i.i128, label %bb.k, label %bb.j, !prof !69

bb.j:                                             ; preds = %bb.i
  %i.w = add i32 %i.v, 1
  br label %_ZN3CFF14byte_str_ref_tixEi.exit.i

bb.k:                                             ; preds = %bb.i
  %i.x = load ptr, ptr %1, align 8, !tbaa !125
  %i.y = zext i32 %i.s to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  br label %_ZN3CFF14byte_str_ref_tixEi.exit.i

_ZN3CFF14byte_str_ref_tixEi.exit.i:               ; preds = %bb.k, %bb.j
  %i.aa = phi i32 [ %i.w, %bb.j ], [ %i.s, %bb.k ]
  %.0.i.i129 = phi ptr [ @_hb_NullPool, %bb.j ], [ %i.z, %bb.k ]
  %i.ab = load i32, ptr %.0.i.i129, align 1, !tbaa !101
  %i.ac = tail call noundef i32 @llvm.bswap.i32(i32 %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !148 ; 3 uses
  %i.af = icmp ult i32 %i.ae, 513
  br i1 %i.af, label %bb.l, label %bb.m, !prof !69

bb.l:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = add nuw nsw i32 %i.ae, 1
  store i32 %i.ah, ptr %i.ad, align 4, !tbaa !148
  %i.ai = zext nneg i32 %i.ae to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ai
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE10push_fixedEi.exit.i

bb.m:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit.i
  store i8 1, ptr %i.q, align 8, !tbaa !149
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE10push_fixedEi.exit.i

_ZN3CFF11arg_stack_tINS_8number_tEE10push_fixedEi.exit.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i = phi ptr [ %i.aj, %bb.l ], [ @_hb_CrapPool, %bb.m ]
  %i.ak = sitofp i32 %i.ac to double
  %i.al = fmul nnan double %i.ak, f0x3EF0000000000000
  store double %i.al, ptr %.0.i.i.i, align 8, !tbaa !123
  %i.am = add i32 %i.aa, 4
  store i32 %i.am, ptr %i.r, align 4, !tbaa !78
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.n:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 4432
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !148 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.o, !prof !127

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = add i32 %i.aq, -1                       ; 2 uses
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !148
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.at
  %.pre.i.i.i = load double, ptr %i.au, align 8, !tbaa !123
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  store i8 1, ptr %i.ao, align 8, !tbaa !149
  %i.av = load i64, ptr @_hb_NullPool, align 16   ; 2 uses
  store i64 %i.av, ptr @_hb_CrapPool, align 16
  %i.aw = bitcast i64 %i.av to double
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i

_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i: ; preds = %bb.p, %bb.o
  %i.ax = phi double [ %.pre.i.i.i, %bb.o ], [ %i.aw, %bb.p ] ; 3 uses
  %i.ay = fcmp oge double %i.ax, f0xC1E0000000000000
  %i.az = fcmp ole double %i.ax, f0x41DFFFFFFFC00000
  %spec.select.not.i.i.i.i = and i1 %i.ay, %i.az
  %i.ba = fptosi double %i.ax to i32
  br i1 %spec.select.not.i.i.i.i, label %_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i.i, label %bb.q, !prof !69

bb.q:                                             ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i
  store i8 1, ptr %i.ao, align 8, !tbaa !149
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i.i

_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i.i: ; preds = %bb.q, %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i
  %storemerge.i.i.i.i = phi i32 [ 0, %bb.q ], [ %i.ba, %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i ]
  %i.bb = load i32, ptr %i.an, align 8, !tbaa !102
  %i.bc = add i32 %i.bb, %storemerge.i.i.i.i      ; 5 uses
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %.critedge.i, label %bb.r, !prof !127

bb.r:                                             ; preds = %_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4440 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i, label %.critedge.i, label %bb.s, !prof !151

bb.s:                                             ; preds = %bb.r
  %i.bg = load i32, ptr %i.bf, align 1, !tbaa !101
  %i.bh = tail call noundef i32 @llvm.bswap.i32(i32 %i.bg)
  %.not.i.i130 = icmp ult i32 %i.bc, %i.bh
  br i1 %.not.i.i130, label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE12pop_subr_numERKNS_14biased_subrs_tIS6_EERj.exit.i, label %.critedge.i, !prof !152

_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE12pop_subr_numERKNS_14biased_subrs_tIS6_EERj.exit.i: ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 4172 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !128 ; 3 uses
  %i.bk = icmp ugt i32 %i.bj, 9
  br i1 %i.bk, label %.critedge.i, label %_ZN3CFF11cff_stack_tINS_14call_context_tELi10EE4pushERKS1_.exit.i, !prof !127

.critedge.i:                                      ; preds = %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE12pop_subr_numERKNS_14biased_subrs_tIS6_EERj.exit.i, %bb.s, %bb.r, %_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !131
  %i.bn = add i32 %i.bm, 1
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !78
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

_ZN3CFF11cff_stack_tINS_14call_context_tELi10EE4pushERKS1_.exit.i: ; preds = %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE12pop_subr_numERKNS_14biased_subrs_tIS6_EERj.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 4128 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(4464) %1, i64 16, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 4176
  %i.br = add nuw nsw i32 %i.bj, 1
  store i32 %i.br, ptr %i.bi, align 4, !tbaa !128
  %i.bs = zext nneg i32 %i.bj to i64
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %i.bs
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 24, i1 false)
  %i.bu = load ptr, ptr %i.be, align 8, !tbaa !99 ; 3 uses
  %.not.i3.i = icmp eq ptr %i.bu, null
  br i1 %.not.i3.i, label %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEEixEj.exit.i, label %bb.t, !prof !127

bb.t:                                             ; preds = %_ZN3CFF11cff_stack_tINS_14call_context_tELi10EE4pushERKS1_.exit.i
  %i.bv = load i32, ptr %i.bu, align 1, !tbaa !101
  %i.bw = tail call noundef i32 @llvm.bswap.i32(i32 %i.bv)
  %.not2.i.i = icmp ult i32 %i.bc, %i.bw
  br i1 %.not2.i.i, label %bb.u, label %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEEixEj.exit.i, !prof !69

bb.u:                                             ; preds = %bb.t
  %i.bx = tail call { ptr, i64 } @_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEEixEj(ptr noundef nonnull align 1 dereferenceable(6) %i.bu, i32 noundef %i.bc) ; 2 uses
  %i.by = extractvalue { ptr, i64 } %i.bx, 0
  %i.bz = extractvalue { ptr, i64 } %i.bx, 1
  %i.ca = and i64 %i.bz, 4294967295
  br label %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEEixEj.exit.i

_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEEixEj.exit.i: ; preds = %bb.u, %bb.t, %_ZN3CFF11cff_stack_tINS_14call_context_tELi10EE4pushERKS1_.exit.i
  %.sroa.0.0.i.i = phi ptr [ %i.by, %bb.u ], [ null, %_ZN3CFF11cff_stack_tINS_14call_context_tELi10EE4pushERKS1_.exit.i ], [ null, %bb.t ]
  %.sroa.4.0.i.i = phi i64 [ %i.ca, %bb.u ], [ 0, %_ZN3CFF11cff_stack_tINS_14call_context_tELi10EE4pushERKS1_.exit.i ], [ 0, %bb.t ]
  store ptr %.sroa.0.0.i.i, ptr %i.bp, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4136
  store i64 %.sroa.4.0.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 4144
  store i32 2, ptr %i.cb, align 8, !tbaa !83
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 4148
  store i32 %i.bc, ptr %i.cc, align 4, !tbaa !84
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4464) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i64 16, i1 false)
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.v:                                             ; preds = %bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 4416
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !148 ; 2 uses
  %.not.i.i.i.i131 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i.i.i131, label %bb.x, label %bb.w, !prof !127

bb.w:                                             ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ci = add i32 %i.cg, -1                       ; 2 uses
  store i32 %i.ci, ptr %i.cf, align 4, !tbaa !148
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cj
  %.pre.i.i.i132 = load double, ptr %i.ck, align 8, !tbaa !123
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i133

bb.x:                                             ; preds = %bb.v
  store i8 1, ptr %i.ce, align 8, !tbaa !149
  %i.cl = load i64, ptr @_hb_NullPool, align 16   ; 2 uses
  store i64 %i.cl, ptr @_hb_CrapPool, align 16
  %i.cm = bitcast i64 %i.cl to double
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i133

_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i133: ; preds = %bb.x, %bb.w
  %i.cn = phi double [ %.pre.i.i.i132, %bb.w ], [ %i.cm, %bb.x ] ; 3 uses
  %i.co = fcmp oge double %i.cn, f0xC1E0000000000000
  %i.cp = fcmp ole double %i.cn, f0x41DFFFFFFFC00000
  %spec.select.not.i.i.i.i134 = and i1 %i.co, %i.cp
  %i.cq = fptosi double %i.cn to i32
  br i1 %spec.select.not.i.i.i.i134, label %_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i.i135, label %bb.y, !prof !69

bb.y:                                             ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i133
  store i8 1, ptr %i.ce, align 8, !tbaa !149
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i.i135

_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i.i135: ; preds = %bb.y, %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i133
  %storemerge.i.i.i.i136 = phi i32 [ 0, %bb.y ], [ %i.cq, %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i133 ]
  %i.cr = load i32, ptr %i.cd, align 8, !tbaa !102
  %i.cs = add i32 %i.cr, %storemerge.i.i.i.i136   ; 5 uses
  %i.ct = icmp slt i32 %i.cs, 0
  br i1 %i.ct, label %.critedge.i139, label %bb.z, !prof !127

bb.z:                                             ; preds = %_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i.i135
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 4424 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i137 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i137, label %.critedge.i139, label %bb.aa, !prof !151

bb.aa:                                            ; preds = %bb.z
  %i.cw = load i32, ptr %i.cv, align 1, !tbaa !101
  %i.cx = tail call noundef i32 @llvm.bswap.i32(i32 %i.cw)
  %.not.i.i138 = icmp ult i32 %i.cs, %i.cx
  br i1 %.not.i.i138, label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE12pop_subr_numERKNS_14biased_subrs_tIS6_EERj.exit.i140, label %.critedge.i139, !prof !152

_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE12pop_subr_numERKNS_14biased_subrs_tIS6_EERj.exit.i140: ; preds = %bb.aa
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 4172 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !128 ; 3 uses
  %i.da = icmp ugt i32 %i.cz, 9
  br i1 %i.da, label %.critedge.i139, label %_ZN3CFF11cff_stack_tINS_14call_context_tELi10EE4pushERKS1_.exit.i141, !prof !127

.critedge.i139:                                   ; preds = %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE12pop_subr_numERKNS_14biased_subrs_tIS6_EERj.exit.i140, %bb.aa, %bb.z, %_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i.i135
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !131
  %i.dd = add i32 %i.dc, 1
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !78
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

_ZN3CFF11cff_stack_tINS_14call_context_tELi10EE4pushERKS1_.exit.i141: ; preds = %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE12pop_subr_numERKNS_14biased_subrs_tIS6_EERj.exit.i140
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 4128 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull align 8 dereferenceable(4464) %1, i64 16, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 4176
  %i.dh = add nuw nsw i32 %i.cz, 1
  store i32 %i.dh, ptr %i.cy, align 4, !tbaa !128
  %i.di = zext nneg i32 %i.cz to i64
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.dg, i64 %i.di
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 24, i1 false)
  %i.dk = load ptr, ptr %i.cu, align 8, !tbaa !99 ; 3 uses
  %.not.i3.i142 = icmp eq ptr %i.dk, null
  br i1 %.not.i3.i142, label %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEEixEj.exit.i144, label %bb.ab, !prof !127
end_hunk_0
begin_hunk_1_@_ZN3CFF12path_procs_tI25cff2_path_procs_extents_tNS_20cff2_cs_interp_env_tINS_8number_tEEE20cff2_extents_param_tE6hflex1ERS4_RS5_:bb.a
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !148
  %i.c = icmp eq i32 %i.b, 11
  br i1 %i.c, label %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit50, label %bb.c, !prof !69

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit50: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load double, ptr %i.e, align 8, !tbaa !123
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !159
  %i.k = load <2 x double>, ptr %i.d, align 8, !tbaa !123 ; 2 uses
  %i.l = load <2 x double>, ptr %2, align 16, !tbaa !123
  %i.m = fadd <2 x double> %i.l, %i.k
  store <2 x double> %i.m, ptr %2, align 16, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !159
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load <2 x double>, ptr %i.n, align 8, !tbaa !123
  %i.p = load <2 x double>, ptr %3, align 16, !tbaa !123
  %i.q = fadd <2 x double> %i.p, %i.o
  store <2 x double> %i.q, ptr %3, align 16, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !159
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load <2 x double>, ptr %i.r, align 8, !tbaa !123
  %i.t = load <2 x double>, ptr %4, align 16, !tbaa !123
  %i.u = fadd <2 x double> %i.t, %i.s
  store <2 x double> %i.u, ptr %4, align 16, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !159
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load <2 x double>, ptr %i.v, align 8, !tbaa !123
  %i.x = load <2 x double>, ptr %5, align 16, !tbaa !123
  %i.y = fadd <2 x double> %i.x, %i.w
  store <2 x double> %i.y, ptr %5, align 16, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !159
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aa = load <2 x double>, ptr %i.z, align 8, !tbaa !123
  %i.ab = load <2 x double>, ptr %6, align 16, !tbaa !123
  %i.ac = fadd <2 x double> %i.ab, %i.aa
  store <2 x double> %i.ac, ptr %6, align 16, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !159
  %i.ad = load <2 x double>, ptr %i.f, align 8, !tbaa !123
  %i.ae = load <2 x double>, ptr %i.g, align 8, !tbaa !123
  %i.af = load <2 x double>, ptr %i.h, align 8, !tbaa !123
  %i.ag = load <2 x double>, ptr %i.i, align 8, !tbaa !123
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
  %.pre80 = load double, ptr %i.ar, align 8, !tbaa !123
  %i.as = load double, ptr %7, align 8, !tbaa !123
  %i.at = fadd double %i.as, %.pre80
  store double %i.at, ptr %7, align 8, !tbaa !123
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4456
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !153
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !153
  br label %bb.b

_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit62: ; preds = %_ZN3CFF20cff2_cs_interp_env_tINS_8number_tEE8eval_argEj.exit50
  %i.ax = load i64, ptr %i.j, align 8, !tbaa !153
  store i64 %i.ax, ptr %7, align 8, !tbaa !153
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre79 = load double, ptr %i.ay, align 8, !tbaa !123
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !123
  %i.bb = fadd double %i.ba, %.pre79
  store double %i.bb, ptr %i.az, align 8, !tbaa !123
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
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !131
  %i.be = add i32 %i.bd, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !78
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
  %i.c = load i32, ptr %i.b, align 4, !tbaa !78   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !131  ; 4 uses
  %.not.i = icmp ult i32 %i.c, %i.e
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !69

bb.c:                                             ; preds = %bb.b
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %i.b, align 4, !tbaa !78
  br label %_ZN3CFF14byte_str_ref_tixEi.exit

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !125
  %i.h = zext i32 %i.c to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  br label %_ZN3CFF14byte_str_ref_tixEi.exit

_ZN3CFF14byte_str_ref_tixEi.exit:                 ; preds = %bb.c, %bb.d
  %i.j = phi i32 [ %i.f, %bb.c ], [ %i.c, %bb.d ] ; 2 uses
  %.0.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.i, %bb.d ]
  %i.k = load i8, ptr %.0.i, align 1, !tbaa !126
  %i.l = zext i8 %i.k to i16
  %i.m = shl nuw i16 %i.l, 8
  %i.n = add i32 %i.j, 1                          ; 2 uses
  %.not.i18 = icmp ult i32 %i.n, %i.e
  br i1 %.not.i18, label %bb.f, label %bb.e, !prof !69

bb.e:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit
  %i.o = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.o, ptr %i.b, align 4, !tbaa !78
  br label %_ZN3CFF14byte_str_ref_tixEi.exit20

bb.f:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit
  %i.p = load ptr, ptr %1, align 8, !tbaa !125
  %i.q = zext i32 %i.n to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  br label %_ZN3CFF14byte_str_ref_tixEi.exit20

_ZN3CFF14byte_str_ref_tixEi.exit20:               ; preds = %bb.e, %bb.f
  %i.s = phi i32 [ %i.o, %bb.e ], [ %i.j, %bb.f ]
  %.0.i19 = phi ptr [ @_hb_NullPool, %bb.e ], [ %i.r, %bb.f ]
  %i.t = load i8, ptr %.0.i19, align 1, !tbaa !126
  %i.u = zext i8 %i.t to i16
  %i.v = or disjoint i16 %i.m, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !148  ; 3 uses
  %i.y = icmp ult i32 %i.x, 513
  br i1 %i.y, label %bb.g, label %bb.h, !prof !69

bb.g:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit20
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = add nuw nsw i32 %i.x, 1
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !148
  %i.ab = zext nneg i32 %i.x to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit

bb.h:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit20
  store i8 1, ptr %i.a, align 8, !tbaa !149
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit

_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit: ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.ac, %bb.g ], [ @_hb_CrapPool, %bb.h ]
  %i.ad = sitofp i16 %i.v to double
  store double %i.ad, ptr %.0.i.i, align 8, !tbaa !123
  %i.ae = add i32 %i.s, 2
  store i32 %i.ae, ptr %i.b, align 4, !tbaa !78
  br label %bb.x

bb.i:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = shl nuw nsw i32 %0, 8
  %i.ah = add nuw nsw i32 %i.ag, 2304
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !78 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !131 ; 2 uses
  %.not.i21 = icmp ult i32 %i.aj, %i.al
  br i1 %.not.i21, label %bb.k, label %bb.j, !prof !69

bb.j:                                             ; preds = %bb.i
  %i.am = add i32 %i.al, 1                        ; 2 uses
  store i32 %i.am, ptr %i.ai, align 4, !tbaa !78
  br label %_ZN3CFF14byte_str_ref_tixEi.exit23

bb.k:                                             ; preds = %bb.i
  %i.an = load ptr, ptr %1, align 8, !tbaa !125
  %i.ao = zext i32 %i.aj to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  br label %_ZN3CFF14byte_str_ref_tixEi.exit23

_ZN3CFF14byte_str_ref_tixEi.exit23:               ; preds = %bb.j, %bb.k
  %i.aq = phi i32 [ %i.am, %bb.j ], [ %i.aj, %bb.k ]
  %.0.i22 = phi ptr [ @_hb_NullPool, %bb.j ], [ %i.ap, %bb.k ]
  %i.ar = load i8, ptr %.0.i22, align 1, !tbaa !126
  %i.as = zext i8 %i.ar to i32
  %.masked = and i32 %i.ah, 65280
  %i.at = or disjoint i32 %.masked, 108
  %sext17 = add nuw nsw i32 %i.at, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !148 ; 3 uses
  %i.aw = icmp ult i32 %i.av, 513
  br i1 %i.aw, label %bb.l, label %bb.m, !prof !69

bb.l:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit23
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = add nuw nsw i32 %i.av, 1
  store i32 %i.ay, ptr %i.au, align 4, !tbaa !148
  %i.az = zext nneg i32 %i.av to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.az
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit25

bb.m:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit23
  store i8 1, ptr %i.af, align 8, !tbaa !149
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit25

_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit25: ; preds = %bb.l, %bb.m
  %.0.i.i24 = phi ptr [ %i.ba, %bb.l ], [ @_hb_CrapPool, %bb.m ]
  %i.bb = uitofp nneg i32 %sext17 to double
  store double %i.bb, ptr %.0.i.i24, align 8, !tbaa !123
  %i.bc = add i32 %i.aq, 1
  store i32 %i.bc, ptr %i.ai, align 4, !tbaa !78
  br label %bb.x

bb.n:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = shl nuw nsw i32 %0, 16
  %sext = add nsw i32 %i.be, -16449536
  %i.bf = lshr exact i32 %sext, 8
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !78 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !131 ; 2 uses
  %.not.i26 = icmp ult i32 %i.bh, %i.bj
  br i1 %.not.i26, label %bb.p, label %bb.o, !prof !69

bb.o:                                             ; preds = %bb.n
  %i.bk = add i32 %i.bj, 1                        ; 2 uses
  store i32 %i.bk, ptr %i.bg, align 4, !tbaa !78
  br label %_ZN3CFF14byte_str_ref_tixEi.exit28

bb.p:                                             ; preds = %bb.n
  %i.bl = load ptr, ptr %1, align 8, !tbaa !125
  %i.bm = zext i32 %i.bh to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bm
  br label %_ZN3CFF14byte_str_ref_tixEi.exit28

_ZN3CFF14byte_str_ref_tixEi.exit28:               ; preds = %bb.o, %bb.p
  %i.bo = phi i32 [ %i.bk, %bb.o ], [ %i.bh, %bb.p ]
  %.0.i27 = phi ptr [ @_hb_NullPool, %bb.o ], [ %i.bn, %bb.p ]
  %i.bp = load i8, ptr %.0.i27, align 1, !tbaa !126
  %i.bq = zext i8 %i.bp to i32
  %i.br = or disjoint i32 %i.bf, %i.bq
  %i.bs = sub nuw nsw i32 -108, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !148 ; 3 uses
  %i.bv = icmp ult i32 %i.bu, 513
  br i1 %i.bv, label %bb.q, label %bb.r, !prof !69

bb.q:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit28
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bx = add nuw nsw i32 %i.bu, 1
  store i32 %i.bx, ptr %i.bt, align 4, !tbaa !148
  %i.by = zext nneg i32 %i.bu to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.by
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit30

bb.r:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit28
  store i8 1, ptr %i.bd, align 8, !tbaa !149
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit30

_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit30: ; preds = %bb.q, %bb.r
  %.0.i.i29 = phi ptr [ %i.bz, %bb.q ], [ @_hb_CrapPool, %bb.r ]
  %i.ca = sitofp i32 %i.bs to double
  store double %i.ca, ptr %.0.i.i29, align 8, !tbaa !123
  %i.cb = add i32 %i.bo, 1
  store i32 %i.cb, ptr %i.bg, align 4, !tbaa !78
  br label %bb.x

bb.s:                                             ; preds = %bb.a
  %i.cc = add i32 %0, -32
  %i.cd = icmp ult i32 %i.cc, 215
  br i1 %i.cd, label %bb.t, label %bb.w, !prof !69

bb.t:                                             ; preds = %bb.s
  %i.ce = add nsw i32 %0, -139
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !148 ; 3 uses
  %i.ch = icmp ult i32 %i.cg, 513
  br i1 %i.ch, label %bb.u, label %bb.v, !prof !69

bb.u:                                             ; preds = %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cj = add nuw nsw i32 %i.cg, 1
  store i32 %i.cj, ptr %i.cf, align 4, !tbaa !148
  %i.ck = zext nneg i32 %i.cg to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ck
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit32

bb.v:                                             ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 1, ptr %i.cm, align 8, !tbaa !149
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit32

_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit32: ; preds = %bb.u, %bb.v
  %.0.i.i31 = phi ptr [ %i.cl, %bb.u ], [ @_hb_CrapPool, %bb.v ]
  %i.cn = sitofp i32 %i.ce to double
  store double %i.cn, ptr %.0.i.i31, align 8, !tbaa !123
  br label %bb.x

bb.w:                                             ; preds = %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.co, align 4, !tbaa !148
  br label %bb.x

bb.x:                                             ; preds = %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit32, %bb.w, %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit30, %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit25, %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN25cff2_path_procs_extents_t5curveERN3CFF20cff2_cs_interp_env_tINS0_8number_tEEER20cff2_extents_param_tRKNS0_7point_tES9_S9_(ptr noundef nonnull align 8 dereferenceable(4523) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !122, !range !129, !noundef !130
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %._ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit_crit_edge, label %bb.b

._ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !123
  br label %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %1, align 8, !tbaa !122
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !123 ; 2 uses
  %i.f = load double, ptr %i.c, align 8           ; 4 uses
  %i.g = fcmp ogt double %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store double %i.f, ptr %i.d, align 8, !tbaa !153
  %.pre.i = load double, ptr %i.c, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi double [ %i.f, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %i.i = phi double [ %.pre.i, %bb.c ], [ %i.f, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !123
  %i.l = fcmp ogt double %i.i, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store double %i.i, ptr %i.j, align 8, !tbaa !153
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !123
  %i.p = load double, ptr %i.m, align 8           ; 3 uses
  %i.q = fcmp ogt double %i.o, %i.p
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store double %i.p, ptr %i.n, align 8, !tbaa !153
  %.pre9.i = load double, ptr %i.m, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = phi double [ %.pre9.i, %bb.g ], [ %i.p, %bb.f ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !123
  %i.u = fcmp ogt double %i.r, %i.t
  br i1 %i.u, label %bb.i, label %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit

bb.i:                                             ; preds = %bb.h
  store double %i.r, ptr %i.s, align 8, !tbaa !153
  br label %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit

_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit: ; preds = %._ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit_crit_edge, %bb.i, %bb.h
  %i.v = phi double [ %.pre, %._ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit_crit_edge ], [ %i.h, %bb.i ], [ %i.h, %bb.h ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.x = load double, ptr %2, align 8             ; 4 uses
  %i.y = fcmp ogt double %i.v, %i.x
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit
  store double %i.x, ptr %i.w, align 8, !tbaa !153
  %.pre.i13 = load double, ptr %2, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit
  %i.z = phi double [ %i.x, %bb.j ], [ %i.v, %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit ]
  %i.aa = phi double [ %.pre.i13, %bb.j ], [ %i.x, %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !123 ; 2 uses
  %i.ad = fcmp ogt double %i.aa, %i.ac
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store double %i.aa, ptr %i.ab, align 8, !tbaa !153
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ae = phi double [ %i.aa, %bb.l ], [ %i.ac, %bb.k ]
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !123 ; 2 uses
  %i.ai = load double, ptr %i.af, align 8         ; 4 uses
  %i.aj = fcmp ogt double %i.ah, %i.ai
  br i1 %i.aj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store double %i.ai, ptr %i.ag, align 8, !tbaa !153
  %.pre9.i12 = load double, ptr %i.af, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ak = phi double [ %i.ai, %bb.n ], [ %i.ah, %bb.m ]
  %i.al = phi double [ %.pre9.i12, %bb.n ], [ %i.ai, %bb.m ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.an = load double, ptr %i.am, align 8, !tbaa !123 ; 2 uses
  %i.ao = fcmp ogt double %i.al, %i.an
  br i1 %i.ao, label %bb.p, label %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit14

bb.p:                                             ; preds = %bb.o
  store double %i.al, ptr %i.am, align 8, !tbaa !153
  br label %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit14

_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit14: ; preds = %bb.o, %bb.p
  %i.ap = phi double [ %i.an, %bb.o ], [ %i.al, %bb.p ]
  %i.aq = load double, ptr %3, align 8            ; 3 uses
  %i.ar = fcmp ogt double %i.z, %i.aq
  br i1 %i.ar, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit14
  store double %i.aq, ptr %i.w, align 8, !tbaa !153
  %.pre.i16 = load double, ptr %3, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit14
  %i.as = phi double [ %.pre.i16, %bb.q ], [ %i.aq, %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit14 ] ; 2 uses
  %i.at = fcmp ogt double %i.as, %i.ae
  br i1 %i.at, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store double %i.as, ptr %i.ab, align 8, !tbaa !153
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.av = load double, ptr %i.au, align 8         ; 3 uses
  %i.aw = fcmp ogt double %i.ak, %i.av
  br i1 %i.aw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store double %i.av, ptr %i.ag, align 8, !tbaa !153
  %.pre9.i15 = load double, ptr %i.au, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ax = phi double [ %.pre9.i15, %bb.u ], [ %i.av, %bb.t ] ; 2 uses
  %i.ay = fcmp ogt double %i.ax, %i.ap
  br i1 %i.ay, label %bb.w, label %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit17

bb.w:                                             ; preds = %bb.v
  store double %i.ax, ptr %i.am, align 8, !tbaa !153
  br label %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit17

_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit17: ; preds = %bb.v, %bb.w
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !159
  %i.ba = load double, ptr %i.w, align 8, !tbaa !123
  %i.bb = load double, ptr %i.az, align 8         ; 3 uses
  %i.bc = fcmp ogt double %i.ba, %i.bb
  br i1 %i.bc, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit17
  store double %i.bb, ptr %i.w, align 8, !tbaa !153
  %.pre.i19 = load double, ptr %i.az, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit17
  %i.bd = phi double [ %.pre.i19, %bb.x ], [ %i.bb, %_ZN20cff2_extents_param_t13update_boundsERKN3CFF7point_tE.exit17 ] ; 2 uses
  %i.be = load double, ptr %i.ab, align 8, !tbaa !123
  %i.bf = fcmp ogt double %i.bd, %i.be
  br i1 %i.bf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store double %i.bd, ptr %i.ab, align 8, !tbaa !153
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 2 uses
  %i.bh = load double, ptr %i.ag, align 8, !tbaa !123
  %i.bi = load double, ptr %i.bg, align 8         ; 3 uses
  %i.bj = fcmp ogt double %i.bh, %i.bi
  br i1 %i.bj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
end_hunk_1
begin_hunk_2_@_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE10process_opEjRNS_20cff2_cs_interp_env_tIS3_EERS2_:bb.a

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE13process_blendERNS_20cff2_cs_interp_env_tIS3_EERS2_(ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !148  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e, !prof !127

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = add i32 %i.c, -1
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %.pre.i.i.i.i = load double, ptr %i.g, align 8, !tbaa !123
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  store i8 1, ptr %i.a, align 8, !tbaa !149
  %i.h = load i64, ptr @_hb_NullPool, align 16    ; 2 uses
  store i64 %i.h, ptr @_hb_CrapPool, align 16
  %i.i = bitcast i64 %i.h to double
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i.i

_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.j = phi double [ %.pre.i.i.i.i, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.k = fcmp ult double %i.j, f0xC1E0000000000000
  %i.l = fcmp ugt double %i.j, f0x41DFFFFFFFC00000
  %spec.select.not.i.i.not9.i.i.i = or i1 %i.k, %i.l
  %i.m = fptosi double %i.j to i32                ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  %or.cond.i.i.i = select i1 %spec.select.not.i.i.not9.i.i.i, i1 true, i1 %i.n, !prof !150
  br i1 %or.cond.i.i.i, label %.sink.split.i.i.i, label %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit.i.i, !prof !150

.sink.split.i.i.i:                                ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i.i
  store i8 1, ptr %i.a, align 8, !tbaa !149
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit.i.i

_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit.i.i: ; preds = %.sink.split.i.i.i, %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i.i
  %.0.i.i.i = phi i32 [ %i.m, %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i.i ], [ 0, %.sink.split.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4521 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !108, !range !129, !noundef !130
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4522
  %i.s = load i8, ptr %i.r, align 2, !range !129
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond.i.i = select i1 %i.q, i1 true, i1 %i.t, !prof !64
  br i1 %or.cond.i.i, label %.critedge.i.i, label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE15process_vsindexERNS_20cff2_cs_interp_env_tIS3_EERS2_.exit, !prof !64

.critedge.i.i:                                    ; preds = %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !131
  %i.w = add i32 %i.v, 1
  br label %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE15process_vsindexERNS_20cff2_cs_interp_env_tIS3_EERS2_.exit

_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE15process_vsindexERNS_20cff2_cs_interp_env_tIS3_EERS2_.exit: ; preds = %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit.i.i, %.critedge.i.i
  %.sink4.i.i = phi i64 [ 12, %.critedge.i.i ], [ 4492, %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit.i.i ]
  %.0.i.sink.i.i = phi i32 [ %i.w, %.critedge.i.i ], [ %.0.i.i.i, %_ZN3CFF11arg_stack_tINS_8number_tEE8pop_uintEv.exit.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.sink4.i.i
  store i32 %.0.i.sink.i.i, ptr %i.x, align 4, !tbaa !136
  store i8 1, ptr %i.o, align 1, !tbaa !108
  store i32 0, ptr %i.b, align 4, !tbaa !148
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN3CFF10cs_opset_tINS_8number_tE20cff2_cs_opset_path_tNS_20cff2_cs_interp_env_tIS1_EE17cff2_path_param_t22cff2_path_procs_path_tE10process_opEjRS4_RS5_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN3CFF15cff2_cs_opset_tI20cff2_cs_opset_path_t17cff2_path_param_tNS_8number_tE22cff2_path_procs_path_tE15process_vsindexERNS_20cff2_cs_interp_env_tIS3_EERS2_.exit, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF10cs_opset_tINS_8number_tE20cff2_cs_opset_path_tNS_20cff2_cs_interp_env_tIS1_EE17cff2_path_param_t22cff2_path_procs_path_tE10process_opEjRS4_RS5_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(4523) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  switch i32 %0, label %bb.bf [
    i32 11, label %bb.b
    i32 14, label %bb.g
    i32 255, label %bb.h
    i32 10, label %bb.n
    i32 29, label %bb.v
    i32 1, label %bb.ad
    i32 18, label %bb.ad
    i32 3, label %bb.ae
    i32 23, label %bb.ae
    i32 19, label %bb.af
    i32 20, label %bb.af
    i32 21, label %bb.ai
    i32 22, label %bb.al
    i32 4, label %bb.ao
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !131  ; 2 uses
  %i.e = icmp ugt i32 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.d, !prof !127

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i32 %i.d, 1
  store i32 %i.f, ptr %i.a, align 4, !tbaa !78
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4172 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !128  ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e, !prof !127

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4176
  %i.j = add i32 %i.h, -1                         ; 2 uses
  store i32 %i.j, ptr %i.g, align 4, !tbaa !128
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.k
  br label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE16return_from_subrEv.exit

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4168
  store i8 1, ptr %i.m, align 8, !tbaa !80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE16return_from_subrEv.exit

_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE16return_from_subrEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.l, %bb.e ], [ @_hb_CrapPool, %bb.f ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4464) %1, ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i, i64 16, i1 false)
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4152
  store i8 1, ptr %i.o, align 8, !tbaa !124
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.p, align 4, !tbaa !148
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !78   ; 4 uses
  %i.t = add i32 %i.s, 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !131  ; 3 uses
  %.not = icmp ugt i32 %i.t, %i.v
  br i1 %.not, label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit, label %bb.i, !prof !127

bb.i:                                             ; preds = %bb.h
  %.not.i.i128 = icmp ult i32 %i.s, %i.v
  br i1 %.not.i.i128, label %bb.k, label %bb.j, !prof !69

bb.j:                                             ; preds = %bb.i
  %i.w = add i32 %i.v, 1
  br label %_ZN3CFF14byte_str_ref_tixEi.exit.i

bb.k:                                             ; preds = %bb.i
  %i.x = load ptr, ptr %1, align 8, !tbaa !125
  %i.y = zext i32 %i.s to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  br label %_ZN3CFF14byte_str_ref_tixEi.exit.i

_ZN3CFF14byte_str_ref_tixEi.exit.i:               ; preds = %bb.k, %bb.j
  %i.aa = phi i32 [ %i.w, %bb.j ], [ %i.s, %bb.k ]
  %.0.i.i129 = phi ptr [ @_hb_NullPool, %bb.j ], [ %i.z, %bb.k ]
  %i.ab = load i32, ptr %.0.i.i129, align 1, !tbaa !101
  %i.ac = tail call noundef i32 @llvm.bswap.i32(i32 %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !148 ; 3 uses
  %i.af = icmp ult i32 %i.ae, 513
  br i1 %i.af, label %bb.l, label %bb.m, !prof !69

bb.l:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = add nuw nsw i32 %i.ae, 1
  store i32 %i.ah, ptr %i.ad, align 4, !tbaa !148
  %i.ai = zext nneg i32 %i.ae to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ai
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE10push_fixedEi.exit.i

bb.m:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit.i
  store i8 1, ptr %i.q, align 8, !tbaa !149
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE10push_fixedEi.exit.i

_ZN3CFF11arg_stack_tINS_8number_tEE10push_fixedEi.exit.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i = phi ptr [ %i.aj, %bb.l ], [ @_hb_CrapPool, %bb.m ]
  %i.ak = sitofp i32 %i.ac to double
  %i.al = fmul nnan double %i.ak, f0x3EF0000000000000
  store double %i.al, ptr %.0.i.i.i, align 8, !tbaa !123
  %i.am = add i32 %i.aa, 4
  store i32 %i.am, ptr %i.r, align 4, !tbaa !78
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.n:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 4432
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !148 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.o, !prof !127

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = add i32 %i.aq, -1                       ; 2 uses
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !148
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.at
  %.pre.i.i.i = load double, ptr %i.au, align 8, !tbaa !123
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  store i8 1, ptr %i.ao, align 8, !tbaa !149
  %i.av = load i64, ptr @_hb_NullPool, align 16   ; 2 uses
  store i64 %i.av, ptr @_hb_CrapPool, align 16
  %i.aw = bitcast i64 %i.av to double
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i

_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i: ; preds = %bb.p, %bb.o
  %i.ax = phi double [ %.pre.i.i.i, %bb.o ], [ %i.aw, %bb.p ] ; 3 uses
  %i.ay = fcmp oge double %i.ax, f0xC1E0000000000000
  %i.az = fcmp ole double %i.ax, f0x41DFFFFFFFC00000
  %spec.select.not.i.i.i.i = and i1 %i.ay, %i.az
  %i.ba = fptosi double %i.ax to i32
  br i1 %spec.select.not.i.i.i.i, label %_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i.i, label %bb.q, !prof !69

bb.q:                                             ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i
  store i8 1, ptr %i.ao, align 8, !tbaa !149
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i.i

_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i.i: ; preds = %bb.q, %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i
  %storemerge.i.i.i.i = phi i32 [ 0, %bb.q ], [ %i.ba, %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i ]
  %i.bb = load i32, ptr %i.an, align 8, !tbaa !102
  %i.bc = add i32 %i.bb, %storemerge.i.i.i.i      ; 5 uses
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %.critedge.i, label %bb.r, !prof !127

bb.r:                                             ; preds = %_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4440 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i, label %.critedge.i, label %bb.s, !prof !151

bb.s:                                             ; preds = %bb.r
  %i.bg = load i32, ptr %i.bf, align 1, !tbaa !101
  %i.bh = tail call noundef i32 @llvm.bswap.i32(i32 %i.bg)
  %.not.i.i130 = icmp ult i32 %i.bc, %i.bh
  br i1 %.not.i.i130, label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE12pop_subr_numERKNS_14biased_subrs_tIS6_EERj.exit.i, label %.critedge.i, !prof !152

_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE12pop_subr_numERKNS_14biased_subrs_tIS6_EERj.exit.i: ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 4172 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !128 ; 3 uses
  %i.bk = icmp ugt i32 %i.bj, 9
  br i1 %i.bk, label %.critedge.i, label %_ZN3CFF11cff_stack_tINS_14call_context_tELi10EE4pushERKS1_.exit.i, !prof !127

.critedge.i:                                      ; preds = %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE12pop_subr_numERKNS_14biased_subrs_tIS6_EERj.exit.i, %bb.s, %bb.r, %_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !131
  %i.bn = add i32 %i.bm, 1
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !78
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

_ZN3CFF11cff_stack_tINS_14call_context_tELi10EE4pushERKS1_.exit.i: ; preds = %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE12pop_subr_numERKNS_14biased_subrs_tIS6_EERj.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 4128 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(4464) %1, i64 16, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 4176
  %i.br = add nuw nsw i32 %i.bj, 1
  store i32 %i.br, ptr %i.bi, align 4, !tbaa !128
  %i.bs = zext nneg i32 %i.bj to i64
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %i.bs
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 24, i1 false)
  %i.bu = load ptr, ptr %i.be, align 8, !tbaa !99 ; 3 uses
  %.not.i3.i = icmp eq ptr %i.bu, null
  br i1 %.not.i3.i, label %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEEixEj.exit.i, label %bb.t, !prof !127

bb.t:                                             ; preds = %_ZN3CFF11cff_stack_tINS_14call_context_tELi10EE4pushERKS1_.exit.i
  %i.bv = load i32, ptr %i.bu, align 1, !tbaa !101
  %i.bw = tail call noundef i32 @llvm.bswap.i32(i32 %i.bv)
  %.not2.i.i = icmp ult i32 %i.bc, %i.bw
  br i1 %.not2.i.i, label %bb.u, label %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEEixEj.exit.i, !prof !69

bb.u:                                             ; preds = %bb.t
  %i.bx = tail call { ptr, i64 } @_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEEixEj(ptr noundef nonnull align 1 dereferenceable(6) %i.bu, i32 noundef %i.bc) ; 2 uses
  %i.by = extractvalue { ptr, i64 } %i.bx, 0
  %i.bz = extractvalue { ptr, i64 } %i.bx, 1
  %i.ca = and i64 %i.bz, 4294967295
  br label %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEEixEj.exit.i

_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEEixEj.exit.i: ; preds = %bb.u, %bb.t, %_ZN3CFF11cff_stack_tINS_14call_context_tELi10EE4pushERKS1_.exit.i
  %.sroa.0.0.i.i = phi ptr [ %i.by, %bb.u ], [ null, %_ZN3CFF11cff_stack_tINS_14call_context_tELi10EE4pushERKS1_.exit.i ], [ null, %bb.t ]
  %.sroa.4.0.i.i = phi i64 [ %i.ca, %bb.u ], [ 0, %_ZN3CFF11cff_stack_tINS_14call_context_tELi10EE4pushERKS1_.exit.i ], [ 0, %bb.t ]
  store ptr %.sroa.0.0.i.i, ptr %i.bp, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4136
  store i64 %.sroa.4.0.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 4144
  store i32 2, ptr %i.cb, align 8, !tbaa !83
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 4148
  store i32 %i.bc, ptr %i.cc, align 4, !tbaa !84
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4464) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i64 16, i1 false)
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

bb.v:                                             ; preds = %bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 4416
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !148 ; 2 uses
  %.not.i.i.i.i131 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i.i.i131, label %bb.x, label %bb.w, !prof !127

bb.w:                                             ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ci = add i32 %i.cg, -1                       ; 2 uses
  store i32 %i.ci, ptr %i.cf, align 4, !tbaa !148
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cj
  %.pre.i.i.i132 = load double, ptr %i.ck, align 8, !tbaa !123
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i133

bb.x:                                             ; preds = %bb.v
  store i8 1, ptr %i.ce, align 8, !tbaa !149
  %i.cl = load i64, ptr @_hb_NullPool, align 16   ; 2 uses
  store i64 %i.cl, ptr @_hb_CrapPool, align 16
  %i.cm = bitcast i64 %i.cl to double
  br label %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i133

_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i133: ; preds = %bb.x, %bb.w
  %i.cn = phi double [ %.pre.i.i.i132, %bb.w ], [ %i.cm, %bb.x ] ; 3 uses
  %i.co = fcmp oge double %i.cn, f0xC1E0000000000000
  %i.cp = fcmp ole double %i.cn, f0x41DFFFFFFFC00000
  %spec.select.not.i.i.i.i134 = and i1 %i.co, %i.cp
  %i.cq = fptosi double %i.cn to i32
  br i1 %spec.select.not.i.i.i.i134, label %_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i.i135, label %bb.y, !prof !69

bb.y:                                             ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i133
  store i8 1, ptr %i.ce, align 8, !tbaa !149
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i.i135

_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i.i135: ; preds = %bb.y, %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i133
  %storemerge.i.i.i.i136 = phi i32 [ 0, %bb.y ], [ %i.cq, %_ZN3CFF11cff_stack_tINS_8number_tELi513EE3popEv.exit.i.i.i133 ]
  %i.cr = load i32, ptr %i.cd, align 8, !tbaa !102
  %i.cs = add i32 %i.cr, %storemerge.i.i.i.i136   ; 5 uses
  %i.ct = icmp slt i32 %i.cs, 0
  br i1 %i.ct, label %.critedge.i139, label %bb.z, !prof !127

bb.z:                                             ; preds = %_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i.i135
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 4424 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i137 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i137, label %.critedge.i139, label %bb.aa, !prof !151

bb.aa:                                            ; preds = %bb.z
  %i.cw = load i32, ptr %i.cv, align 1, !tbaa !101
  %i.cx = tail call noundef i32 @llvm.bswap.i32(i32 %i.cw)
  %.not.i.i138 = icmp ult i32 %i.cs, %i.cx
  br i1 %.not.i.i138, label %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE12pop_subr_numERKNS_14biased_subrs_tIS6_EERj.exit.i140, label %.critedge.i139, !prof !152

_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE12pop_subr_numERKNS_14biased_subrs_tIS6_EERj.exit.i140: ; preds = %bb.aa
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 4172 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !128 ; 3 uses
  %i.da = icmp ugt i32 %i.cz, 9
  br i1 %i.da, label %.critedge.i139, label %_ZN3CFF11cff_stack_tINS_14call_context_tELi10EE4pushERKS1_.exit.i141, !prof !127

.critedge.i139:                                   ; preds = %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE12pop_subr_numERKNS_14biased_subrs_tIS6_EERj.exit.i140, %bb.aa, %bb.z, %_ZN3CFF11arg_stack_tINS_8number_tEE7pop_intEv.exit.i.i135
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !131
  %i.dd = add i32 %i.dc, 1
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !78
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE22push_fixed_from_substrERNS_14byte_str_ref_tE.exit

_ZN3CFF11cff_stack_tINS_14call_context_tELi10EE4pushERKS1_.exit.i141: ; preds = %_ZN3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEE12pop_subr_numERKNS_14biased_subrs_tIS6_EERj.exit.i140
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 4128 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull align 8 dereferenceable(4464) %1, i64 16, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 4176
  %i.dh = add nuw nsw i32 %i.cz, 1
  store i32 %i.dh, ptr %i.cy, align 4, !tbaa !128
  %i.di = zext nneg i32 %i.cz to i64
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.dg, i64 %i.di
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 24, i1 false)
  %i.dk = load ptr, ptr %i.cu, align 8, !tbaa !99 ; 3 uses
  %.not.i3.i142 = icmp eq ptr %i.dk, null
  br i1 %.not.i3.i142, label %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEEixEj.exit.i144, label %bb.ab, !prof !127
end_hunk_2
