Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-cff2?download=true
inline.NumInlined: 4922
inline.NumDeleted: 2282
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN11hb_vector_tIN3CFF12subr_remap_tELb0EE13shrink_vectorEj:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN11hb_vector_tIN3CFF12subr_remap_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !551
  %i.b = add i32 %i.a, -1
  %spec.select.i = icmp ult i32 %i.b, -2
  br i1 %spec.select.i, label %.sink.split, label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64
  %i.d = mul nuw nsw i64 %i.c, 72
  %i.e = tail call ptr @hb_malloc(i64 noundef %i.d) #16 ; 4 uses
  %.not16 = icmp eq ptr %i.e, null
  br i1 %.not16, label %bb.i, label %.preheader, !prof !99

.preheader:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !414
  %.not19 = icmp eq i32 %i.g, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN14hb_inc_bimap_tD2Ev.exit, %.preheader
  %i.i = load i32, ptr %0, align 8, !tbaa !551
  %i.j = add i32 %i.i, -1
  %spec.select.i17 = icmp ult i32 %i.j, -2
  br i1 %spec.select.i17, label %.sink.split, label %bb.i

bb.d:                                             ; preds = %.lr.ph, %_ZN14hb_inc_bimap_tD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN14hb_inc_bimap_tD2Ev.exit ] ; 3 uses
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %i.e, i64 %indvars.iv ; 16 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.k, i8 0, i64 72, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store atomic i32 1, ptr %i.k monotonic, align 8
  store atomic i8 1, ptr %i.l monotonic, align 4
  store atomic ptr null, ptr %i.m monotonic, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i8 1, ptr %i.n, align 8, !tbaa !298
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 18 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.o, i8 0, i64 18, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !582
  %i.r = getelementptr inbounds nuw [72 x i8], ptr %i.q, i64 %indvars.iv ; 14 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i8, ptr %i.s, align 8, !range !121
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %_ZN3CFF12subr_remap_taSEOS0_.exit, !prof !97

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 18 ; 2 uses
  %i.w = load i16, ptr %i.v, align 2, !tbaa !468
  store i16 %i.w, ptr %i.o, align 2, !tbaa !468
  store i16 0, ptr %i.v, align 2, !tbaa !468
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 20 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !101
  store i32 %i.z, ptr %i.x, align 4, !tbaa !101
  store i32 0, ptr %i.y, align 4, !tbaa !101
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.ac = load i32, ptr %i.aa, align 8, !tbaa !101
  %i.ad = load i32, ptr %i.ab, align 8, !tbaa !101
  store i32 %i.ad, ptr %i.aa, align 8, !tbaa !101
  store i32 %i.ac, ptr %i.ab, align 8, !tbaa !101
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 28 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 28 ; 2 uses
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !101
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !101
  store i32 %i.ah, ptr %i.ae, align 4, !tbaa !101
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !101
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.ak = load i32, ptr %i.ai, align 8, !tbaa !101
  %i.al = load i32, ptr %i.aj, align 8, !tbaa !101
  store i32 %i.al, ptr %i.ai, align 8, !tbaa !101
  store i32 %i.ak, ptr %i.aj, align 8, !tbaa !101
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1431
  store ptr %i.an, ptr %i.p, align 8, !tbaa !1431
  store ptr null, ptr %i.am, align 8, !tbaa !1431
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !101
  br label %_ZN3CFF12subr_remap_taSEOS0_.exit

