Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-cff2?download=true
inline.NumInlined: 4922
inline.NumDeleted: 2282
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN3CFF16subr_subsetter_tI21cff2_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEKNS3_4cff220accelerator_subset_tENS_20cff2_cs_interp_env_tINS_11blend_arg_tEEE27cff2_cs_opset_subr_subset_tLj65535EE17drop_hints_in_strERNS_15parsed_cs_str_tERKNS_19subr_subset_param_tERNSE_18drop_hints_param_tE:bb.a
.split:                                           ; preds = %bb.b
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !563
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 14
  %i.q = load i16, ptr %i.p, align 2, !tbaa !622
  %i.r = zext i16 %i.q to i32
  %i.s = trunc nuw i64 %indvars.iv82 to i32
  %i.t = tail call noundef zeroext i1 @_ZN3CFF16subr_subsetter_tI21cff2_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEKNS3_4cff220accelerator_subset_tENS_20cff2_cs_interp_env_tINS_11blend_arg_tEEE27cff2_cs_opset_subr_subset_tLj65535EE18drop_hints_in_subrERNS_15parsed_cs_str_tEjRNS_19parsed_cs_str_vec_tEjRKNS_19subr_subset_param_tERNSE_18drop_hints_param_tE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i32 noundef %i.r, ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull align 1 dereferenceable(4) %3)
  br i1 %i.t, label %.critedge65, label %.critedge67

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  store i8 1, ptr %3, align 1, !tbaa !1435
  br label %.critedge67

bb.d:                                             ; preds = %bb.b, %bb.b
  %i.u = load i8, ptr %3, align 1, !tbaa !1435, !range !121, !noundef !122
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 13
  store i8 1, ptr %i.w, align 1, !tbaa !623
  br label %.critedge67

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.b, %bb.b, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 13
  store i8 1, ptr %i.x, align 1, !tbaa !623
  %i.y = add nuw nsw i64 %indvars.iv82, 1         ; 2 uses
  %i.z = load i32, ptr %i.a, align 4, !tbaa !619
  %i.aa = zext i32 %i.z to i64
  %.not.i = icmp samesign ult i64 %i.y, %i.aa
  br i1 %.not.i, label %_ZNK3CFF15parsed_cs_str_t6at_endEj.exit, label %_ZNK3CFF15parsed_cs_str_t6at_endEj.exit.thread

_ZNK3CFF15parsed_cs_str_t6at_endEj.exit:          ; preds = %bb.f
  %i.ab = load ptr, ptr %i.c, align 8
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.y
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !235
  %i.af = icmp eq i32 %i.ae, 11
  br i1 %i.af, label %_ZNK3CFF15parsed_cs_str_t6at_endEj.exit.thread, label %.critedge65

_ZNK3CFF15parsed_cs_str_t6at_endEj.exit.thread:   ; preds = %bb.f, %_ZNK3CFF15parsed_cs_str_t6at_endEj.exit
  store i8 1, ptr %i.f, align 1, !tbaa !624
  br label %.critedge65

bb.g:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 13
  store i8 1, ptr %i.ag, align 1, !tbaa !623
  br label %.critedge67

bb.h:                                             ; preds = %bb.b
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !564
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 14
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !622
  %i.ak = zext i16 %i.aj to i32
  %i.al = trunc nuw i64 %indvars.iv82 to i32
  %i.am = tail call noundef zeroext i1 @_ZN3CFF16subr_subsetter_tI21cff2_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEKNS3_4cff220accelerator_subset_tENS_20cff2_cs_interp_env_tINS_11blend_arg_tEEE27cff2_cs_opset_subr_subset_tLj65535EE18drop_hints_in_subrERNS_15parsed_cs_str_tEjRNS_19parsed_cs_str_vec_tEjRKNS_19subr_subset_param_tERNSE_18drop_hints_param_tE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i32 noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull align 1 dereferenceable(4) %3)
  br i1 %i.am, label %.critedge65, label %.critedge67

.critedge65:                                      ; preds = %.split, %_ZNK3CFF15parsed_cs_str_t6at_endEj.exit, %_ZNK3CFF15parsed_cs_str_t6at_endEj.exit.thread, %bb.h
  %i.an = trunc nuw i64 %indvars.iv82 to i32
  %.05768 = add i32 %i.an, -1
  %i.ao = icmp sgt i32 %.05768, -1
  br i1 %i.ao, label %.lr.ph, label %.critedge67

