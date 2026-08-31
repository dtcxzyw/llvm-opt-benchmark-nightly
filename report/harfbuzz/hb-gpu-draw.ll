Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-gpu-draw?download=true
inline.NumInlined: 467
inline.NumDeleted: 204
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN23hb_gpu_encode_scratch_tD2Ev:bb.a
  store i32 0, ptr %i.v, align 4, !tbaa !57
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !66
  tail call void @hb_free(ptr noundef %i.x) #16
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit6

_ZN11hb_vector_tIjLb0EED2Ev.exit6:                ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit4, %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.z = load i32, ptr %i.y, align 8, !tbaa !56
  %i.aa = add i32 %i.z, -1
  %spec.select.i.i.i7 = icmp ult i32 %i.aa, -2
  br i1 %spec.select.i.i.i7, label %bb.f, label %_ZN11hb_vector_tIjLb0EED2Ev.exit8

bb.f:                                             ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit6
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.ab, align 4, !tbaa !57
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !66
  tail call void @hb_free(ptr noundef %i.ad) #16
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit8

_ZN11hb_vector_tIjLb0EED2Ev.exit8:                ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit6, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !56
  %i.ag = add i32 %i.af, -1
  %spec.select.i.i.i9 = icmp ult i32 %i.ag, -2
  br i1 %spec.select.i.i.i9, label %bb.g, label %_ZN11hb_vector_tIjLb0EED2Ev.exit10

bb.g:                                             ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 0, ptr %i.ah, align 4, !tbaa !57
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !66
  tail call void @hb_free(ptr noundef %i.aj) #16
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit10

_ZN11hb_vector_tIjLb0EED2Ev.exit10:               ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit8, %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !56
  %i.am = add i32 %i.al, -1
  %spec.select.i.i.i11 = icmp ult i32 %i.am, -2
  br i1 %spec.select.i.i.i11, label %bb.h, label %_ZN11hb_vector_tIjLb0EED2Ev.exit12

bb.h:                                             ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit10
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.an, align 4, !tbaa !57
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !66
  tail call void @hb_free(ptr noundef %i.ap) #16
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit12

_ZN11hb_vector_tIjLb0EED2Ev.exit12:               ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit10, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !56
  %i.as = add i32 %i.ar, -1
  %spec.select.i.i.i13 = icmp ult i32 %i.as, -2
  br i1 %spec.select.i.i.i13, label %bb.i, label %_ZN11hb_vector_tIjLb0EED2Ev.exit14

bb.i:                                             ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit12
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 0, ptr %i.at, align 4, !tbaa !57
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !66
  tail call void @hb_free(ptr noundef %i.av) #16
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit14

_ZN11hb_vector_tIjLb0EED2Ev.exit14:               ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit12, %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !56
  %i.ay = add i32 %i.ax, -1
  %spec.select.i.i.i15 = icmp ult i32 %i.ay, -2
  br i1 %spec.select.i.i.i15, label %bb.j, label %_ZN11hb_vector_tIjLb0EED2Ev.exit16

bb.j:                                             ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit14
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.az, align 4, !tbaa !57
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !66
  tail call void @hb_free(ptr noundef %i.bb) #16
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit16

_ZN11hb_vector_tIjLb0EED2Ev.exit16:               ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit14, %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !56
  %i.be = add i32 %i.bd, -1
  %spec.select.i.i.i17 = icmp ult i32 %i.be, -2
  br i1 %spec.select.i.i.i17, label %bb.k, label %_ZN11hb_vector_tIjLb0EED2Ev.exit18

bb.k:                                             ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit16
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.bf, align 4, !tbaa !57
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !66
  tail call void @hb_free(ptr noundef %i.bh) #16
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit18

_ZN11hb_vector_tIjLb0EED2Ev.exit18:               ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit16, %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !56
  %i.bk = add i32 %i.bj, -1
  %spec.select.i.i.i19 = icmp ult i32 %i.bk, -2
  br i1 %spec.select.i.i.i19, label %bb.l, label %_ZN11hb_vector_tIjLb0EED2Ev.exit20

bb.l:                                             ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit18
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.bl, align 4, !tbaa !57
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !66
  tail call void @hb_free(ptr noundef %i.bn) #16
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit20