_ZN3CFF12subr_remap_taSEOS0_.exit:                ; preds = %bb.d, %bb.e
  %i.ao = phi i32 [ 0, %bb.d ], [ %.pre, %bb.e ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !101
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !101
  store i32 %i.ao, ptr %i.aq, align 8, !tbaa !101
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 52 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 52 ; 3 uses
  %i.au = load i32, ptr %i.as, align 4, !tbaa !101
  %i.av = load i32, ptr %i.at, align 4, !tbaa !101
  store i32 %i.av, ptr %i.as, align 4, !tbaa !101
  store i32 %i.au, ptr %i.at, align 4, !tbaa !101
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.ax = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !110
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !110
  store ptr null, ptr %i.ax, align 8, !tbaa !110
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !618
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !618
  %i.bc = load i32, ptr %i.aq, align 8, !tbaa !106
  %i.bd = add i32 %i.bc, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.bd, -2
  br i1 %spec.select.i.i.i.i, label %bb.f, label %_ZN11hb_vector_tIjLb0EED2Ev.exit.i

bb.f:                                             ; preds = %_ZN3CFF12subr_remap_taSEOS0_.exit
  store i32 0, ptr %i.at, align 4, !tbaa !108
  tail call void @hb_free(ptr noundef null) #16
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit.i

_ZN11hb_vector_tIjLb0EED2Ev.exit.i:               ; preds = %bb.f, %_ZN3CFF12subr_remap_taSEOS0_.exit
  store atomic i32 -57005, ptr %i.r monotonic, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.bf = load atomic ptr, ptr %i.be acquire, align 8 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i, label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(56) %i.bf)
  %i.bh = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.bf) #16 ; 0 uses
  tail call void @hb_free(ptr noundef nonnull %i.bf) #16
  store atomic ptr null, ptr %i.be monotonic, align 8
  br label %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i.i

_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZN11hb_vector_tIjLb0EED2Ev.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !203 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i, label %_ZN14hb_inc_bimap_tD2Ev.exit, label %bb.h, !prof !99

bb.h:                                             ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i.i
  tail call void @hb_free(ptr noundef nonnull %i.bj) #16
  br label %_ZN14hb_inc_bimap_tD2Ev.exit

_ZN14hb_inc_bimap_tD2Ev.exit:                     ; preds = %_ZL14hb_object_finiI12hb_hashmap_tIjjLb1EEEvPT_.exit.i.i.i, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bk = load i32, ptr %i.f, align 4, !tbaa !414
  %i.bl = zext i32 %i.bk to i64
  %i.bm = icmp samesign ult i64 %indvars.iv.next, %i.bl
  br i1 %i.bm, label %bb.d, label %._crit_edge, !llvm.loop !1430

.sink.split:                                      ; preds = %._crit_edge, %bb.b
  %.013.ph = phi ptr [ null, %bb.b ], [ %i.e, %._crit_edge ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !582
  tail call void @hb_free(ptr noundef %i.bo) #16
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.c, %._crit_edge, %bb.b
  %.013 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.e, %._crit_edge ], [ %.013.ph, %.sink.split ]
  ret ptr %.013
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3CFF16subr_subsetter_tI21cff2_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEKNS3_4cff220accelerator_subset_tENS_20cff2_cs_interp_env_tINS_11blend_arg_tEEE27cff2_cs_opset_subr_subset_tLj65535EE17drop_hints_in_strERNS_15parsed_cs_str_tERKNS_19subr_subset_param_tERNSE_18drop_hints_param_tE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull align 1 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !619  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1435 ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph73

._crit_edge.thread:                               ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 1, ptr %i.e, align 1, !tbaa !620
  br label %.critedge

.lr.ph73:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 3
  %wide.trip.count = zext i32 %i.b to i64
  br label %bb.b

._crit_edge:                                      ; preds = %.critedge67
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i8 1, ptr %i.j, align 1, !tbaa !620
  %wide.trip.count87 = zext i32 %i.b to i64
  br label %.lr.ph76

bb.b:                                             ; preds = %.lr.ph73, %.critedge67
  %indvars.iv82.a = phi i64 [ 0, %.lr.ph73 ], [ %indvars.iv.next83.a, %.critedge67 ] ; 6 uses
  %.06171 = phi i1 [ false, %.lr.ph73 ], [ %.162, %.critedge67 ] ; 6 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv82.a ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !235
  switch i32 %i.m, label %.critedge67 [
    i32 10, label %bb.h
    i32 29, label %.split
    i32 21, label %bb.c
    i32 22, label %bb.c
    i32 4, label %bb.c
    i32 19, label %bb.d
    i32 20, label %bb.d
    i32 18, label %bb.f
    i32 23, label %bb.f
    i32 1, label %bb.f
    i32 3, label %bb.f
    i32 256, label %bb.g
  ]