.lr.ph:                                           ; preds = %.critedge65, %bb.k
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %bb.k ], [ %i.k, %.critedge65 ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv79 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 13 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !623, !range !121, !noundef !122
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %.critedge67, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  store i8 1, ptr %i.aq, align 1, !tbaa !623
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !235
  %i.av = icmp eq i32 %i.au, 15
  br i1 %i.av, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.i, align 1, !tbaa !575
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %indvars.iv.next80 = add nsw i64 %indvars.iv79, -1
  %i.aw = icmp sgt i64 %indvars.iv79, 0
  br i1 %i.aw, label %.lr.ph, label %.critedge67, !llvm.loop !1431

.critedge67:                                      ; preds = %.lr.ph, %bb.k, %.critedge65, %.split, %bb.b, %bb.c, %bb.e, %bb.g, %bb.h
  %.162 = phi i1 [ %.06171, %.split ], [ %.06171, %bb.h ], [ %.06171, %bb.c ], [ %.06171, %bb.b ], [ %.06171, %bb.g ], [ %.06171, %bb.e ], [ true, %.critedge65 ], [ true, %bb.k ], [ true, %.lr.ph ] ; 4 uses
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1432

bb.l:                                             ; preds = %bb.m
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next85, %wide.trip.count87
  br i1 %exitcond88.not, label %.critedge, label %.lr.ph76, !llvm.loop !1433

.lr.ph76:                                         ; preds = %._crit_edge, %bb.l
  %indvars.iv84 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next85, %bb.l ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv84 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !235
  %i.ba = icmp eq i32 %i.az, 11
  br i1 %i.ba, label %.critedge, label %bb.m

bb.m:                                             ; preds = %.lr.ph76
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 13
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !623, !range !121, !noundef !122
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.l, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 0, ptr %i.j, align 1, !tbaa !620
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %.lr.ph76, %._crit_edge.thread, %bb.n
  %.061.lcssa91 = phi i1 [ false, %._crit_edge.thread ], [ %.162, %bb.n ], [ %.162, %.lr.ph76 ], [ %.162, %bb.l ]
  ret i1 %.061.lcssa91
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF15parsed_cs_str_t7compactEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !619  ; 3 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE6shrinkEib.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not50 = icmp eq i32 %i.c, 1
  br i1 %.not50, label %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE6shrinkEib.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext i32 %i.c to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.j
  %.pre = load i32, ptr %i.b, align 4, !tbaa !579
  %i.e = add i32 %.1, 1
  %i.f = tail call i32 @llvm.smax.i32(i32 %i.e, i32 0) ; 3 uses
  %i.g = icmp ult i32 %i.f, %.pre
  br i1 %i.g, label %bb.c, label %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE6shrinkEib.exit

bb.c:                                             ; preds = %._crit_edge
  store i32 %i.f, ptr %i.b, align 4, !tbaa !579
  %i.h = load i32, ptr %i.a, align 8, !tbaa !578
  %i.i = add i32 %i.h, -1
  %spec.select.i.i = icmp ult i32 %i.i, -2
  br i1 %spec.select.i.i, label %bb.d, label %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE6shrinkEib.exit

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noundef zeroext i1 @_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %i.f, i1 noundef zeroext true) ; 0 uses
  br label %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE6shrinkEib.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %.03847 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1, %bb.j ] ; 3 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !625  ; 4 uses
  %i.l = zext i32 %.03847 to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.l ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !235
  switch i32 %i.o, label %bb.e [
    i32 10, label %.critedge
    i32 29, label %.critedge
  ]

bb.e:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !235
  switch i32 %i.r, label %bb.f [
    i32 10, label %.critedge
    i32 29, label %.critedge
  ]

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 13
  %i.t = load i8, ptr %i.s, align 1, !tbaa !623, !range !121, !noundef !122
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 13
  %i.v = load i8, ptr %i.u, align 1, !tbaa !623, !range !121, !noundef !122
  %.not46 = icmp eq i8 %i.t, %i.v
  br i1 %.not46, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !244
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 2 uses
  %i.y = load i8, ptr %i.x, align 4, !tbaa !243   ; 3 uses
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.z
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !244
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !243 ; 2 uses
  %1 = xor i8 %i.y, -1
  %not.add.overflow.not = icmp ugt i8 %i.ae, %1
  br i1 %not.add.overflow.not, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = add i8 %i.ae, %i.y
  store i8 %i.af, ptr %i.x, align 4, !tbaa !243
  store i32 65535, ptr %i.n, align 8, !tbaa !235
  br label %bb.j