_ZN11hb_vector_tIjLb0EED2Ev.exit20:               ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit18, %bb.l
  %i.bo = load i32, ptr %0, align 8, !tbaa !54
  %i.bp = add i32 %i.bo, -1
  %spec.select.i.i.i21 = icmp ult i32 %i.bp, -2
  br i1 %spec.select.i.i.i21, label %bb.m, label %_ZN11hb_vector_tI26hb_gpu_encode_curve_info_tLb0EED2Ev.exit

bb.m:                                             ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit20
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.bq, align 4, !tbaa !55
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !59
  tail call void @hb_free(ptr noundef %i.bs) #16
  br label %_ZN11hb_vector_tI26hb_gpu_encode_curve_info_tLb0EED2Ev.exit

_ZN11hb_vector_tI26hb_gpu_encode_curve_info_tLb0EED2Ev.exit: ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit20, %bb.m
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN20hb_user_data_array_t3setEP18hb_user_data_key_tPvPFvS2_Ei(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %5 = alloca %"struct.hb_user_data_array_t::hb_user_data_item_t", align 8 ; 4 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6removeIP18hb_user_data_key_tEEvT_RS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ne i32 %4, 0                        ; 2 uses
  br i1 %i.a, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ne ptr %2, null
  %i.c = icmp ne ptr %3, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #16 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !149  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !152  ; 3 uses
  %.sroa.2.8.insert.ext.i.i.i.i = zext i32 %i.h to i64
  %.not26.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not26.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %bb.e
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv.i.i.i.i ; 4 uses
  %.val19.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !153
  %i.j = icmp eq ptr %.val19.i.i.i.i, %1
  br i1 %i.j, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE7lsearchIP18hb_user_data_key_tEEPS1_RKT_S6_.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %.sroa.2.8.insert.ext.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i, !llvm.loop !156

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE7lsearchIP18hb_user_data_key_tEEPS1_RKT_S6_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !157
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !157 ; 2 uses
  %i.k = add i32 %i.h, -1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !tbaa.struct !201
  %i.n = load i32, ptr %i.g, align 4, !tbaa !152, !noalias !203 ; 2 uses
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE7lsearchIP18hb_user_data_key_tEEPS1_RKT_S6_.exit.i
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr %i.g, align 4, !tbaa !152, !noalias !203
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit.i

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit.i: ; preds = %bb.f, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE7lsearchIP18hb_user_data_key_tEEPS1_RKT_S6_.exit.i
  %i.p = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #16 ; 0 uses
  %.not.i7.i = icmp eq ptr %.sroa.4.0.copyload.i, null
  br i1 %.not.i7.i, label %_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6removeIP18hb_user_data_key_tEEvT_RS2_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit.i
  tail call void %.sroa.4.0.copyload.i(ptr noundef %.sroa.3.0.copyload.i) #16, !inline_history !206
  br label %_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6removeIP18hb_user_data_key_tEEvT_RS2_.exit

.loopexit.i:                                      ; preds = %bb.e, %bb.d
  %i.q = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %0) #16 ; 0 uses
  br label %_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6removeIP18hb_user_data_key_tEEvT_RS2_.exit

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %5, align 8, !tbaa !202
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !157
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !157
  %i.s = tail call noundef ptr @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE17replace_or_insertIS1_EEPS1_T_RS2_b(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull byval(%"struct.hb_user_data_array_t::hb_user_data_item_t") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %0, i1 noundef zeroext %i.a)
  %i.t = icmp ne ptr %i.s, null
  br label %_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6removeIP18hb_user_data_key_tEEvT_RS2_.exit