.split:                                           ; preds = %bb.b
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !563
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 14
  %i.p = load i16, ptr %i.o, align 2, !tbaa !622
  %i.q = zext i16 %i.p to i32
  %i.r = trunc nuw i64 %indvars.iv82.a to i32
  %i.s = tail call noundef zeroext i1 @_ZN3CFF16subr_subsetter_tI21cff2_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEKNS3_4cff220accelerator_subset_tENS_20cff2_cs_interp_env_tINS_11blend_arg_tEEE27cff2_cs_opset_subr_subset_tLj65535EE18drop_hints_in_subrERNS_15parsed_cs_str_tEjRNS_19parsed_cs_str_vec_tEjRKNS_19subr_subset_param_tERNSE_18drop_hints_param_tE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull align 1 dereferenceable(4) %3)
  br i1 %i.s, label %.critedge65, label %.critedge67

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  store i8 1, ptr %3, align 1, !tbaa !1436
  br label %.critedge67

bb.d:                                             ; preds = %bb.b, %bb.b
  %i.t = load i8, ptr %3, align 1, !tbaa !1436, !range !121, !noundef !122
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 13
  store i8 1, ptr %i.v, align 1, !tbaa !623
  br label %.critedge67

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.b, %bb.b, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 13
  store i8 1, ptr %i.w, align 1, !tbaa !623
  %i.x = add nuw nsw i64 %indvars.iv82.a, 1       ; 2 uses
  %i.y = load i32, ptr %i.a, align 4, !tbaa !619
  %i.z = zext i32 %i.y to i64
  %.not.i = icmp samesign ult i64 %i.x, %i.z
  br i1 %.not.i, label %_ZNK3CFF15parsed_cs_str_t6at_endEj.exit, label %_ZNK3CFF15parsed_cs_str_t6at_endEj.exit.thread

_ZNK3CFF15parsed_cs_str_t6at_endEj.exit:          ; preds = %bb.f
  %i.aa = load ptr, ptr %i.c, align 8
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.x
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !235
  %i.ae = icmp eq i32 %i.ad, 11
  br i1 %i.ae, label %_ZNK3CFF15parsed_cs_str_t6at_endEj.exit.thread, label %.critedge65

_ZNK3CFF15parsed_cs_str_t6at_endEj.exit.thread:   ; preds = %bb.f, %_ZNK3CFF15parsed_cs_str_t6at_endEj.exit
  store i8 1, ptr %i.f, align 1, !tbaa !624
  br label %.critedge65

bb.g:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 13
  store i8 1, ptr %i.af, align 1, !tbaa !623
  br label %.critedge67

bb.h:                                             ; preds = %bb.b
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !564
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 14
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !622
  %i.aj = zext i16 %i.ai to i32
  %i.ak = trunc nuw i64 %indvars.iv82.a to i32
  %i.al = tail call noundef zeroext i1 @_ZN3CFF16subr_subsetter_tI21cff2_subr_subsetter_tNS_5SubrsIN2OT7NumTypeILb1EjLj4EEEEEKNS3_4cff220accelerator_subset_tENS_20cff2_cs_interp_env_tINS_11blend_arg_tEEE27cff2_cs_opset_subr_subset_tLj65535EE18drop_hints_in_subrERNS_15parsed_cs_str_tEjRNS_19parsed_cs_str_vec_tEjRKNS_19subr_subset_param_tERNSE_18drop_hints_param_tE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i32 noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull align 1 dereferenceable(4) %3)
  br i1 %i.al, label %.critedge65, label %.critedge67

.critedge65:                                      ; preds = %.split, %_ZNK3CFF15parsed_cs_str_t6at_endEj.exit, %_ZNK3CFF15parsed_cs_str_t6at_endEj.exit.thread, %bb.h
  %i.am = trunc nuw i64 %indvars.iv82.a to i32
  %.05768 = add i32 %i.am, -1                     ; 2 uses
  %i.an = icmp sgt i32 %.05768, -1
  br i1 %i.an, label %.lr.ph.preheader, label %.critedge67