.critedge:                                        ; preds = %bb.g, %bb.f, %bb.e, %bb.e, %.lr.ph, %.lr.ph, %bb.h
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv
  %i.ah = add i32 %.03847, 1                      ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %.critedge, %bb.i
  %.1 = phi i32 [ %.03847, %bb.i ], [ %i.ah, %.critedge ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !40

_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE6shrinkEib.exit: ; preds = %bb.b, %bb.d, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3CFF16subr_subsetter_tI21cff2_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEKNS3_4cff220accelerator_subset_tENS_20cff2_cs_interp_env_tINS_11blend_arg_tEEE27cff2_cs_opset_subr_subset_tLj65535EE19closure_subroutinesERKNS_19parsed_cs_str_vec_tERK11hb_vector_tISF_Lb0EE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.CFF::subr_subset_param_t", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !603
  %.not.i.i.i.i = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %.not1.i.i.i.i = icmp eq i32 %i.f, 0
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 %.not1.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %_ZN12hb_bit_set_t5clearEv.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.c, align 4, !tbaa !536
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.g, align 4, !tbaa !533
  store i32 0, ptr %i.e, align 4, !tbaa !301
  br label %_ZN12hb_bit_set_t5clearEv.exit.i.i.i

_ZN12hb_bit_set_t5clearEv.exit.i.i.i:             ; preds = %bb.b, %bb.a
  %i.h = load i8, ptr %i.b, align 8, !tbaa !1437, !range !121, !noundef !122
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit.i, !prof !97

bb.c:                                             ; preds = %_ZN12hb_bit_set_t5clearEv.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.j, align 8, !tbaa !350
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit.i

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit.i: ; preds = %bb.c, %_ZN12hb_bit_set_t5clearEv.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !1438 ; 2 uses
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %_ZN3CFF15subr_closures_t5resetEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = zext i32 %i.l to i64
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !559
  br label %_ZN11hb_vector_tI8hb_set_tLb0EEixEi.exit.i

_ZN11hb_vector_tI8hb_set_tLb0EEixEi.exit.i:       ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit7.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit7.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %indvars.iv.i ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 52 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !603
  %.not.i.i.i3.i = icmp eq i32 %i.s, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 20 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4
  %.not1.i.i.i4.i = icmp eq i32 %i.u, 0
  %or.cond.i.i.i5.i = select i1 %.not.i.i.i3.i, i1 %.not1.i.i.i4.i, i1 false
  br i1 %or.cond.i.i.i5.i, label %_ZN12hb_bit_set_t5clearEv.exit.i.i6.i, label %bb.d

bb.d:                                             ; preds = %_ZN11hb_vector_tI8hb_set_tLb0EEixEi.exit.i
  store i32 0, ptr %i.r, align 4, !tbaa !536
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  store i32 0, ptr %i.v, align 4, !tbaa !533
  store i32 0, ptr %i.t, align 4, !tbaa !301
  br label %_ZN12hb_bit_set_t5clearEv.exit.i.i6.i

_ZN12hb_bit_set_t5clearEv.exit.i.i6.i:            ; preds = %bb.d, %_ZN11hb_vector_tI8hb_set_tLb0EEixEi.exit.i
  %i.w = load i8, ptr %i.q, align 8, !tbaa !1437, !range !121, !noundef !122
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.e, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit7.i, !prof !97

bb.e:                                             ; preds = %_ZN12hb_bit_set_t5clearEv.exit.i.i6.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store i8 0, ptr %i.y, align 8, !tbaa !350
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit7.i

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit7.i: ; preds = %bb.e, %_ZN12hb_bit_set_t5clearEv.exit.i.i6.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.n
  br i1 %exitcond.not.i, label %_ZN3CFF15subr_closures_t5resetEv.exit, label %_ZN11hb_vector_tI8hb_set_tLb0EEixEi.exit.i, !llvm.loop !1436

_ZN3CFF15subr_closures_t5resetEv.exit:            ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit7.i, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !546 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 200
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !554 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 196
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !555 ; 2 uses
  %i.af = zext i32 %i.ae to i64
  %.idx = shl nuw nsw i64 %i.af, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx
  %.not38 = icmp eq i32 %i.ae, 0
  br i1 %.not38, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3CFF15subr_closures_t5resetEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 48
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZNK3CFF16subr_subsetter_tI21cff2_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEKNS3_4cff220accelerator_subset_tENS_20cff2_cs_interp_env_tINS_11blend_arg_tEEE27cff2_cs_opset_subr_subset_tLj65535EE21get_parsed_charstringEj.exit37
  %.01939 = phi ptr [ %i.ac, %.lr.ph ], [ %i.ce, %_ZNK3CFF16subr_subsetter_tI21cff2_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEKNS3_4cff220accelerator_subset_tENS_20cff2_cs_interp_env_tINS_11blend_arg_tEEE27cff2_cs_opset_subr_subset_tLj65535EE21get_parsed_charstringEj.exit37 ] ; 3 uses
  %.sroa.0.0.copyload = load i32, ptr %.01939, align 4, !tbaa !101 ; 8 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.01939, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !101
  %i.au = load ptr, ptr %0, align 8, !tbaa !542, !nonnull !122, !align !151
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !248
  %i.ax = call noundef i32 @_ZNK3CFF12CFF2FDSelect6get_fdEj(ptr noundef nonnull align 1 dereferenceable(11) %i.aw, i32 noundef %.sroa.4.0.copyload) ; 4 uses
  %i.ay = load ptr, ptr %0, align 8, !tbaa !542, !nonnull !122, !align !151
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 152
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !349
  %.not23 = icmp ult i32 %i.ax, %i.ba             ; 3 uses
  br i1 %.not23, label %bb.g, label %.critedge, !prof !97

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.bb = load i32, ptr %i.ah, align 4, !tbaa !547 ; 3 uses
  %.not.i24 = icmp eq i32 %i.bb, 0                ; 2 uses
  br i1 %.not.i24, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.i25 = icmp ult i32 %.sroa.0.0.copyload, %i.bb
  %i.bc = load ptr, ptr %i.ai, align 8
  %i.bd = zext i32 %.sroa.0.0.copyload to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bd
  %.0.i.i26 = select i1 %.not.i.i25, ptr %i.be, ptr @_hb_NullPool, !prof !97
  %i.bf = load ptr, ptr %.0.i.i26, align 8, !tbaa !576
  br label %_ZNK3CFF16subr_subsetter_tI21cff2_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEKNS3_4cff220accelerator_subset_tENS_20cff2_cs_interp_env_tINS_11blend_arg_tEEE27cff2_cs_opset_subr_subset_tLj65535EE21get_parsed_charstringEj.exit

bb.i:                                             ; preds = %bb.g
  %i.bg = load i32, ptr %i.aj, align 4, !tbaa !556
  %.not.i3.i = icmp ult i32 %.sroa.0.0.copyload, %i.bg
  %i.bh = load ptr, ptr %i.ak, align 8
  %i.bi = zext i32 %.sroa.0.0.copyload to i64
  %i.bj = getelementptr inbounds nuw [40 x i8], ptr %i.bh, i64 %i.bi
  %.0.i4.i = select i1 %.not.i3.i, ptr %i.bj, ptr @_hb_NullPool, !prof !97
  br label %_ZNK3CFF16subr_subsetter_tI21cff2_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEKNS3_4cff220accelerator_subset_tENS_20cff2_cs_interp_env_tINS_11blend_arg_tEEE27cff2_cs_opset_subr_subset_tLj65535EE21get_parsed_charstringEj.exit

_ZNK3CFF16subr_subsetter_tI21cff2_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEKNS3_4cff220accelerator_subset_tENS_20cff2_cs_interp_env_tINS_11blend_arg_tEEE27cff2_cs_opset_subr_subset_tLj65535EE21get_parsed_charstringEj.exit: ; preds = %bb.h, %bb.i
  %.0.i = phi ptr [ %i.bf, %bb.h ], [ %.0.i4.i, %bb.i ] ; 2 uses
  %i.bk = load i32, ptr %i.al, align 4, !tbaa !414
  %.not.i27 = icmp ult i32 %i.ax, %i.bk
  %i.bl = load ptr, ptr %i.am, align 8
  %i.bm = zext i32 %i.ax to i64                   ; 2 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bm
  %.0.i28 = select i1 %.not.i27, ptr %i.bn, ptr @_hb_NullPool, !prof !97
  %i.bo = load i32, ptr %i.k, align 4, !tbaa !558
  %.not.i29 = icmp ult i32 %i.ax, %i.bo
  br i1 %.not.i29, label %bb.k, label %bb.j, !prof !97

bb.j:                                             ; preds = %_ZNK3CFF16subr_subsetter_tI21cff2_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEKNS3_4cff220accelerator_subset_tENS_20cff2_cs_interp_env_tINS_11blend_arg_tEEE27cff2_cs_opset_subr_subset_tLj65535EE21get_parsed_charstringEj.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(72) @_hb_NullPool, i64 72, i1 false)
  br label %_ZN11hb_vector_tI8hb_set_tLb0EEixEi.exit