_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE6removeIP18hb_user_data_key_tEEvT_RS2_.exit: ; preds = %.loopexit.i, %bb.g, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit.i, %bb.a, %bb.h
  %.0 = phi i1 [ %i.t, %bb.h ], [ false, %bb.a ], [ true, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE3popEv.exit.i ], [ true, %bb.g ], [ true, %.loopexit.i ]
  ret i1 %.0
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE17replace_or_insertIS1_EEPS1_T_RS2_b(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef byval(%"struct.hb_user_data_array_t::hb_user_data_item_t") align 8 %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i1 noundef zeroext %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %2) #16 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !149  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !152  ; 5 uses
  %.sroa.2.8.insert.ext.i.i.i = zext i32 %i.e to i64 ; 2 uses
  %.not26.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not26.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %.val.i.i.i = load ptr, ptr %1, align 8, !tbaa !153
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %indvars.iv.i.i.i ; 6 uses
  %.val19.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !153
  %i.g = icmp eq ptr %.val.i.i.i, %.val19.i.i.i
  br i1 %i.g, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE7lsearchIS1_EEPS1_RKT_S4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %.sroa.2.8.insert.ext.i.i.i
  br i1 %exitcond.not.i.i.i, label %.loopexit, label %bb.b, !llvm.loop !207

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE7lsearchIS1_EEPS1_RKT_S4_.exit: ; preds = %bb.b
  br i1 %3, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE7lsearchIS1_EEPS1_RKT_S4_.exit
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !157
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !157 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !201
  %i.h = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %2) #16 ; 0 uses
  %.not.i = icmp eq ptr %.sroa.4.0.copyload, null
  br i1 %.not.i, label %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %.sroa.4.0.copyload(ptr noundef %.sroa.3.0.copyload) #16, !inline_history !199
  br label %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit

bb.f:                                             ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE7lsearchIS1_EEPS1_RKT_S4_.exit
  %i.i = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %2) #16 ; 0 uses
  br label %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit

.loopexit:                                        ; preds = %bb.c, %bb.a
  %i.j = load i32, ptr %0, align 8, !tbaa !195
  %.not.i10 = icmp slt i32 %i.e, %i.j
  br i1 %.not.i10, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.k = add i32 %i.e, 1
  %i.l = tail call noundef zeroext i1 @_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.k, i1 noundef zeroext false)
  br i1 %i.l, label %..critedge_crit_edge.i, label %bb.h, !prof !29

..critedge_crit_edge.i:                           ; preds = %bb.g
  %.pre.i = load i32, ptr %i.d, align 4, !tbaa !152 ; 2 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !149
  %.pre14 = zext i32 %.pre.i to i64
  br label %.critedge.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %.loopexit
  %.pre-phi = phi i64 [ %.pre14, %..critedge_crit_edge.i ], [ %.sroa.2.8.insert.ext.i.i.i, %.loopexit ]
  %i.m = phi ptr [ %.pre, %..critedge_crit_edge.i ], [ %i.c, %.loopexit ]
  %i.n = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.e, %.loopexit ]
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.d, align 4, !tbaa !152
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.pre-phi ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !201
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit: ; preds = %bb.h, %.critedge.i
  %.0.i = phi ptr [ @_hb_CrapPool, %bb.h ], [ %i.p, %.critedge.i ]
  %i.q = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %2) #16 ; 0 uses
  br label %_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit

_ZN20hb_user_data_array_t19hb_user_data_item_t4finiEv.exit: ; preds = %bb.e, %bb.d, %bb.f, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit
  %.0 = phi ptr [ %.0.i, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit ], [ null, %bb.f ], [ %i.f, %bb.d ], [ %i.f, %bb.e ]
  %i.r = load i32, ptr %0, align 8, !tbaa !195
  %i.s = icmp slt i32 %i.r, 0
  %i.t = select i1 %i.s, ptr null, ptr %.0
  ret ptr %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !195    ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !51
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !36

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !208

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 178956970
  br i1 %i.j, label %.critedge, label %bb.e, !prof !36

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !149
  tail call void @hb_free(ptr noundef %i.m) #16
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !149  ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = zext nneg i32 %.138 to i64
  %i.q = mul nuw nsw i64 %i.p, 24
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #16 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !36

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !152  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !36

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = mul nuw nsw i64 %i.u, 24
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !149
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 range(i64 0, 240518168521) %i.v, i1 false), !alias.scope !209
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = zext nneg i32 %.138 to i64
  %i.z = mul nuw nsw i64 %i.y, 24
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #16 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, !prof !166

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !195   ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n
end_hunk_0