.lr.ph.preheader:                                 ; preds = %.critedge65
  %4 = zext nneg i32 %.05768 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %indvars.iv79 = phi i64 [ %4, %.lr.ph.preheader ], [ %indvars.iv.next80, %bb.k ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv79 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 13 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !623, !range !121, !noundef !122
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %.critedge67, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  store i8 1, ptr %i.ap, align 1, !tbaa !623
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !235
  %i.au = icmp eq i32 %i.at, 15
  br i1 %i.au, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.i, align 1, !tbaa !575
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %indvars.iv.next80 = add nsw i64 %indvars.iv79, -1
  %i.av = icmp sgt i64 %indvars.iv79, 0
  br i1 %i.av, label %.lr.ph, label %.critedge67, !llvm.loop !1432

.critedge67:                                      ; preds = %.lr.ph, %bb.k, %.critedge65, %.split, %bb.b, %bb.c, %bb.e, %bb.g, %bb.h
  %.162 = phi i1 [ %.06171, %.split ], [ %.06171, %bb.h ], [ %.06171, %bb.c ], [ %.06171, %bb.b ], [ %.06171, %bb.g ], [ %.06171, %bb.e ], [ true, %.critedge65 ], [ true, %bb.k ], [ true, %.lr.ph ] ; 4 uses
  %indvars.iv.next83.a = add nuw nsw i64 %indvars.iv82.a, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next83.a, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1433

bb.l:                                             ; preds = %bb.m
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next85, %wide.trip.count87
  br i1 %exitcond88.not, label %.critedge, label %.lr.ph76, !llvm.loop !1434

.lr.ph76:                                         ; preds = %._crit_edge, %bb.l
  %indvars.iv84 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next85, %bb.l ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv84 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !235
  %i.az = icmp eq i32 %i.ay, 11
  br i1 %i.az, label %.critedge, label %bb.m

bb.m:                                             ; preds = %.lr.ph76
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 13
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !623, !range !121, !noundef !122
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.l, label %bb.n

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
  %i.af = xor i8 %i.y, -1
  %not.add.overflow.not = icmp ugt i8 %i.ae, %i.af
  br i1 %not.add.overflow.not, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = add i8 %i.ae, %i.y
  store i8 %i.ag, ptr %i.x, align 4, !tbaa !243
  store i32 65535, ptr %i.n, align 8, !tbaa !235
  br label %bb.j

.critedge:                                        ; preds = %bb.g, %bb.f, %bb.e, %bb.e, %.lr.ph, %.lr.ph, %bb.h
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv
  %i.ai = add i32 %.03847, 1                      ; 2 uses
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %.critedge, %bb.i
  %.1 = phi i32 [ %.03847, %bb.i ], [ %i.ai, %.critedge ] ; 2 uses
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
  store i32 0, ptr %i.c, align 4, !tbaa !535
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.g, align 4, !tbaa !532
  store i32 0, ptr %i.e, align 4, !tbaa !300
  br label %_ZN12hb_bit_set_t5clearEv.exit.i.i.i

_ZN12hb_bit_set_t5clearEv.exit.i.i.i:             ; preds = %bb.b, %bb.a
  %i.h = load i8, ptr %i.b, align 8, !tbaa !1438, !range !121, !noundef !122
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit.i, !prof !97

bb.c:                                             ; preds = %_ZN12hb_bit_set_t5clearEv.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.j, align 8, !tbaa !349
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit.i

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit.i: ; preds = %bb.c, %_ZN12hb_bit_set_t5clearEv.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !1439 ; 2 uses
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %_ZN3CFF15subr_closures_t5resetEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = zext i32 %i.l to i64
  br label %_ZN11hb_vector_tI8hb_set_tLb0EEixEi.exit.i

_ZN11hb_vector_tI8hb_set_tLb0EEixEi.exit.i:       ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit7.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit7.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw [72 x i8], ptr %i.n, i64 %indvars.iv.i ; 5 uses
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
  store i32 0, ptr %i.r, align 4, !tbaa !535
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  store i32 0, ptr %i.v, align 4, !tbaa !532
  store i32 0, ptr %i.t, align 4, !tbaa !300
end_hunk_0