bb.k:                                             ; preds = %_ZNK3CFF16subr_subsetter_tI21cff2_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEKNS3_4cff220accelerator_subset_tENS_20cff2_cs_interp_env_tINS_11blend_arg_tEEE27cff2_cs_opset_subr_subset_tLj65535EE21get_parsed_charstringEj.exit
  %i.bp = load ptr, ptr %i.an, align 8, !tbaa !559
  %i.bq = getelementptr inbounds nuw [72 x i8], ptr %i.bp, i64 %i.bm
  br label %_ZN11hb_vector_tI8hb_set_tLb0EEixEi.exit

_ZN11hb_vector_tI8hb_set_tLb0EEixEi.exit:         ; preds = %bb.j, %bb.k
  %.0.i30 = phi ptr [ @_hb_CrapPool, %bb.j ], [ %i.bq, %bb.k ]
  %i.br = load ptr, ptr %i.z, align 8, !tbaa !546
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 20
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !339
  %i.bu = trunc i32 %i.bt to i8
  %i.bv = and i8 %i.bu, 1
end_hunk_0
begin_hunk_1_@_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjRjEEbOT_jOT0_b:bb.a
  store i32 %i.bd, ptr %i.ap, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bf = load <2 x i32>, ptr %i.be, align 4, !tbaa !101
  %i.bg = add <2 x i32> %i.bf, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bg, ptr %i.be, align 4, !tbaa !101
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !626
  %i.bj = zext i16 %i.bi to i32
  %i.bk = icmp ugt i32 %.0283961, %i.bj
  br i1 %i.bk, label %bb.i, label %bb.k, !prof !99

bb.i:                                             ; preds = %bb.h
  %i.bl = extractelement <2 x i32> %i.bg, i64 1
  %i.bm = shl i32 %i.bl, 3
  %i.bn = load i32, ptr %i.h, align 4, !tbaa !417 ; 2 uses
  %i.bo = icmp ugt i32 %i.bm, %i.bn
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bp = add i32 %i.bn, -8
  %i.bq = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bp) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.c, %bb.a
  %.132 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ]
  ret i1 %.132
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK3CFF16subr_subsetter_tI21cff2_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEKNS3_4cff220accelerator_subset_tENS_20cff2_cs_interp_env_tINS_11blend_arg_tEEE27cff2_cs_opset_subr_subset_tLj65535EE20compact_parsed_subrsEv(ptr noundef nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !557  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.d = load i32, ptr %i.c, align 4, !tbaa !556  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx = mul nuw nsw i64 %i.e, 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not27 = icmp eq i32 %i.d, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !549  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.j = load i32, ptr %i.i, align 4, !tbaa !414  ; 2 uses
  %i.k = zext i32 %i.j to i64
  %.idx40 = shl nuw nsw i64 %i.k, 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx40
  %.not2435 = icmp eq i32 %i.j, 0
  br i1 %.not2435, label %._crit_edge39, label %.lr.ph38

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02328 = phi ptr [ %i.m, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZN3CFF15parsed_cs_str_t7compactEv(ptr noundef nonnull align 8 dereferenceable(40) %.02328)
  %i.m = getelementptr inbounds nuw i8, ptr %.02328, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.m, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge39:                                    ; preds = %._crit_edge34, %._crit_edge
  ret void

.lr.ph38:                                         ; preds = %._crit_edge, %._crit_edge34
  %.02236 = phi ptr [ %i.t, %._crit_edge34 ], [ %i.h, %._crit_edge ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.02236, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !557  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.02236, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !556  ; 2 uses
  %i.r = zext i32 %i.q to i64
  %.idx41 = mul nuw nsw i64 %i.r, 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx41
  %.not2529 = icmp eq i32 %i.q, 0
  br i1 %.not2529, label %._crit_edge34, label %.lr.ph33

._crit_edge34:                                    ; preds = %_ZN3CFF15parsed_cs_str_t7compactEv.exit, %.lr.ph38
  %i.t = getelementptr inbounds nuw i8, ptr %.02236, i64 16 ; 2 uses
  %.not24 = icmp eq ptr %i.t, %i.l
  br i1 %.not24, label %._crit_edge39, label %.lr.ph38

.lr.ph33:                                         ; preds = %.lr.ph38, %_ZN3CFF15parsed_cs_str_t7compactEv.exit
  %.030 = phi ptr [ %i.bl, %_ZN3CFF15parsed_cs_str_t7compactEv.exit ], [ %i.o, %.lr.ph38 ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.030, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.030, i64 12 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !619  ; 3 uses
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %_ZN3CFF15parsed_cs_str_t7compactEv.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph33
  %i.x = getelementptr inbounds nuw i8, ptr %.030, i64 16 ; 3 uses
  %.not50.i = icmp eq i32 %i.w, 1
  br i1 %.not50.i, label %_ZN3CFF15parsed_cs_str_t7compactEv.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext i32 %i.w to i64
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.m
  %.pre.i = load i32, ptr %i.v, align 4, !tbaa !579
  %i.y = add i32 %.1.i, 1                         ; 3 uses
  %i.z = tail call i32 @llvm.smax.i32(i32 %i.y, i32 0) ; 6 uses
  %i.aa = icmp ult i32 %i.z, %.pre.i
  br i1 %i.aa, label %bb.c, label %_ZN3CFF15parsed_cs_str_t7compactEv.exit

bb.c:                                             ; preds = %._crit_edge.i
  store i32 %i.z, ptr %i.v, align 4, !tbaa !579
  %i.ab = load i32, ptr %i.u, align 8, !tbaa !578 ; 4 uses
  %or.cond = icmp slt i32 %i.ab, 1
  br i1 %or.cond, label %_ZN3CFF15parsed_cs_str_t7compactEv.exit, label %bb.d, !prof !236

bb.d:                                             ; preds = %bb.c
  %.not19.i = icmp sgt i32 %i.y, %i.ab
  %i.ac = lshr i32 %i.ab, 2
  %.not20.i = icmp samesign ult i32 %i.z, %i.ac
  %or.cond.i = or i1 %.not19.i, %.not20.i
  br i1 %or.cond.i, label %.thread.i, label %_ZN3CFF15parsed_cs_str_t7compactEv.exit

.thread.i:                                        ; preds = %bb.d
  %i.ad = icmp sgt i32 %i.y, 268435455
  br i1 %i.ad, label %.critedge.i26, label %bb.e, !prof !99

.critedge.i26:                                    ; preds = %.thread.i
  %i.ae = xor i32 %i.ab, -1
  br label %.sink.split.i

bb.e:                                             ; preds = %.thread.i
  %.not.i.i.i = icmp ugt i32 %.1.i, 2147483646
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !580 ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @hb_free(ptr noundef %i.af) #16
  br label %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread.i

_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i: ; preds = %bb.e
  %i.ag = shl nuw i32 %i.z, 4
  %i.ah = zext i32 %i.ag to i64
  %i.ai = tail call ptr @hb_realloc(ptr noundef %i.af, i64 noundef %i.ah) #16 ; 2 uses
  %.not22.i = icmp eq ptr %i.ai, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i, label %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread.i, !prof !100

_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i: ; preds = %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i
  %i.aj = load i32, ptr %i.u, align 8, !tbaa !578 ; 2 uses
  %.not23.i = icmp ugt i32 %i.z, %i.aj
  br i1 %.not23.i, label %bb.g, label %_ZN3CFF15parsed_cs_str_t7compactEv.exit

bb.g:                                             ; preds = %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i
  %i.ak = xor i32 %i.aj, -1
  br label %.sink.split.i

_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread.i: ; preds = %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i, %bb.f
  %.1.i.i42.i = phi ptr [ %i.ai, %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i ], [ null, %bb.f ]
  store ptr %.1.i.i42.i, ptr %i.x, align 8, !tbaa !580
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread.i, %bb.g, %.critedge.i26
  %.sink.i = phi i32 [ %i.ak, %bb.g ], [ %i.z, %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread.i ], [ %i.ae, %.critedge.i26 ]
  store i32 %.sink.i, ptr %i.u, align 8, !tbaa !578
  br label %_ZN3CFF15parsed_cs_str_t7compactEv.exit

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.m ] ; 3 uses
  %.03847.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.1.i, %bb.m ] ; 3 uses
  %i.al = load ptr, ptr %i.x, align 8, !tbaa !625 ; 4 uses
  %i.am = zext i32 %.03847.i to i64
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.am ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !235
  switch i32 %i.ap, label %bb.h [
    i32 10, label %.critedge.i
    i32 29, label %.critedge.i
  ]

bb.h:                                             ; preds = %.lr.ph.i
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %indvars.iv.i ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !235
  switch i32 %i.as, label %bb.i [
    i32 10, label %.critedge.i
    i32 29, label %.critedge.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 13
  %i.au = load i8, ptr %i.at, align 1, !tbaa !623, !range !121, !noundef !122
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 13
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !623, !range !121, !noundef !122
  %.not46.i = icmp eq i8 %i.au, %i.aw
  br i1 %.not46.i, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %i.an, align 8, !tbaa !244
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 12 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 4, !tbaa !243 ; 3 uses
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ba
  %i.bc = load ptr, ptr %i.aq, align 8, !tbaa !244
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !243 ; 2 uses
  %1 = xor i8 %i.az, -1
  %not.add.overflow.not.i = icmp ugt i8 %i.bf, %1
  br i1 %not.add.overflow.not.i, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = add i8 %i.bf, %i.az
  store i8 %i.bg, ptr %i.ay, align 4, !tbaa !243
  store i32 65535, ptr %i.ao, align 8, !tbaa !235
  br label %bb.m

.critedge.i:                                      ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.h, %.lr.ph.i, %.lr.ph.i
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %indvars.iv.i
  %i.bi = add i32 %.03847.i, 1                    ; 2 uses
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.bj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 16, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %.critedge.i, %bb.l
  %.1.i = phi i32 [ %.03847.i, %bb.l ], [ %i.bi, %.critedge.i ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !40

_ZN3CFF15parsed_cs_str_t7compactEv.exit:          ; preds = %.sink.split.i, %_ZN11hb_vector_tIN3CFF14parsed_cs_op_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i, %bb.d, %.lr.ph33, %bb.b, %._crit_edge.i, %bb.c
  %i.bl = getelementptr inbounds nuw i8, ptr %.030, i64 40 ; 2 uses
  %.not25 = icmp eq ptr %i.bl, %i.s
  br i1 %.not25, label %._crit_edge34, label %.lr.ph33
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !581    ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !99

bb.b:                                             ; preds = %bb.a
  %i.c = xor i32 %i.a, -1
  store i32 %i.c, ptr %0, align 8, !tbaa !581
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !414  ; 3 uses
  %.not5.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not5.i.i.i, label %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EE5resetEv.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !549
  %i.h = zext i32 %i.e to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.h
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EED2Ev.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.07.i.i.i = phi ptr [ %i.k, %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EED2Ev.exit.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i ] ; 4 uses
  %.046.i.i.i = phi i32 [ %i.j, %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EED2Ev.exit.i.i.i ], [ %i.e, %.lr.ph.preheader.i.i.i ]
  %i.j = add i32 %.046.i.i.i, -1                  ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -16 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !550
  %i.m = add i32 %i.l, -1
  %spec.select.i.i.i.i.i.i = icmp ult i32 %i.m, -2
  br i1 %spec.select.i.i.i.i.i.i, label %bb.d, label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EED2Ev.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.n = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -12 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !556  ; 3 uses
  %.not5.i.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not5.i.i.i.i.i.i, label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE13shrink_vectorEj.exit.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.d
  %i.p = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !557
  %i.r = zext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.q, i64 %i.r
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEED2Ev.exit.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi ptr [ %i.u, %_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEED2Ev.exit.i.i.i.i.i.i ], [ %i.s, %.lr.ph.preheader.i.i.i.i.i.i ] ; 4 uses
  %.046.i.i.i.i.i.i = phi i32 [ %i.t, %_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEED2Ev.exit.i.i.i.i.i.i ], [ %i.o, %.lr.ph.preheader.i.i.i.i.i.i ]
  %i.t = add i32 %.046.i.i.i.i.i.i, -1            ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i, i64 -40
  %i.v = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i, i64 -32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !578
  %i.x = add i32 %i.w, -1
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.x, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEED2Ev.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.y = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i, i64 -28
  store i32 0, ptr %i.y, align 4, !tbaa !579
  %i.z = getelementptr inbounds i8, ptr %.07.i.i.i.i.i.i, i64 -24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !580
  tail call void @hb_free(ptr noundef %i.aa) #16
  br label %_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEED2Ev.exit.i.i.i.i.i.i

_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE13shrink_vectorEj.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !27

_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE13shrink_vectorEj.exit.i.i.i.i.i: ; preds = %_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEED2Ev.exit.i.i.i.i.i.i, %bb.d
  store i32 0, ptr %i.n, align 4, !tbaa !556
  %i.ab = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !557
  tail call void @hb_free(ptr noundef %i.ac) #16
  br label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EED2Ev.exit.i.i.i

_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EED2Ev.exit.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE13shrink_vectorEj.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EE5resetEv.exit, label %.lr.ph.i.i.i, !llvm.loop !28

_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EE5resetEv.exit: ; preds = %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EED2Ev.exit.i.i.i, %bb.c
  store i32 0, ptr %i.d, align 4, !tbaa !414
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !414
  %i.af = tail call noundef zeroext i1 @_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.ae, i1 noundef zeroext true) ; 0 uses
  %i.ag = load i32, ptr %0, align 8, !tbaa !581
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %bb.f, !prof !99

bb.f:                                             ; preds = %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EE5resetEv.exit
  store i32 0, ptr %i.d, align 4, !tbaa !414
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !549
  %i.ak = load i32, ptr %i.ad, align 4, !tbaa !414 ; 3 uses
  %.sroa.2.8.insert.ext.i.i = zext i32 %i.ak to i64
  %.not.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i, label %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXaantsr3std21is_trivially_copyableIT_EE5valuesr3std21is_copy_constructibleIS5_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !549
  %i.an = load i32, ptr %i.d, align 4, !tbaa !414
  %i.ao = trunc nuw i64 %indvars.iv.i to i32
  %i.ap = add i32 %i.an, %i.ao
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.aq
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %indvars.iv.i
  tail call void @_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.as)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %.sroa.2.8.insert.ext.i.i
  br i1 %exitcond.not.i, label %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXaantsr3std21is_trivially_copyableIT_EE5valuesr3std21is_copy_constructibleIS5_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.loopexit, label %bb.g, !llvm.loop !1478

_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXaantsr3std21is_trivially_copyableIT_EE5valuesr3std21is_copy_constructibleIS5_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.loopexit: ; preds = %bb.g
  %.pre = load i32, ptr %i.d, align 4, !tbaa !414
  br label %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXaantsr3std21is_trivially_copyableIT_EE5valuesr3std21is_copy_constructibleIS5_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit

_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXaantsr3std21is_trivially_copyableIT_EE5valuesr3std21is_copy_constructibleIS5_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit: ; preds = %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXaantsr3std21is_trivially_copyableIT_EE5valuesr3std21is_copy_constructibleIS5_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.loopexit, %bb.f
  %i.at = phi i32 [ %.pre, %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXaantsr3std21is_trivially_copyableIT_EE5valuesr3std21is_copy_constructibleIS5_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.loopexit ], [ 0, %bb.f ]
  %i.au = add i32 %i.at, %i.ak
  store i32 %i.au, ptr %i.d, align 4, !tbaa !414
  br label %bb.h

bb.h:                                             ; preds = %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EE5resetEv.exit, %_ZN11hb_vector_tIN3CFF19parsed_cs_str_vec_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXaantsr3std21is_trivially_copyableIT_EE5valuesr3std21is_copy_constructibleIS5_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit
  ret ptr %0
}

declare ptr @hb_blob_reference(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !550    ; 3 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !99

bb.b:                                             ; preds = %bb.a
  %i.c = xor i32 %i.a, -1                         ; 2 uses
  store i32 %i.c, ptr %0, align 8, !tbaa !550
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i32 [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !556  ; 3 uses
  %.not5.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not5.i.i.i, label %_ZN11hb_vector_tIN3CFF15parsed_cs_str_tELb0EE5resetEv.exit.thread, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !557
  %i.i = zext i32 %i.f to i64
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEED2Ev.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.07.i.i.i = phi ptr [ %i.l, %_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEED2Ev.exit.i.i.i ], [ %i.j, %.lr.ph.preheader.i.i.i ] ; 4 uses
  %.046.i.i.i = phi i32 [ %i.k, %_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEED2Ev.exit.i.i.i ], [ %i.f, %.lr.ph.preheader.i.i.i ]
  %i.k = add i32 %.046.i.i.i, -1                  ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -40
  %i.m = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !578
  %i.o = add i32 %i.n, -1
  %spec.select.i.i.i.i.i.i.i = icmp ult i32 %i.o, -2
  br i1 %spec.select.i.i.i.i.i.i.i, label %bb.d, label %_ZN3CFF15parsed_values_tINS_14parsed_cs_op_tEED2Ev.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.p = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -28
end_hunk_1
