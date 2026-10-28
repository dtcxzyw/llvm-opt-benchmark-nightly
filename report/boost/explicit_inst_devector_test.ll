Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_devector_test?download=true
inline.NumInlined: 2703
inline.NumDeleted: 381
loop-unroll.NumRuntimeUnrolled: 73
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE9push_backERKS3_:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i16, ptr %i.a, align 4, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !69   ; 3 uses
  %i.e = zext i16 %i.d to i64
  %.not.i.i = icmp eq i16 %i.b, %i.d
  %i.f = load ptr, ptr %0, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.e ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %1, align 4, !tbaa !65
  store i32 %i.h, ptr %i.g, align 4, !tbaa !65
  %i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.k = add i16 %i.d, 1
  store i16 %i.k, ptr %i.c, align 2, !tbaa !69
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE14priv_push_backIRKS3_EEvOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = tail call noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyIS5_JRKS3_EEEEEPS3_PSC_mT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.g, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %1) ; 0 uses
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE14priv_push_backIRKS3_EEvOT_.exit

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE14priv_push_backIRKS3_EEvOT_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i16, ptr %i.a, align 4, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !69   ; 3 uses
  %i.e = zext i16 %i.d to i64
  %.not.i.i = icmp eq i16 %i.b, %i.d
  %i.f = load ptr, ptr %0, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.e ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %1, align 4, !tbaa !65
  store i32 %i.h, ptr %i.g, align 4, !tbaa !65
  store i32 0, ptr %1, align 4, !tbaa !65
  %i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.k = add i16 %i.d, 1
  store i16 %i.k, ptr %i.c, align 2, !tbaa !69
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE14priv_push_backIS3_EEvOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = tail call noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.g, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %1) ; 0 uses
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE14priv_push_backIS3_EEvOT_.exit

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE14priv_push_backIS3_EEvOT_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !69
  %i.c = add i16 %i.b, -1                         ; 2 uses
  store i16 %i.c, ptr %i.a, align 2, !tbaa !69
  %i.d = load ptr, ptr %0, align 8, !tbaa !62
  %i.e = zext i16 %i.c to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.e
  store i32 -2147483648, ptr %i.f, align 4, !tbaa !65
  %i.g = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.h = add i32 %i.g, -1
  store i32 %i.h, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE6insertEPKS3_RS9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE7emplaceIJRKS3_EEEPS3_PSA_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  ret ptr %i.a
}

; Function Attrs: alwaysinline mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE6insertEPKS3_OS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE7emplaceIJS3_EEEPS3_PKS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE6insertEPKS3_mRS9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE12insert_rangeINS0_17constant_iteratorIS3_EEEEPS3_PKS3_T_SF_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr nonnull %3, i64 %2, ptr nonnull %3, i64 0)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE12insert_rangeINS0_17constant_iteratorIS3_EEEEPS3_PKS3_T_SF_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr %2, i64 %3, ptr %4, i64 %5) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sub i64 %3, %5                           ; 36 uses
  %.not = icmp eq i64 %i.a, 0
  %i.b = load ptr, ptr %0, align 8, !tbaa !62     ; 10 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 4 uses
  br i1 %.not, label %bb.b, label %bb.c, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i16, ptr %i.d, align 8, !tbaa !63
  %i.f = zext i16 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f ; 2 uses
  %i.h = ptrtoint ptr %1 to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.m = load i16, ptr %i.l, align 2, !tbaa !69   ; 3 uses
  %i.n = zext i16 %i.m to i64                     ; 6 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n ; 17 uses
  %i.p = icmp eq ptr %1, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.r = load i16, ptr %i.q, align 4, !tbaa !70
  %i.s = zext i16 %i.r to i64
  %i.t = sub nsw i64 %i.s, %i.n
  %.not64 = icmp ult i64 %i.t, %i.a
  br i1 %.not64, label %.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %xtraiter229 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod230.not = icmp eq i64 %xtraiter229, 0
  br i1 %lcmp.mod230.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.014.i.prol = phi ptr [ %i.y, %.lr.ph.i.prol ], [ %i.o, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.2.013.i.prol = phi i64 [ %i.x, %.lr.ph.i.prol ], [ %3, %.lr.ph.i.preheader ]
  %prol.iter231 = phi i64 [ %prol.iter231.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.014.i.prol) ]
  %i.u = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.u, ptr %.014.i.prol, align 4, !tbaa !65
  %i.v = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.x = add i64 %.sroa.2.013.i.prol, -1          ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.014.i.prol, i64 4 ; 2 uses
  %prol.iter231.next = add i64 %prol.iter231, 1   ; 2 uses
  %prol.iter231.cmp.not = icmp eq i64 %prol.iter231.next, %xtraiter229
  br i1 %prol.iter231.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !138

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.014.i.unr = phi ptr [ %i.o, %.lr.ph.i.preheader ], [ %i.y, %.lr.ph.i.prol ]
  %.sroa.2.013.i.unr = phi i64 [ %3, %.lr.ph.i.preheader ], [ %i.x, %.lr.ph.i.prol ]
  %i.z = sub i64 %5, %3
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.014.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %.014.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.sroa.2.013.i = phi i64 [ %i.an, %.lr.ph.i ], [ %.sroa.2.013.i.unr, %.lr.ph.i.prol.loopexit ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.014.i) ]
  %i.ab = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.ab, ptr %.014.i, align 4, !tbaa !65
  %i.ac = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66 ; 4 uses
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ae = getelementptr inbounds nuw i8, ptr %.014.i, i64 4
  %i.af = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !65
  %i.ag = add i32 %i.ac, 2
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ah = getelementptr inbounds nuw i8, ptr %.014.i, i64 8
  %i.ai = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !65
  %i.aj = add i32 %i.ac, 3
  store i32 %i.aj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ak = getelementptr inbounds nuw i8, ptr %.014.i, i64 12
  %i.al = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !65
  %i.am = add i32 %i.ac, 4
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.an = add i64 %.sroa.2.013.i, -4              ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.014.i, i64 16
  %.not.i.3 = icmp eq i64 %i.an, %5
  br i1 %.not.i.3, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.lr.ph.i, !llvm.loop !0

_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit: ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %i.ap = trunc i64 %i.a to i16
  %i.aq = add i16 %i.m, %i.ap
  store i16 %i.aq, ptr %i.l, align 2, !tbaa !73
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.as = load i16, ptr %i.ar, align 8, !tbaa !63 ; 3 uses
  %i.at = zext i16 %i.as to i64                   ; 6 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.at ; 16 uses
  %i.av = icmp eq ptr %1, %i.au
  br i1 %i.av, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not63 = icmp ugt i64 %i.a, %i.at
  br i1 %.not63, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = sub nsw i64 0, %i.a
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aw ; 2 uses
  %xtraiter226.a = and i64 %i.a, 3                ; 2 uses
  %lcmp.mod227.not.a = icmp eq i64 %xtraiter226.a, 0
  br i1 %lcmp.mod227.not.a, label %.lr.ph.i66.prol.loopexit, label %.lr.ph.i66.prol

.lr.ph.i66.prol:                                  ; preds = %bb.g, %.lr.ph.i66.prol
  %.014.i67.prol = phi ptr [ %i.bc, %.lr.ph.i66.prol ], [ %i.ax, %bb.g ] ; 3 uses
  %.sroa.2.013.i68.prol = phi i64 [ %i.bb, %.lr.ph.i66.prol ], [ %3, %bb.g ]
  %prol.iter228.a = phi i64 [ %prol.iter228.next.a, %.lr.ph.i66.prol ], [ 0, %bb.g ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.014.i67.prol) ]
  %i.ay = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.ay, ptr %.014.i67.prol, align 4, !tbaa !65
  %i.az = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bb = add i64 %.sroa.2.013.i68.prol, -1       ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.014.i67.prol, i64 4 ; 2 uses
  %prol.iter228.next.a = add i64 %prol.iter228.a, 1 ; 2 uses
  %prol.iter228.cmp.not.a = icmp eq i64 %prol.iter228.next.a, %xtraiter226.a
  br i1 %prol.iter228.cmp.not.a, label %.lr.ph.i66.prol.loopexit, label %.lr.ph.i66.prol, !llvm.loop !139

.lr.ph.i66.prol.loopexit:                         ; preds = %.lr.ph.i66.prol, %bb.g
  %.014.i67.unr = phi ptr [ %i.ax, %bb.g ], [ %i.bc, %.lr.ph.i66.prol ]
  %.sroa.2.013.i68.unr = phi i64 [ %3, %bb.g ], [ %i.bb, %.lr.ph.i66.prol ]
  %i.bd = sub i64 %5, %3
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit71, label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %.lr.ph.i66.prol.loopexit, %.lr.ph.i66
  %.014.i67 = phi ptr [ %i.bs, %.lr.ph.i66 ], [ %.014.i67.unr, %.lr.ph.i66.prol.loopexit ] ; 6 uses
  %.sroa.2.013.i68 = phi i64 [ %i.br, %.lr.ph.i66 ], [ %.sroa.2.013.i68.unr, %.lr.ph.i66.prol.loopexit ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.014.i67) ]
  %i.bf = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.bf, ptr %.014.i67, align 4, !tbaa !65
  %i.bg = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66 ; 4 uses
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bi = getelementptr inbounds nuw i8, ptr %.014.i67, i64 4
  %i.bj = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !65
  %i.bk = add i32 %i.bg, 2
  store i32 %i.bk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bl = getelementptr inbounds nuw i8, ptr %.014.i67, i64 8
  %i.bm = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !65
  %i.bn = add i32 %i.bg, 3
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bo = getelementptr inbounds nuw i8, ptr %.014.i67, i64 12
  %i.bp = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !65
  %i.bq = add i32 %i.bg, 4
  store i32 %i.bq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.br = add i64 %.sroa.2.013.i68, -4            ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i67, i64 16
  %.not.i69.3 = icmp eq i64 %i.br, %5
  br i1 %.not.i69.3, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit71, label %.lr.ph.i66, !llvm.loop !0

_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit71: ; preds = %.lr.ph.i66, %.lr.ph.i66.prol.loopexit
  %i.bt = trunc nuw i64 %i.a to i16
  %i.bu = sub i16 %i.as, %i.bt                    ; 2 uses
  store i16 %i.bu, ptr %i.ar, align 8, !tbaa !81
  %i.bv = zext i16 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bv
  br label %bb.n

bb.h:                                             ; preds = %bb.e
  %i.bx = ptrtoint ptr %1 to i64                  ; 6 uses
  %i.by = ptrtoint ptr %i.au to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 2                 ; 9 uses
  %i.cb = sub nsw i64 %i.n, %i.at
  %i.cc = lshr i64 %i.cb, 1
  %.not105 = icmp ult i64 %i.ca, %i.cc
  br i1 %.not105, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ce = load i16, ptr %i.cd, align 4, !tbaa !70
  %i.cf = zext i16 %i.ce to i64
  %i.cg = sub nsw i64 %i.cf, %i.n
  %.not62 = icmp ult i64 %i.cg, %i.a
  br i1 %.not62, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = ptrtoint ptr %i.o to i64
  %i.ci = sub i64 %i.ch, %i.bx
  %i.cj = ashr exact i64 %i.ci, 2                 ; 8 uses
  %.not.i72 = icmp ult i64 %i.cj, %i.a
  br i1 %.not.i72, label %.lr.ph.i48.preheader.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ck = sub i64 0, %i.a
  %i.cl = getelementptr [4 x i8], ptr %i.o, i64 %i.ck ; 10 uses
  %.neg = add i64 %5, 1
  %xtraiter = and i64 %i.a, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %bb.k
  %i.cm = add nsw i64 %i.a, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.b) ]
  %i.cn = load i32, ptr %i.cl, align 4, !tbaa !65
  store i32 %i.cn, ptr %i.o, align 4, !tbaa !65
  store i32 0, ptr %i.cl, align 4, !tbaa !65
  %i.co = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cp = add i32 %i.co, 1
  store i32 %i.cp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %bb.k
  %.020.i.i.unr = phi i64 [ %i.a, %bb.k ], [ %i.cm, %.lr.ph.i.i.prol ]
  %.0819.i.i.unr = phi ptr [ %i.cl, %bb.k ], [ %i.cq, %.lr.ph.i.i.prol ]
  %.01618.i.i.unr = phi ptr [ %i.o, %bb.k ], [ %i.cr, %.lr.ph.i.i.prol ]
  %i.cs = icmp eq i64 %3, %.neg
  br i1 %i.cs, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.020.i.i = phi i64 [ %i.cy, %.lr.ph.i.i ], [ %.020.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.0819.i.i = phi ptr [ %i.dc, %.lr.ph.i.i ], [ %.0819.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i = phi ptr [ %i.dd, %.lr.ph.i.i ], [ %.01618.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i) ]
  %i.ct = load i32, ptr %.0819.i.i, align 4, !tbaa !65
  store i32 %i.ct, ptr %.01618.i.i, align 4, !tbaa !65
  store i32 0, ptr %.0819.i.i, align 4, !tbaa !65
  %i.cu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cw = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 4 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 4
  %i.cy = add i64 %.020.i.i, -2                   ; 2 uses
  %i.cz = load i32, ptr %i.cw, align 4, !tbaa !65
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !65
  store i32 0, ptr %i.cw, align 4, !tbaa !65
  %i.da = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.dc = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 8
  %.not.i.i.1 = icmp eq i64 %i.cy, 0
  br i1 %.not.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i, !llvm.loop !9

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.not8.i.i = icmp eq ptr %1, %i.cl
  br i1 %.not8.i.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i40.i.preheader

.lr.ph.i40.i.preheader:                           ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i
  %i.de = shl i64 %3, 2
  %i.df = add i64 %5, %i.n
  %i.dg = shl i64 %i.df, 2
  %i.dh = add i64 %i.dg, %i.c
  %i.di = add i64 %i.dh, -4
  %i.dj = add i64 %i.de, %i.bx
  %i.dk = sub i64 %i.di, %i.dj                    ; 2 uses
  %i.dl = lshr i64 %i.dk, 2
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dk, 188
  br i1 %min.iters.check, label %.lr.ph.i40.i.preheader214, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.preheader
  %i.dn = shl nuw nsw i64 %i.n, 2                 ; 3 uses
  %i.do = shl i64 %5, 2                           ; 2 uses
  %i.dp = shl i64 %3, 2                           ; 2 uses
  %i.dq = add i64 %i.do, %i.c
  %i.dr = add i64 %i.dq, %i.dn
  %i.ds = add i64 %i.dr, -4
  %i.dt = add i64 %i.dp, %i.bx
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = and i64 %i.du, -4                       ; 2 uses
  %i.dw = add nsw i64 %i.dn, -4
  %i.dx = sub i64 %i.dw, %i.dv
  %i.dy = getelementptr i8, ptr %i.b, i64 %i.dx
  %i.dz = add i64 %i.do, %i.dn
  %i.ea = add i64 %i.dz, -4
  %i.eb = add i64 %i.dp, %i.dv
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = getelementptr i8, ptr %i.b, i64 %i.ec
  %bound0 = icmp ult ptr %i.dy, %i.cl
  %bound1 = icmp ult ptr %i.ed, %i.o
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.preheader214, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dm, 9223372036854775800     ; 3 uses
  %i.ee = mul i64 %n.vec, -4                      ; 2 uses
  %i.ef = getelementptr i8, ptr %i.o, i64 %i.ee
  %i.eg = getelementptr i8, ptr %i.cl, i64 %i.ee
  br label %vector.body

end_hunk_0
begin_hunk_1_@_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE12insert_rangeINS0_17constant_iteratorIS3_EEEEPS3_PKS3_T_SF_:bb.a

.lr.ph.i48.i:                                     ; preds = %.lr.ph.i48.i, %.lr.ph.i48.preheader.i
  %.018.i.i = phi ptr [ %i.fc, %.lr.ph.i48.i ], [ %1, %.lr.ph.i48.preheader.i ] ; 3 uses
  %.01517.i.i = phi ptr [ %i.fd, %.lr.ph.i48.i ], [ %i.ey, %.lr.ph.i48.preheader.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.ez = load i32, ptr %.018.i.i, align 4, !tbaa !65
  store i32 %i.ez, ptr %.01517.i.i, align 4, !tbaa !65
  store i32 0, ptr %.018.i.i, align 4, !tbaa !65
  %i.fa = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.fb = add i32 %i.fa, 1
  store i32 %i.fb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.fc = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4
  %.not.i49.i = icmp eq ptr %i.fc, %i.o
  br i1 %.not.i49.i, label %.lr.ph.preheader.i.i54.i, label %.lr.ph.i48.i, !llvm.loop !8

.lr.ph.preheader.i.i54.i:                         ; preds = %.lr.ph.i48.i
  %.pre.i.i55.i = load i32, ptr %2, align 4, !tbaa !65 ; 2 uses
  %min.iters.check148 = icmp ult i64 %i.cj, 8
  br i1 %min.iters.check148, label %.lr.ph.i.i56.i.preheader, label %vector.ph149

vector.ph149:                                     ; preds = %.lr.ph.preheader.i.i54.i
  %n.vec150 = and i64 %i.cj, -8                   ; 3 uses
  %i.fe = and i64 %i.cj, 7
  %i.ff = shl nsw i64 %n.vec150, 2
  %i.fg = getelementptr i8, ptr %1, i64 %i.ff
  %broadcast.splatinsert151 = insertelement <4 x i32> poison, i32 %.pre.i.i55.i, i64 0
  %broadcast.splat152 = shufflevector <4 x i32> %broadcast.splatinsert151, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph149
  %index154 = phi i64 [ 0, %vector.ph149 ], [ %index.next156, %vector.body153 ] ; 2 uses
  %i.fh = shl i64 %index154, 2
  %next.gep155 = getelementptr i8, ptr %1, i64 %i.fh ; 2 uses
  %i.fi = getelementptr i8, ptr %next.gep155, i64 16
  store <4 x i32> %broadcast.splat152, ptr %next.gep155, align 4, !tbaa !65
  store <4 x i32> %broadcast.splat152, ptr %i.fi, align 4, !tbaa !65
  %index.next156 = add nuw i64 %index154, 8       ; 2 uses
  %i.fj = icmp eq i64 %index.next156, %n.vec150
  br i1 %i.fj, label %middle.block157, label %vector.body153, !llvm.loop !147

middle.block157:                                  ; preds = %vector.body153
  %cmp.n158 = icmp eq i64 %i.cj, %n.vec150
  br i1 %cmp.n158, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i, label %.lr.ph.i.i56.i.preheader

.lr.ph.i.i56.i.preheader:                         ; preds = %.lr.ph.preheader.i.i54.i, %middle.block157
  %.012.i.i57.i.ph = phi i64 [ %i.cj, %.lr.ph.preheader.i.i54.i ], [ %i.fe, %middle.block157 ]
  %.0511.i.i58.i.ph = phi ptr [ %1, %.lr.ph.preheader.i.i54.i ], [ %i.fg, %middle.block157 ]
  br label %.lr.ph.i.i56.i

.lr.ph.i.i56.i:                                   ; preds = %.lr.ph.i.i56.i.preheader, %.lr.ph.i.i56.i
  %.012.i.i57.i = phi i64 [ %i.fk, %.lr.ph.i.i56.i ], [ %.012.i.i57.i.ph, %.lr.ph.i.i56.i.preheader ]
  %.0511.i.i58.i = phi ptr [ %i.fl, %.lr.ph.i.i56.i ], [ %.0511.i.i58.i.ph, %.lr.ph.i.i56.i.preheader ] ; 2 uses
  %i.fk = add i64 %.012.i.i57.i, -1               ; 2 uses
  store i32 %.pre.i.i55.i, ptr %.0511.i.i58.i, align 4, !tbaa !65
  %i.fl = getelementptr inbounds nuw i8, ptr %.0511.i.i58.i, i64 4
  %.not.i.i59.i = icmp eq i64 %i.fk, 0
  br i1 %.not.i.i59.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i, label %.lr.ph.i.i56.i, !llvm.loop !148

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i: ; preds = %.lr.ph.i.i56.i, %middle.block157
  %i.fm = sub i64 %i.a, %i.cj                     ; 3 uses
  %xtraiter215 = and i64 %i.fm, 3                 ; 2 uses
  %lcmp.mod216.not = icmp eq i64 %xtraiter215, 0
  br i1 %lcmp.mod216.not, label %.lr.ph.i.i66.i.prol.loopexit, label %.lr.ph.i.i66.i.prol

.lr.ph.i.i66.i.prol:                              ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i, %.lr.ph.i.i66.i.prol
  %.022.i.i.i.prol = phi i64 [ %i.fr, %.lr.ph.i.i66.i.prol ], [ %i.fm, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i ]
  %.01821.i.i.i.prol = phi ptr [ %i.fq, %.lr.ph.i.i66.i.prol ], [ %i.o, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i66.i.prol ], [ 0, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01821.i.i.i.prol) ]
  %i.fn = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.fn, ptr %.01821.i.i.i.prol, align 4, !tbaa !65
  %i.fo = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.fp = add i32 %i.fo, 1
  store i32 %i.fp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.fq = getelementptr inbounds nuw i8, ptr %.01821.i.i.i.prol, i64 4 ; 2 uses
  %i.fr = add i64 %.022.i.i.i.prol, -1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter215
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i66.i.prol.loopexit, label %.lr.ph.i.i66.i.prol, !llvm.loop !149

.lr.ph.i.i66.i.prol.loopexit:                     ; preds = %.lr.ph.i.i66.i.prol, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i
  %.022.i.i.i.unr = phi i64 [ %i.fm, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i ], [ %i.fr, %.lr.ph.i.i66.i.prol ]
  %.01821.i.i.i.unr = phi ptr [ %i.o, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i ], [ %i.fq, %.lr.ph.i.i66.i.prol ]
  %i.fs = sub i64 %i.cj, %3
  %i.ft = add i64 %i.fs, %5
  %i.fu = icmp ugt i64 %i.ft, -4
  br i1 %i.fu, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i66.i

.lr.ph.i.i66.i:                                   ; preds = %.lr.ph.i.i66.i.prol.loopexit, %.lr.ph.i.i66.i
  %.022.i.i.i = phi i64 [ %i.gi, %.lr.ph.i.i66.i ], [ %.022.i.i.i.unr, %.lr.ph.i.i66.i.prol.loopexit ]
  %.01821.i.i.i = phi ptr [ %i.gh, %.lr.ph.i.i66.i ], [ %.01821.i.i.i.unr, %.lr.ph.i.i66.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01821.i.i.i) ]
  %i.fv = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.fv, ptr %.01821.i.i.i, align 4, !tbaa !65
  %i.fw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66 ; 4 uses
  %i.fx = add i32 %i.fw, 1
  store i32 %i.fx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.fy = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 4
  %i.fz = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.fz, ptr %i.fy, align 4, !tbaa !65
  %i.ga = add i32 %i.fw, 2
  store i32 %i.ga, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.gb = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 8
  %i.gc = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.gc, ptr %i.gb, align 4, !tbaa !65
  %i.gd = add i32 %i.fw, 3
  store i32 %i.gd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ge = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 12
  %i.gf = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.gf, ptr %i.ge, align 4, !tbaa !65
  %i.gg = add i32 %i.fw, 4
  store i32 %i.gg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.gh = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 16
  %i.gi = add i64 %.022.i.i.i, -4                 ; 2 uses
  %.not.i.i67.i.3 = icmp eq i64 %i.gi, 0
  br i1 %.not.i.i67.i.3, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i66.i, !llvm.loop !10

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i66.i.prol.loopexit, %.lr.ph.i.i66.i, %middle.block143
  %i.gj = trunc i64 %i.a to i16
  %i.gk = add i16 %i.m, %i.gj
  store i16 %i.gk, ptr %i.l, align 2, !tbaa !73
  br label %bb.n

bb.l:                                             ; preds = %bb.h
  %.not61 = icmp ugt i64 %i.a, %i.at
  br i1 %.not61, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i74 = icmp samesign ult i64 %i.ca, %i.a
  %i.gl = sub nsw i64 0, %i.a                     ; 2 uses
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.gl ; 3 uses
  br i1 %.not.i74, label %.lr.ph.i48.i92, label %.lr.ph.i.i76.preheader

.lr.ph.i.i76.preheader:                           ; preds = %bb.m
  %.neg232 = add i64 %5, 1
  %xtraiter217 = and i64 %i.a, 1
  %i.gn = icmp eq i64 %3, %.neg232
  br i1 %i.gn, label %.lr.ph.i.i76.epil.preheader, label %.lr.ph.i.i76.preheader.new

.lr.ph.i.i76.preheader.new:                       ; preds = %.lr.ph.i.i76.preheader
  %unroll_iter = and i64 %i.a, -2
  br label %.lr.ph.i.i76

.lr.ph.i.i76:                                     ; preds = %.lr.ph.i.i76, %.lr.ph.i.i76.preheader.new
  %indvar = phi i64 [ 0, %.lr.ph.i.i76.preheader.new ], [ %indvar.next.1, %.lr.ph.i.i76 ] ; 2 uses
  %.0919.i.i = phi ptr [ %i.au, %.lr.ph.i.i76.preheader.new ], [ %i.gw, %.lr.ph.i.i76 ] ; 4 uses
  %.01618.i.i78 = phi ptr [ %i.gm, %.lr.ph.i.i76.preheader.new ], [ %i.gx, %.lr.ph.i.i76 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i76.preheader.new ], [ %niter.next.1, %.lr.ph.i.i76 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i78) ]
  %i.go = load i32, ptr %.0919.i.i, align 4, !tbaa !65
  store i32 %i.go, ptr %.01618.i.i78, align 4, !tbaa !65
  store i32 0, ptr %.0919.i.i, align 4, !tbaa !65
  %i.gp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.gq = add i32 %i.gp, 1
  store i32 %i.gq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.gr = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 4 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.01618.i.i78, i64 4
  %i.gt = load i32, ptr %i.gr, align 4, !tbaa !65
  store i32 %i.gt, ptr %i.gs, align 4, !tbaa !65
  store i32 0, ptr %i.gr, align 4, !tbaa !65
  %i.gu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.gv = add i32 %i.gu, 1
  store i32 %i.gv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.gw = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 8 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.01618.i.i78, i64 8 ; 2 uses
  %indvar.next.1 = add i64 %indvar, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, label %.lr.ph.i.i76, !llvm.loop !11

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i76
  %indvar.next = or disjoint i64 %indvar, 1
  %lcmp.mod218.not = icmp eq i64 %xtraiter217, 0
  br i1 %lcmp.mod218.not, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i76.epil.preheader

.lr.ph.i.i76.epil.preheader:                      ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, %.lr.ph.i.i76.preheader
  %indvar.epil.init = phi i64 [ 0, %.lr.ph.i.i76.preheader ], [ %indvar.next.1, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ]
  %.0919.i.i.epil.init = phi ptr [ %i.au, %.lr.ph.i.i76.preheader ], [ %i.gw, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ] ; 3 uses
  %.01618.i.i78.epil.init = phi ptr [ %i.gm, %.lr.ph.i.i76.preheader ], [ %i.gx, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod221 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod221)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i78.epil.init) ]
  %i.gy = load i32, ptr %.0919.i.i.epil.init, align 4, !tbaa !65
  store i32 %i.gy, ptr %.01618.i.i78.epil.init, align 4, !tbaa !65
  store i32 0, ptr %.0919.i.i.epil.init, align 4, !tbaa !65
  %i.gz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ha = add i32 %i.gz, 1
  store i32 %i.ha, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.hb = getelementptr inbounds nuw i8, ptr %.0919.i.i.epil.init, i64 4
  br label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i: ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, %.lr.ph.i.i76.epil.preheader
  %indvar.lcssa = phi i64 [ %indvar.next, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ], [ %indvar.epil.init, %.lr.ph.i.i76.epil.preheader ]
  %.lcssa212 = phi ptr [ %i.gw, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ], [ %i.hb, %.lr.ph.i.i76.epil.preheader ] ; 6 uses
  %.not8.i.i80 = icmp eq ptr %.lcssa212, %1
  br i1 %.not8.i.i80, label %.lr.ph.preheader.i.i.i85, label %.lr.ph.i40.i81.preheader

.lr.ph.i40.i81.preheader:                         ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %i.hc = shl i64 %5, 2
  %i.hd = add i64 %3, %i.at                       ; 2 uses
  %i.he = shl i64 %i.hd, 2
  %i.hf = add i64 %i.hc, %i.bx
  %i.hg = add i64 %i.hf, -4
  %i.hh = add i64 %i.he, %i.c
  %i.hi = sub i64 %i.hg, %i.hh                    ; 2 uses
  %i.hj = lshr i64 %i.hi, 2
  %i.hk = add nuw nsw i64 %i.hj, 1                ; 2 uses
  %min.iters.check167 = icmp ult i64 %i.hi, 172
  br i1 %min.iters.check167, label %.lr.ph.i40.i81.preheader210, label %vector.memcheck161

vector.memcheck161:                               ; preds = %.lr.ph.i40.i81.preheader
  %i.hl = shl i64 %5, 2
  %6 = shl i64 %i.hd, 2
  %i.hm = add i64 %i.hl, %i.bx
  %i.hn = add i64 %i.hm, -4
  %i.ho = add i64 %6, %i.c
  %i.hp = sub i64 %i.hn, %i.ho
  %i.hq = and i64 %i.hp, -4
  %i.hr = shl nuw nsw i64 %i.at, 2
  %i.hs = add i64 %i.hq, %i.hr                    ; 2 uses
  %i.ht = getelementptr i8, ptr %i.b, i64 %i.hs
  %scevgep = getelementptr i8, ptr %i.ht, i64 4
  %i.hu = shl nuw nsw i64 %indvar.lcssa, 2
  %i.hv = getelementptr i8, ptr %i.b, i64 %i.hs
  %i.hw = getelementptr i8, ptr %i.hv, i64 8
  %scevgep162 = getelementptr i8, ptr %i.hw, i64 %i.hu
  %bound0163 = icmp ult ptr %i.au, %scevgep162
  %bound1164 = icmp ult ptr %.lcssa212, %scevgep
  %found.conflict165 = and i1 %bound0163, %bound1164
  br i1 %found.conflict165, label %.lr.ph.i40.i81.preheader210, label %vector.ph168

vector.ph168:                                     ; preds = %vector.memcheck161
  %n.vec169 = and i64 %i.hk, 9223372036854775800  ; 3 uses
  %i.hx = shl i64 %n.vec169, 2                    ; 2 uses
  %i.hy = getelementptr i8, ptr %i.au, i64 %i.hx  ; 2 uses
  %i.hz = getelementptr i8, ptr %.lcssa212, i64 %i.hx
  br label %vector.body170

vector.body170:                                   ; preds = %vector.body170, %vector.ph168
  %index171 = phi i64 [ 0, %vector.ph168 ], [ %index.next176, %vector.body170 ] ; 2 uses
  %i.ia = shl i64 %index171, 2                    ; 2 uses
  %next.gep172 = getelementptr i8, ptr %i.au, i64 %i.ia ; 2 uses
  %next.gep173 = getelementptr i8, ptr %.lcssa212, i64 %i.ia ; 3 uses
  %i.ib = getelementptr i8, ptr %next.gep173, i64 16 ; 2 uses
  %wide.load174 = load <4 x i32>, ptr %next.gep173, align 4, !tbaa !65, !alias.scope !162
  %wide.load175 = load <4 x i32>, ptr %i.ib, align 4, !tbaa !65, !alias.scope !162
  %i.ic = getelementptr i8, ptr %next.gep172, i64 16
  store <4 x i32> %wide.load174, ptr %next.gep172, align 4, !tbaa !65, !alias.scope !163, !noalias !162
  store <4 x i32> %wide.load175, ptr %i.ic, align 4, !tbaa !65, !alias.scope !163, !noalias !162
  store <4 x i32> zeroinitializer, ptr %next.gep173, align 4, !tbaa !65, !alias.scope !162
  store <4 x i32> zeroinitializer, ptr %i.ib, align 4, !tbaa !65, !alias.scope !162
  %index.next176 = add nuw i64 %index171, 8       ; 2 uses
  %i.id = icmp eq i64 %index.next176, %n.vec169
  br i1 %i.id, label %middle.block177, label %vector.body170, !llvm.loop !153

middle.block177:                                  ; preds = %vector.body170
  %cmp.n178 = icmp eq i64 %i.hk, %n.vec169
  br i1 %cmp.n178, label %.lr.ph.preheader.i.i.i85, label %.lr.ph.i40.i81.preheader210

.lr.ph.i40.i81.preheader210:                      ; preds = %vector.memcheck161, %.lr.ph.i40.i81.preheader, %middle.block177
  %.010.i.i82.ph = phi ptr [ %i.au, %vector.memcheck161 ], [ %i.au, %.lr.ph.i40.i81.preheader ], [ %i.hy, %middle.block177 ]
  %.079.i.i83.ph = phi ptr [ %.lcssa212, %vector.memcheck161 ], [ %.lcssa212, %.lr.ph.i40.i81.preheader ], [ %i.hz, %middle.block177 ]
  br label %.lr.ph.i40.i81

.lr.ph.i40.i81:                                   ; preds = %.lr.ph.i40.i81.preheader210, %.lr.ph.i40.i81
  %.010.i.i82 = phi ptr [ %i.ig, %.lr.ph.i40.i81 ], [ %.010.i.i82.ph, %.lr.ph.i40.i81.preheader210 ] ; 2 uses
  %.079.i.i83 = phi ptr [ %i.if, %.lr.ph.i40.i81 ], [ %.079.i.i83.ph, %.lr.ph.i40.i81.preheader210 ] ; 3 uses
  %i.ie = load i32, ptr %.079.i.i83, align 4, !tbaa !65
  store i32 %i.ie, ptr %.010.i.i82, align 4, !tbaa !65
  store i32 0, ptr %.079.i.i83, align 4, !tbaa !65
  %i.if = getelementptr inbounds nuw i8, ptr %.079.i.i83, i64 4 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.010.i.i82, i64 4 ; 2 uses
  %.not.i41.i84 = icmp eq ptr %i.if, %1
  br i1 %.not.i41.i84, label %.lr.ph.preheader.i.i.i85, label %.lr.ph.i40.i81, !llvm.loop !154

.lr.ph.preheader.i.i.i85:                         ; preds = %.lr.ph.i40.i81, %middle.block177, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %.0.lcssa.i.i = phi ptr [ %i.au, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i ], [ %i.hy, %middle.block177 ], [ %i.ig, %.lr.ph.i40.i81 ] ; 3 uses
  %.pre.i.i.i86 = load i32, ptr %2, align 4, !tbaa !65 ; 2 uses
  %min.iters.check182 = icmp ult i64 %i.a, 8
  br i1 %min.iters.check182, label %.lr.ph.i.i.i87.preheader, label %vector.ph183

vector.ph183:                                     ; preds = %.lr.ph.preheader.i.i.i85
  %n.vec184 = and i64 %i.a, -8                    ; 3 uses
  %i.ih = and i64 %i.a, 7
  %i.ii = shl i64 %n.vec184, 2
  %i.ij = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.ii
  %broadcast.splatinsert185 = insertelement <4 x i32> poison, i32 %.pre.i.i.i86, i64 0
  %broadcast.splat186 = shufflevector <4 x i32> %broadcast.splatinsert185, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body187

vector.body187:                                   ; preds = %vector.body187, %vector.ph183
  %index188 = phi i64 [ 0, %vector.ph183 ], [ %index.next190, %vector.body187 ] ; 2 uses
  %i.ik = shl i64 %index188, 2
  %next.gep189 = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.ik ; 2 uses
  %i.il = getelementptr i8, ptr %next.gep189, i64 16
  store <4 x i32> %broadcast.splat186, ptr %next.gep189, align 4, !tbaa !65
  store <4 x i32> %broadcast.splat186, ptr %i.il, align 4, !tbaa !65
  %index.next190 = add nuw i64 %index188, 8       ; 2 uses
  %i.im = icmp eq i64 %index.next190, %n.vec184
  br i1 %i.im, label %middle.block191, label %vector.body187, !llvm.loop !155

middle.block191:                                  ; preds = %vector.body187
  %cmp.n192 = icmp eq i64 %i.a, %n.vec184
  br i1 %cmp.n192, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i87.preheader

.lr.ph.i.i.i87.preheader:                         ; preds = %.lr.ph.preheader.i.i.i85, %middle.block191
  %.012.i.i.i88.ph = phi i64 [ %i.a, %.lr.ph.preheader.i.i.i85 ], [ %i.ih, %middle.block191 ]
  %.0511.i.i.i89.ph = phi ptr [ %.0.lcssa.i.i, %.lr.ph.preheader.i.i.i85 ], [ %i.ij, %middle.block191 ]
  br label %.lr.ph.i.i.i87

.lr.ph.i.i.i87:                                   ; preds = %.lr.ph.i.i.i87.preheader, %.lr.ph.i.i.i87
  %.012.i.i.i88 = phi i64 [ %i.in, %.lr.ph.i.i.i87 ], [ %.012.i.i.i88.ph, %.lr.ph.i.i.i87.preheader ]
  %.0511.i.i.i89 = phi ptr [ %i.io, %.lr.ph.i.i.i87 ], [ %.0511.i.i.i89.ph, %.lr.ph.i.i.i87.preheader ] ; 2 uses
  %i.in = add nsw i64 %.012.i.i.i88, -1           ; 2 uses
  store i32 %.pre.i.i.i86, ptr %.0511.i.i.i89, align 4, !tbaa !65
  %i.io = getelementptr inbounds nuw i8, ptr %.0511.i.i.i89, i64 4
  %.not.i.i.i90 = icmp eq i64 %i.in, 0
  br i1 %.not.i.i.i90, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i87, !llvm.loop !156

.lr.ph.i48.i92:                                   ; preds = %bb.m, %.lr.ph.i48.i92
  %.018.i.i93 = phi ptr [ %i.is, %.lr.ph.i48.i92 ], [ %i.au, %bb.m ] ; 3 uses
  %.01517.i.i94 = phi ptr [ %i.it, %.lr.ph.i48.i92 ], [ %i.gm, %bb.m ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i94) ]
  %i.ip = load i32, ptr %.018.i.i93, align 4, !tbaa !65
  store i32 %i.ip, ptr %.01517.i.i94, align 4, !tbaa !65
  store i32 0, ptr %.018.i.i93, align 4, !tbaa !65
  %i.iq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ir = add i32 %i.iq, 1
  store i32 %i.ir, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.is = getelementptr inbounds nuw i8, ptr %.018.i.i93, i64 4 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.01517.i.i94, i64 4 ; 3 uses
  %.not.i49.i95 = icmp eq ptr %i.is, %1
  br i1 %.not.i49.i95, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, label %.lr.ph.i48.i92, !llvm.loop !8

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i: ; preds = %.lr.ph.i48.i92
  %i.iu = sub i64 %i.a, %i.ca                     ; 3 uses
  %xtraiter222 = and i64 %i.iu, 3                 ; 2 uses
  %lcmp.mod223.not = icmp eq i64 %xtraiter222, 0
  br i1 %lcmp.mod223.not, label %.lr.ph.i.i53.i.prol.loopexit, label %.lr.ph.i.i53.i.prol

.lr.ph.i.i53.i.prol:                              ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, %.lr.ph.i.i53.i.prol
  %.022.i.i.i96.prol = phi i64 [ %i.iz, %.lr.ph.i.i53.i.prol ], [ %i.iu, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ]
  %.01821.i.i.i97.prol = phi ptr [ %i.iy, %.lr.ph.i.i53.i.prol ], [ %i.it, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ] ; 2 uses
  %prol.iter224 = phi i64 [ %prol.iter224.next, %.lr.ph.i.i53.i.prol ], [ 0, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ]
  %i.iv = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.iv, ptr %.01821.i.i.i97.prol, align 4, !tbaa !65
  %i.iw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ix = add i32 %i.iw, 1
  store i32 %i.ix, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.iy = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97.prol, i64 4 ; 2 uses
  %i.iz = add nsw i64 %.022.i.i.i96.prol, -1      ; 2 uses
  %prol.iter224.next = add i64 %prol.iter224, 1   ; 2 uses
  %prol.iter224.cmp.not = icmp eq i64 %prol.iter224.next, %xtraiter222
  br i1 %prol.iter224.cmp.not, label %.lr.ph.i.i53.i.prol.loopexit, label %.lr.ph.i.i53.i.prol, !llvm.loop !157

.lr.ph.i.i53.i.prol.loopexit:                     ; preds = %.lr.ph.i.i53.i.prol, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %.022.i.i.i96.unr = phi i64 [ %i.iu, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.iz, %.lr.ph.i.i53.i.prol ]
  %.01821.i.i.i97.unr = phi ptr [ %i.it, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.iy, %.lr.ph.i.i53.i.prol ]
  %i.ja = sub i64 %i.ca, %3
  %i.jb = add i64 %i.ja, %5
  %i.jc = icmp ugt i64 %i.jb, -4
  br i1 %i.jc, label %.lr.ph.preheader.i.i61.i, label %.lr.ph.i.i53.i

.lr.ph.i.i53.i:                                   ; preds = %.lr.ph.i.i53.i.prol.loopexit, %.lr.ph.i.i53.i
  %.022.i.i.i96 = phi i64 [ %i.jq, %.lr.ph.i.i53.i ], [ %.022.i.i.i96.unr, %.lr.ph.i.i53.i.prol.loopexit ]
  %.01821.i.i.i97 = phi ptr [ %i.jp, %.lr.ph.i.i53.i ], [ %.01821.i.i.i97.unr, %.lr.ph.i.i53.i.prol.loopexit ] ; 5 uses
  %i.jd = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.jd, ptr %.01821.i.i.i97, align 4, !tbaa !65
  %i.je = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66 ; 4 uses
  %i.jf = add i32 %i.je, 1
  store i32 %i.jf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.jg = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 4
  %i.jh = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.jh, ptr %i.jg, align 4, !tbaa !65
  %i.ji = add i32 %i.je, 2
  store i32 %i.ji, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.jj = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 8
  %i.jk = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.jk, ptr %i.jj, align 4, !tbaa !65
  %i.jl = add i32 %i.je, 3
  store i32 %i.jl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.jm = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 12
  %i.jn = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.jn, ptr %i.jm, align 4, !tbaa !65
  %i.jo = add i32 %i.je, 4
  store i32 %i.jo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.jp = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 16
  %i.jq = add nsw i64 %.022.i.i.i96, -4           ; 2 uses
  %.not.i.i54.i.3 = icmp eq i64 %i.jq, 0
  br i1 %.not.i.i54.i.3, label %.lr.ph.preheader.i.i61.i, label %.lr.ph.i.i53.i, !llvm.loop !10

.lr.ph.preheader.i.i61.i:                         ; preds = %.lr.ph.i.i53.i, %.lr.ph.i.i53.i.prol.loopexit
  %.pre.i.i62.i = load i32, ptr %2, align 4, !tbaa !65 ; 2 uses
  %min.iters.check196 = icmp ult i64 %i.ca, 8
  br i1 %min.iters.check196, label %.lr.ph.i.i63.i.preheader, label %vector.ph197

vector.ph197:                                     ; preds = %.lr.ph.preheader.i.i61.i
  %n.vec198 = and i64 %i.ca, -8                   ; 3 uses
  %i.jr = and i64 %i.ca, 7
  %i.js = shl nsw i64 %n.vec198, 2
  %i.jt = getelementptr i8, ptr %i.au, i64 %i.js
  %broadcast.splatinsert199 = insertelement <4 x i32> poison, i32 %.pre.i.i62.i, i64 0
  %broadcast.splat200 = shufflevector <4 x i32> %broadcast.splatinsert199, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body201

vector.body201:                                   ; preds = %vector.body201, %vector.ph197
  %index202 = phi i64 [ 0, %vector.ph197 ], [ %index.next204, %vector.body201 ] ; 2 uses
  %i.ju = shl i64 %index202, 2
  %next.gep203 = getelementptr i8, ptr %i.au, i64 %i.ju ; 2 uses
  %i.jv = getelementptr i8, ptr %next.gep203, i64 16
  store <4 x i32> %broadcast.splat200, ptr %next.gep203, align 4, !tbaa !65
  store <4 x i32> %broadcast.splat200, ptr %i.jv, align 4, !tbaa !65
  %index.next204 = add nuw i64 %index202, 8       ; 2 uses
  %i.jw = icmp eq i64 %index.next204, %n.vec198
  br i1 %i.jw, label %middle.block205, label %vector.body201, !llvm.loop !158

middle.block205:                                  ; preds = %vector.body201
  %cmp.n206 = icmp eq i64 %i.ca, %n.vec198
  br i1 %cmp.n206, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i63.i.preheader

.lr.ph.i.i63.i.preheader:                         ; preds = %.lr.ph.preheader.i.i61.i, %middle.block205
  %.012.i.i64.i.ph = phi i64 [ %i.ca, %.lr.ph.preheader.i.i61.i ], [ %i.jr, %middle.block205 ]
  %.0511.i.i65.i.ph = phi ptr [ %i.au, %.lr.ph.preheader.i.i61.i ], [ %i.jt, %middle.block205 ]
  br label %.lr.ph.i.i63.i

.lr.ph.i.i63.i:                                   ; preds = %.lr.ph.i.i63.i.preheader, %.lr.ph.i.i63.i
end_hunk_1
begin_hunk_2_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEEvT0_mSC_SC_mT1_RT_:bb.a
vector.ph336:                                     ; preds = %vector.memcheck332
  %n.vec337 = and i64 %i.hh, 9223372036854775800  ; 3 uses
  %i.ia = mul i64 %n.vec337, -4                   ; 2 uses
  %i.ib = getelementptr i8, ptr %i.c, i64 %i.ia   ; 2 uses
  %i.ic = getelementptr i8, ptr %i.ge, i64 %i.ia
  br label %vector.body338

vector.body338:                                   ; preds = %vector.body338, %vector.ph336
  %index339 = phi i64 [ 0, %vector.ph336 ], [ %index.next344, %vector.body338 ] ; 2 uses
  %i.id = mul i64 %index339, -4                   ; 2 uses
  %next.gep340 = getelementptr i8, ptr %i.c, i64 %i.id ; 2 uses
  %next.gep341 = getelementptr i8, ptr %i.ge, i64 %i.id ; 2 uses
  %i.ie = getelementptr inbounds i8, ptr %next.gep341, i64 -16 ; 2 uses
  %i.if = getelementptr inbounds i8, ptr %next.gep341, i64 -32 ; 2 uses
  %wide.load342 = load <4 x i32>, ptr %i.ie, align 4, !tbaa !65, !alias.scope !429
  %wide.load343 = load <4 x i32>, ptr %i.if, align 4, !tbaa !65, !alias.scope !429
  %i.ig = getelementptr inbounds i8, ptr %next.gep340, i64 -16
  %i.ih = getelementptr inbounds i8, ptr %next.gep340, i64 -32
  store <4 x i32> %wide.load342, ptr %i.ig, align 4, !tbaa !65, !alias.scope !430, !noalias !429
  store <4 x i32> %wide.load343, ptr %i.ih, align 4, !tbaa !65, !alias.scope !430, !noalias !429
  store <4 x i32> zeroinitializer, ptr %i.ie, align 4, !tbaa !65, !alias.scope !429
  store <4 x i32> zeroinitializer, ptr %i.if, align 4, !tbaa !65, !alias.scope !429
  %index.next344 = add nuw i64 %index339, 8       ; 2 uses
  %i.ii = icmp eq i64 %index.next344, %n.vec337
  br i1 %i.ii, label %middle.block345, label %vector.body338, !llvm.loop !416

middle.block345:                                  ; preds = %vector.body338
  %cmp.n346 = icmp eq i64 %i.hh, %n.vec337
  br i1 %cmp.n346, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit217, label %.lr.ph.i.i213.preheader427

.lr.ph.i.i213.preheader427:                       ; preds = %vector.memcheck332, %.lr.ph.i.i213.preheader, %middle.block345
  %.010.i.i214.ph = phi ptr [ %i.c, %vector.memcheck332 ], [ %i.c, %.lr.ph.i.i213.preheader ], [ %i.ib, %middle.block345 ]
  %.079.i.i215.ph = phi ptr [ %i.ge, %vector.memcheck332 ], [ %i.ge, %.lr.ph.i.i213.preheader ], [ %i.ic, %middle.block345 ]
  br label %.lr.ph.i.i213

.lr.ph.i.i213:                                    ; preds = %.lr.ph.i.i213.preheader427, %.lr.ph.i.i213
  %.010.i.i214 = phi ptr [ %i.ik, %.lr.ph.i.i213 ], [ %.010.i.i214.ph, %.lr.ph.i.i213.preheader427 ]
  %.079.i.i215 = phi ptr [ %i.ij, %.lr.ph.i.i213 ], [ %.079.i.i215.ph, %.lr.ph.i.i213.preheader427 ]
  %i.ij = getelementptr inbounds i8, ptr %.079.i.i215, i64 -4 ; 4 uses
  %i.ik = getelementptr inbounds i8, ptr %.010.i.i214, i64 -4 ; 3 uses
  %i.il = load i32, ptr %i.ij, align 4, !tbaa !65
  store i32 %i.il, ptr %i.ik, align 4, !tbaa !65
  store i32 0, ptr %i.ij, align 4, !tbaa !65
  %.not.i.i216 = icmp eq ptr %3, %i.ij
  br i1 %.not.i.i216, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit217, label %.lr.ph.i.i213, !llvm.loop !417

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit217: ; preds = %.lr.ph.i.i213, %middle.block345, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit210
  %i.im = phi ptr [ %3, %bb.h ], [ %i.c, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit210 ], [ %i.ib, %middle.block345 ], [ %i.ik, %.lr.ph.i.i213 ] ; 2 uses
  %i.in = sub i64 0, %4
  %i.io = getelementptr [4 x i8], ptr %i.im, i64 %i.in ; 10 uses
  %.not9.i.i221 = icmp eq i64 %4, 0
  br i1 %.not9.i.i221, label %._crit_edge.loopexit.i.i228, label %.lr.ph.preheader.i.i222

.lr.ph.preheader.i.i222:                          ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit217
  %.sroa.0.0.copyload.i218 = load ptr, ptr %5, align 8
  %.pre.i.i223 = load i32, ptr %.sroa.0.0.copyload.i218, align 4, !tbaa !65 ; 2 uses
  %min.iters.check350 = icmp ult i64 %4, 8
  br i1 %min.iters.check350, label %.lr.ph.i.i224.preheader, label %vector.ph351

vector.ph351:                                     ; preds = %.lr.ph.preheader.i.i222
  %n.vec352 = and i64 %4, -8                      ; 3 uses
  %i.ip = and i64 %4, 7
  %i.iq = shl i64 %n.vec352, 2
  %i.ir = getelementptr i8, ptr %i.io, i64 %i.iq
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i223, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body353

vector.body353:                                   ; preds = %vector.body353, %vector.ph351
  %index354 = phi i64 [ 0, %vector.ph351 ], [ %index.next356, %vector.body353 ] ; 2 uses
  %i.is = shl i64 %index354, 2
  %next.gep355 = getelementptr i8, ptr %i.io, i64 %i.is ; 2 uses
  %i.it = getelementptr i8, ptr %next.gep355, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep355, align 4, !tbaa !65
  store <4 x i32> %broadcast.splat, ptr %i.it, align 4, !tbaa !65
  %index.next356 = add nuw i64 %index354, 8       ; 2 uses
  %i.iu = icmp eq i64 %index.next356, %n.vec352
  br i1 %i.iu, label %middle.block357, label %vector.body353, !llvm.loop !418

middle.block357:                                  ; preds = %vector.body353
  %cmp.n358 = icmp eq i64 %4, %n.vec352
  br i1 %cmp.n358, label %._crit_edge.loopexit.i.i228, label %.lr.ph.i.i224.preheader

.lr.ph.i.i224.preheader:                          ; preds = %.lr.ph.preheader.i.i222, %middle.block357
  %.012.i.i225.ph = phi i64 [ %4, %.lr.ph.preheader.i.i222 ], [ %i.ip, %middle.block357 ]
  %.0511.i.i226.ph = phi ptr [ %i.io, %.lr.ph.preheader.i.i222 ], [ %i.ir, %middle.block357 ]
  br label %.lr.ph.i.i224

.lr.ph.i.i224:                                    ; preds = %.lr.ph.i.i224.preheader, %.lr.ph.i.i224
  %.012.i.i225 = phi i64 [ %i.iv, %.lr.ph.i.i224 ], [ %.012.i.i225.ph, %.lr.ph.i.i224.preheader ]
  %.0511.i.i226 = phi ptr [ %i.iw, %.lr.ph.i.i224 ], [ %.0511.i.i226.ph, %.lr.ph.i.i224.preheader ] ; 2 uses
  %i.iv = add i64 %.012.i.i225, -1                ; 2 uses
  store i32 %.pre.i.i223, ptr %.0511.i.i226, align 4, !tbaa !65
  %i.iw = getelementptr inbounds nuw i8, ptr %.0511.i.i226, i64 4
  %.not.i.i227 = icmp eq i64 %i.iv, 0
  br i1 %.not.i.i227, label %._crit_edge.loopexit.i.i228, label %.lr.ph.i.i224, !llvm.loop !419

._crit_edge.loopexit.i.i228:                      ; preds = %.lr.ph.i.i224, %middle.block357, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit217
  %.not.i231 = icmp eq ptr %3, %i.io
  br i1 %.not.i231, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit153, label %bb.i

bb.i:                                             ; preds = %._crit_edge.loopexit.i.i228
  %.not8.i.i232 = icmp eq ptr %0, %3
  br i1 %.not8.i.i232, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit237, label %.lr.ph.i.i233.preheader

.lr.ph.i.i233.preheader:                          ; preds = %bb.i
  %i.ix = add i64 %i.g, -4
  %i.iy = sub i64 %i.ix, %i.b                     ; 3 uses
  %i.iz = lshr i64 %i.iy, 2
  %i.ja = add nuw nsw i64 %i.iz, 1                ; 2 uses
  %min.iters.check367 = icmp ult i64 %i.iy, 108
  br i1 %min.iters.check367, label %.lr.ph.i.i233.preheader425, label %vector.memcheck368

vector.memcheck368:                               ; preds = %.lr.ph.i.i233.preheader
  %i.jb = shl i64 %4, 2
  %i.jc = and i64 %i.iy, -4                       ; 2 uses
  %i.jd = add i64 %i.jb, %i.jc
  %i.je = sub nuw nsw i64 -4, %i.jd
  %i.jf = getelementptr i8, ptr %i.im, i64 %i.je
  %i.jg = sub nuw nsw i64 -4, %i.jc
  %i.jh = getelementptr i8, ptr %3, i64 %i.jg
  %bound0369 = icmp ult ptr %i.jf, %3
  %bound1370 = icmp ult ptr %i.jh, %i.io
  %found.conflict371 = and i1 %bound0369, %bound1370
  br i1 %found.conflict371, label %.lr.ph.i.i233.preheader425, label %vector.ph372

vector.ph372:                                     ; preds = %vector.memcheck368
  %n.vec373 = and i64 %i.ja, 9223372036854775800  ; 3 uses
  %i.ji = mul i64 %n.vec373, -4                   ; 2 uses
  %i.jj = getelementptr i8, ptr %i.io, i64 %i.ji  ; 2 uses
  %i.jk = getelementptr i8, ptr %3, i64 %i.ji
  br label %vector.body374

vector.body374:                                   ; preds = %vector.body374, %vector.ph372
  %index375 = phi i64 [ 0, %vector.ph372 ], [ %index.next380, %vector.body374 ] ; 2 uses
  %i.jl = mul i64 %index375, -4                   ; 2 uses
  %next.gep376 = getelementptr i8, ptr %i.io, i64 %i.jl ; 2 uses
  %next.gep377 = getelementptr i8, ptr %3, i64 %i.jl ; 2 uses
  %i.jm = getelementptr inbounds i8, ptr %next.gep377, i64 -16 ; 2 uses
  %i.jn = getelementptr inbounds i8, ptr %next.gep377, i64 -32 ; 2 uses
  %wide.load378 = load <4 x i32>, ptr %i.jm, align 4, !tbaa !65, !alias.scope !431
  %wide.load379 = load <4 x i32>, ptr %i.jn, align 4, !tbaa !65, !alias.scope !431
  %i.jo = getelementptr inbounds i8, ptr %next.gep376, i64 -16
  %i.jp = getelementptr inbounds i8, ptr %next.gep376, i64 -32
  store <4 x i32> %wide.load378, ptr %i.jo, align 4, !tbaa !65, !alias.scope !432, !noalias !431
  store <4 x i32> %wide.load379, ptr %i.jp, align 4, !tbaa !65, !alias.scope !432, !noalias !431
  store <4 x i32> zeroinitializer, ptr %i.jm, align 4, !tbaa !65, !alias.scope !431
  store <4 x i32> zeroinitializer, ptr %i.jn, align 4, !tbaa !65, !alias.scope !431
  %index.next380 = add nuw i64 %index375, 8       ; 2 uses
  %i.jq = icmp eq i64 %index.next380, %n.vec373
  br i1 %i.jq, label %middle.block381, label %vector.body374, !llvm.loop !423

middle.block381:                                  ; preds = %vector.body374
  %cmp.n382 = icmp eq i64 %i.ja, %n.vec373
  br i1 %cmp.n382, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit237, label %.lr.ph.i.i233.preheader425

.lr.ph.i.i233.preheader425:                       ; preds = %vector.memcheck368, %.lr.ph.i.i233.preheader, %middle.block381
  %.010.i.i234.ph = phi ptr [ %i.io, %vector.memcheck368 ], [ %i.io, %.lr.ph.i.i233.preheader ], [ %i.jj, %middle.block381 ]
  %.079.i.i235.ph = phi ptr [ %3, %vector.memcheck368 ], [ %3, %.lr.ph.i.i233.preheader ], [ %i.jk, %middle.block381 ]
  br label %.lr.ph.i.i233

.lr.ph.i.i233:                                    ; preds = %.lr.ph.i.i233.preheader425, %.lr.ph.i.i233
  %.010.i.i234 = phi ptr [ %i.js, %.lr.ph.i.i233 ], [ %.010.i.i234.ph, %.lr.ph.i.i233.preheader425 ]
  %.079.i.i235 = phi ptr [ %i.jr, %.lr.ph.i.i233 ], [ %.079.i.i235.ph, %.lr.ph.i.i233.preheader425 ]
  %i.jr = getelementptr inbounds i8, ptr %.079.i.i235, i64 -4 ; 4 uses
  %i.js = getelementptr inbounds i8, ptr %.010.i.i234, i64 -4 ; 3 uses
  %i.jt = load i32, ptr %i.jr, align 4, !tbaa !65
  store i32 %i.jt, ptr %i.js, align 4, !tbaa !65
  store i32 0, ptr %i.jr, align 4, !tbaa !65
  %.not.i.i236 = icmp eq ptr %0, %i.jr
  br i1 %.not.i.i236, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit237, label %.lr.ph.i.i233, !llvm.loop !424

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit237: ; preds = %.lr.ph.i.i233, %middle.block381, %bb.i
  %i.ju = phi ptr [ %i.io, %bb.i ], [ %i.jj, %middle.block381 ], [ %i.js, %.lr.ph.i.i233 ] ; 2 uses
  %.not3.i238 = icmp eq ptr %0, %i.ju
  br i1 %.not3.i238, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit153, label %.lr.ph.i239

.lr.ph.i239:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit237, %.lr.ph.i239
  %storemerge4.i240 = phi ptr [ %i.jx, %.lr.ph.i239 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit237 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i240, align 4, !tbaa !65
  %i.jv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.jw = add i32 %i.jv, -1
  store i32 %i.jw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.jx = getelementptr inbounds nuw i8, ptr %storemerge4.i240, i64 4 ; 2 uses
  %.not.i241 = icmp eq ptr %i.jx, %i.ju
  br i1 %.not.i241, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit153, label %.lr.ph.i239, !llvm.loop !16

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit153: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i142, %.lr.ph.i239, %.lr.ph.i191, %._crit_edge.loopexit.i.i228, %._crit_edge.loopexit.i.i180, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit237, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit189, %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE12insert_rangeIPKS3_EEPS3_SB_T_SD_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64                   ; 5 uses
  %i.c = sub i64 %i.a, %i.b                       ; 11 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 32 uses
  %.not = icmp eq ptr %3, %2
  %i.e = load ptr, ptr %0, align 8, !tbaa !62     ; 10 uses
  %i.f = ptrtoaddr ptr %i.e to i64                ; 4 uses
  br i1 %.not, label %bb.b, label %bb.c, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i16, ptr %i.g, align 8, !tbaa !63
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.i ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.m
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !69   ; 3 uses
  %i.q = zext i16 %i.p to i64                     ; 6 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.q ; 16 uses
  %i.s = icmp eq ptr %1, %i.r
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.u = load i16, ptr %i.t, align 4, !tbaa !70
  %i.v = zext i16 %i.u to i64
  %i.w = sub nsw i64 %i.v, %i.q
  %.not48 = icmp ult i64 %i.w, %i.d
  br i1 %.not48, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.018.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %2, %bb.d ] ; 2 uses
  %.01517.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %i.r, %bb.d ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.x = load i32, ptr %.018.i, align 4, !tbaa !65
  store i32 %i.x, ptr %.01517.i, align 4, !tbaa !65
  %i.y = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.aa = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  %.not.i = icmp eq ptr %i.aa, %3
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.lr.ph.i, !llvm.loop !1

_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit: ; preds = %.lr.ph.i
  %i.ac = trunc i64 %i.d to i16
  %i.ad = add i16 %i.p, %i.ac
  store i16 %i.ad, ptr %i.o, align 2, !tbaa !73
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.af = load i16, ptr %i.ae, align 8, !tbaa !63 ; 3 uses
  %i.ag = zext i16 %i.af to i64                   ; 7 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ag ; 17 uses
  %i.ai = icmp eq ptr %1, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not47 = icmp ugt i64 %i.d, %i.ag
  br i1 %.not47, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = sub nsw i64 0, %i.d
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.aj
  br label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %bb.g, %.lr.ph.i50
  %.018.i51 = phi ptr [ %i.ao, %.lr.ph.i50 ], [ %2, %bb.g ] ; 2 uses
  %.01517.i52 = phi ptr [ %i.ap, %.lr.ph.i50 ], [ %i.ak, %bb.g ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i52) ]
  %i.al = load i32, ptr %.018.i51, align 4, !tbaa !65
  store i32 %i.al, ptr %.01517.i52, align 4, !tbaa !65
  %i.am = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ao = getelementptr inbounds nuw i8, ptr %.018.i51, i64 4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01517.i52, i64 4
  %.not.i53 = icmp eq ptr %i.ao, %3
  br i1 %.not.i53, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit55, label %.lr.ph.i50, !llvm.loop !1

_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit55: ; preds = %.lr.ph.i50
  %i.aq = trunc nuw i64 %i.d to i16
  %i.ar = sub i16 %i.af, %i.aq                    ; 2 uses
  store i16 %i.ar, ptr %i.ae, align 8, !tbaa !81
  %i.as = zext i16 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.as
  br label %bb.n

bb.h:                                             ; preds = %bb.e
  %i.au = ptrtoint ptr %1 to i64                  ; 7 uses
  %i.av = ptrtoint ptr %i.ah to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 2                 ; 10 uses
  %i.ay = sub nsw i64 %i.q, %i.ag
  %i.az = lshr i64 %i.ay, 1
  %.not85 = icmp ult i64 %i.ax, %i.az
  br i1 %.not85, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bb = load i16, ptr %i.ba, align 4, !tbaa !70
  %i.bc = zext i16 %i.bb to i64
  %i.bd = sub nsw i64 %i.bc, %i.q
  %.not46 = icmp ult i64 %i.bd, %i.d
  br i1 %.not46, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = ptrtoint ptr %i.r to i64
  %i.bf = sub i64 %i.be, %i.au
  %i.bg = ashr exact i64 %i.bf, 2                 ; 8 uses
  %.not.i56 = icmp ult i64 %i.bg, %i.d
  br i1 %.not.i56, label %.lr.ph.i48.preheader.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = sub nsw i64 0, %i.d
  %i.bi = getelementptr [4 x i8], ptr %i.r, i64 %i.bh ; 10 uses
  %i.bj = and i64 %i.c, 4
  %lcmp.mod.not = icmp eq i64 %i.bj, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %bb.k
  %i.bk = add nsw i64 %i.d, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.bl = load i32, ptr %i.bi, align 4, !tbaa !65
  store i32 %i.bl, ptr %i.r, align 4, !tbaa !65
  store i32 0, ptr %i.bi, align 4, !tbaa !65
  %i.bm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %bb.k
  %.020.i.i.unr = phi i64 [ %i.d, %bb.k ], [ %i.bk, %.lr.ph.i.i.prol ]
  %.0819.i.i.unr = phi ptr [ %i.bi, %bb.k ], [ %i.bo, %.lr.ph.i.i.prol ]
  %.01618.i.i.unr = phi ptr [ %i.r, %bb.k ], [ %i.bp, %.lr.ph.i.i.prol ]
  %i.bq = icmp eq i64 %i.c, 4
  br i1 %i.bq, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.020.i.i = phi i64 [ %i.bw, %.lr.ph.i.i ], [ %.020.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.0819.i.i = phi ptr [ %i.ca, %.lr.ph.i.i ], [ %.0819.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i = phi ptr [ %i.cb, %.lr.ph.i.i ], [ %.01618.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i) ]
  %i.br = load i32, ptr %.0819.i.i, align 4, !tbaa !65
  store i32 %i.br, ptr %.01618.i.i, align 4, !tbaa !65
  store i32 0, ptr %.0819.i.i, align 4, !tbaa !65
  %i.bs = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bu = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 4 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 4
  %i.bw = add i64 %.020.i.i, -2                   ; 2 uses
  %i.bx = load i32, ptr %i.bu, align 4, !tbaa !65
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !65
  store i32 0, ptr %i.bu, align 4, !tbaa !65
  %i.by = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ca = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 8
  %.not.i.i.1 = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i, !llvm.loop !9

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.not8.i.i = icmp eq ptr %1, %i.bi
  br i1 %.not8.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %.lr.ph.i40.i.preheader

.lr.ph.i40.i.preheader:                           ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i
  %i.cc = shl nuw nsw i64 %i.q, 2
  %i.cd = add i64 %i.cc, %i.f
  %i.ce = add i64 %i.cd, -4
  %i.cf = add i64 %i.c, %i.au
  %i.cg = sub i64 %i.ce, %i.cf                    ; 2 uses
  %i.ch = lshr i64 %i.cg, 2
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cg, 140
  br i1 %min.iters.check, label %.lr.ph.i40.i.preheader237, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.preheader
  %i.cj = shl nuw nsw i64 %i.q, 2                 ; 2 uses
  %i.ck = add i64 %i.cj, %i.f
  %i.cl = add i64 %i.ck, -4
  %i.cm = add i64 %i.c, %i.au
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = and i64 %i.cn, -4                       ; 2 uses
  %i.cp = add nsw i64 %i.cj, -4                   ; 2 uses
  %i.cq = sub i64 %i.cp, %i.co
  %i.cr = getelementptr i8, ptr %i.e, i64 %i.cq
  %i.cs = add i64 %i.c, %i.co
  %i.ct = sub i64 %i.cp, %i.cs
  %i.cu = getelementptr i8, ptr %i.e, i64 %i.ct
  %bound0 = icmp ult ptr %i.cr, %i.bi
  %bound1 = icmp ult ptr %i.cu, %i.r
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.preheader237, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ci, 9223372036854775800     ; 3 uses
  %i.cv = mul i64 %n.vec, -4                      ; 2 uses
  %i.cw = getelementptr i8, ptr %i.r, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.bi, i64 %i.cv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cy = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.cy ; 2 uses
  %next.gep123 = getelementptr i8, ptr %i.bi, i64 %i.cy ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %next.gep123, i64 -16 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %next.gep123, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cz, align 4, !tbaa !65, !alias.scope !456
  %wide.load124 = load <4 x i32>, ptr %i.da, align 4, !tbaa !65, !alias.scope !456
  %i.db = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.dc = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.db, align 4, !tbaa !65, !alias.scope !457, !noalias !456
  store <4 x i32> %wide.load124, ptr %i.dc, align 4, !tbaa !65, !alias.scope !457, !noalias !456
  store <4 x i32> zeroinitializer, ptr %i.cz, align 4, !tbaa !65, !alias.scope !456
  store <4 x i32> zeroinitializer, ptr %i.da, align 4, !tbaa !65, !alias.scope !456
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !436

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ci, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %.lr.ph.i40.i.preheader237

.lr.ph.i40.i.preheader237:                        ; preds = %vector.memcheck, %.lr.ph.i40.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i40.i.preheader ], [ %i.cw, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.bi, %vector.memcheck ], [ %i.bi, %.lr.ph.i40.i.preheader ], [ %i.cx, %middle.block ]
  br label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %.lr.ph.i40.i.preheader237, %.lr.ph.i40.i
  %.010.i.i = phi ptr [ %i.df, %.lr.ph.i40.i ], [ %.010.i.i.ph, %.lr.ph.i40.i.preheader237 ]
  %.079.i.i = phi ptr [ %i.de, %.lr.ph.i40.i ], [ %.079.i.i.ph, %.lr.ph.i40.i.preheader237 ]
  %i.de = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 4 uses
  %i.df = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !65
  store i32 %i.dg, ptr %i.df, align 4, !tbaa !65
  store i32 0, ptr %i.de, align 4, !tbaa !65
  %.not.i41.i = icmp eq ptr %1, %i.de
  br i1 %.not.i41.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %.lr.ph.i40.i, !llvm.loop !437

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %.lr.ph.i40.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i
  %min.iters.check128 = icmp ult i64 %i.d, 8
  %i.dh = sub i64 %i.b, %i.au
  %diff.check = icmp ugt i64 %i.dh, -32
  %or.cond = or i1 %min.iters.check128, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.ph130

vector.ph130:                                     ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %n.vec131 = and i64 %i.d, -8                    ; 3 uses
  %i.di = shl nsw i64 %n.vec131, 2                ; 2 uses
  %i.dj = getelementptr i8, ptr %1, i64 %i.di
  %i.dk = and i64 %i.d, 7
  %i.dl = getelementptr i8, ptr %2, i64 %i.di
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph130
  %index133 = phi i64 [ 0, %vector.ph130 ], [ %index.next138, %vector.body132 ] ; 2 uses
  %i.dm = shl i64 %index133, 2                    ; 2 uses
  %next.gep134 = getelementptr i8, ptr %1, i64 %i.dm ; 2 uses
  %next.gep135 = getelementptr i8, ptr %2, i64 %i.dm ; 2 uses
  %i.dn = getelementptr i8, ptr %next.gep135, i64 16
  %wide.load136 = load <4 x i32>, ptr %next.gep135, align 4, !tbaa !65
  %wide.load137 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !65
  %i.do = getelementptr i8, ptr %next.gep134, i64 16
  store <4 x i32> %wide.load136, ptr %next.gep134, align 4, !tbaa !65
  store <4 x i32> %wide.load137, ptr %i.do, align 4, !tbaa !65
  %index.next138 = add nuw i64 %index133, 8       ; 2 uses
  %i.dp = icmp eq i64 %index.next138, %n.vec131
  br i1 %i.dp, label %middle.block139, label %vector.body132, !llvm.loop !438

middle.block139:                                  ; preds = %vector.body132
  %cmp.n140 = icmp eq i64 %i.d, %n.vec131
  br i1 %cmp.n140, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, %middle.block139
  %.011.i.i.i.ph = phi ptr [ %1, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.dj, %middle.block139 ] ; 2 uses
  %.0610.i.i.i.ph = phi i64 [ %i.d, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.dk, %middle.block139 ] ; 4 uses
  %.079.i.i.i.ph = phi ptr [ %2, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.dl, %middle.block139 ] ; 2 uses
  %i.dq = add nsw i64 %.0610.i.i.i.ph, -1
  %xtraiter238 = and i64 %.0610.i.i.i.ph, 7       ; 2 uses
  %lcmp.mod239.not = icmp eq i64 %xtraiter238, 0
  br i1 %lcmp.mod239.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.011.i.i.i.prol = phi ptr [ %i.du, %.lr.ph.i.i.i.prol ], [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0610.i.i.i.prol = phi i64 [ %i.dr, %.lr.ph.i.i.i.prol ], [ %.0610.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
end_hunk_2
begin_hunk_3_@_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE12insert_rangeIPKS3_EEPS3_SB_T_SD_:bb.a
  %prol.iter242.cmp.not = icmp eq i64 %prol.iter242.next, %xtraiter240
  br i1 %prol.iter242.cmp.not, label %.lr.ph.i.i51.i.prol.loopexit, label %.lr.ph.i.i51.i.prol, !llvm.loop !442

.lr.ph.i.i51.i.prol.loopexit:                     ; preds = %.lr.ph.i.i51.i.prol, %.lr.ph.i.i51.i.preheader234
  %.lcssa235.unr = phi ptr [ poison, %.lr.ph.i.i51.i.preheader234 ], [ %i.fn, %.lr.ph.i.i51.i.prol ]
  %.011.i.i52.i.unr = phi ptr [ %.011.i.i52.i.ph, %.lr.ph.i.i51.i.preheader234 ], [ %i.fo, %.lr.ph.i.i51.i.prol ]
  %.0610.i.i53.i.unr = phi i64 [ %.0610.i.i53.i.ph, %.lr.ph.i.i51.i.preheader234 ], [ %i.fl, %.lr.ph.i.i51.i.prol ]
  %.079.i.i54.i.unr = phi ptr [ %.079.i.i54.i.ph, %.lr.ph.i.i51.i.preheader234 ], [ %i.fn, %.lr.ph.i.i51.i.prol ]
  %i.fp = icmp ult i64 %i.fk, 7
  br i1 %i.fp, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i, label %.lr.ph.i.i51.i

.lr.ph.i.i51.i:                                   ; preds = %.lr.ph.i.i51.i.prol.loopexit, %.lr.ph.i.i51.i
  %.011.i.i52.i = phi ptr [ %i.go, %.lr.ph.i.i51.i ], [ %.011.i.i52.i.unr, %.lr.ph.i.i51.i.prol.loopexit ] ; 9 uses
  %.0610.i.i53.i = phi i64 [ %i.gl, %.lr.ph.i.i51.i ], [ %.0610.i.i53.i.unr, %.lr.ph.i.i51.i.prol.loopexit ]
  %.079.i.i54.i = phi ptr [ %i.gn, %.lr.ph.i.i51.i ], [ %.079.i.i54.i.unr, %.lr.ph.i.i51.i.prol.loopexit ] ; 9 uses
  %i.fq = load i32, ptr %.079.i.i54.i, align 4, !tbaa !65
  store i32 %i.fq, ptr %.011.i.i52.i, align 4, !tbaa !65
  %i.fr = getelementptr inbounds nuw i8, ptr %.079.i.i54.i, i64 4
  %i.fs = getelementptr inbounds nuw i8, ptr %.011.i.i52.i, i64 4
  %i.ft = load i32, ptr %i.fr, align 4, !tbaa !65
  store i32 %i.ft, ptr %i.fs, align 4, !tbaa !65
  %i.fu = getelementptr inbounds nuw i8, ptr %.079.i.i54.i, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %.011.i.i52.i, i64 8
  %i.fw = load i32, ptr %i.fu, align 4, !tbaa !65
  store i32 %i.fw, ptr %i.fv, align 4, !tbaa !65
  %i.fx = getelementptr inbounds nuw i8, ptr %.079.i.i54.i, i64 12
  %i.fy = getelementptr inbounds nuw i8, ptr %.011.i.i52.i, i64 12
  %i.fz = load i32, ptr %i.fx, align 4, !tbaa !65
  store i32 %i.fz, ptr %i.fy, align 4, !tbaa !65
  %i.ga = getelementptr inbounds nuw i8, ptr %.079.i.i54.i, i64 16
  %i.gb = getelementptr inbounds nuw i8, ptr %.011.i.i52.i, i64 16
  %i.gc = load i32, ptr %i.ga, align 4, !tbaa !65
  store i32 %i.gc, ptr %i.gb, align 4, !tbaa !65
  %i.gd = getelementptr inbounds nuw i8, ptr %.079.i.i54.i, i64 20
  %i.ge = getelementptr inbounds nuw i8, ptr %.011.i.i52.i, i64 20
  %i.gf = load i32, ptr %i.gd, align 4, !tbaa !65
  store i32 %i.gf, ptr %i.ge, align 4, !tbaa !65
  %i.gg = getelementptr inbounds nuw i8, ptr %.079.i.i54.i, i64 24
  %i.gh = getelementptr inbounds nuw i8, ptr %.011.i.i52.i, i64 24
  %i.gi = load i32, ptr %i.gg, align 4, !tbaa !65
  store i32 %i.gi, ptr %i.gh, align 4, !tbaa !65
  %i.gj = getelementptr inbounds nuw i8, ptr %.079.i.i54.i, i64 28
  %i.gk = getelementptr inbounds nuw i8, ptr %.011.i.i52.i, i64 28
  %i.gl = add i64 %.0610.i.i53.i, -8              ; 2 uses
  %i.gm = load i32, ptr %i.gj, align 4, !tbaa !65
  store i32 %i.gm, ptr %i.gk, align 4, !tbaa !65
  %i.gn = getelementptr inbounds nuw i8, ptr %.079.i.i54.i, i64 32 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.011.i.i52.i, i64 32
  %.not.i.i55.i.7 = icmp eq i64 %i.gl, 0
  br i1 %.not.i.i55.i.7, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i, label %.lr.ph.i.i51.i, !llvm.loop !443

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i: ; preds = %.lr.ph.i.i51.i.prol.loopexit, %.lr.ph.i.i51.i, %middle.block159
  %.lcssa121 = phi ptr [ %i.ff, %middle.block159 ], [ %.lcssa235.unr, %.lr.ph.i.i51.i.prol.loopexit ], [ %i.gn, %.lr.ph.i.i51.i ] ; 2 uses
  %i.gp = sub nsw i64 %i.d, %i.bg                 ; 3 uses
  %xtraiter243 = and i64 %i.gp, 3                 ; 2 uses
  %lcmp.mod244.not = icmp eq i64 %xtraiter243, 0
  br i1 %lcmp.mod244.not, label %.lr.ph.i.i58.i.prol.loopexit, label %.lr.ph.i.i58.i.prol

.lr.ph.i.i58.i.prol:                              ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i, %.lr.ph.i.i58.i.prol
  %.020.i.i.i.prol = phi i64 [ %i.gv, %.lr.ph.i.i58.i.prol ], [ %i.gp, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i ]
  %.0919.i.i.i.prol = phi ptr [ %i.gt, %.lr.ph.i.i58.i.prol ], [ %.lcssa121, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i ] ; 2 uses
  %.01618.i.i.i.prol = phi ptr [ %i.gu, %.lr.ph.i.i58.i.prol ], [ %i.r, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i ] ; 3 uses
  %prol.iter245 = phi i64 [ %prol.iter245.next, %.lr.ph.i.i58.i.prol ], [ 0, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.prol) ]
  %i.gq = load i32, ptr %.0919.i.i.i.prol, align 4, !tbaa !65
  store i32 %i.gq, ptr %.01618.i.i.i.prol, align 4, !tbaa !65
  %i.gr = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.gs = add i32 %i.gr, 1
  store i32 %i.gs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.gt = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.prol, i64 4 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.prol, i64 4 ; 2 uses
  %i.gv = add i64 %.020.i.i.i.prol, -1            ; 2 uses
  %prol.iter245.next = add i64 %prol.iter245, 1   ; 2 uses
  %prol.iter245.cmp.not = icmp eq i64 %prol.iter245.next, %xtraiter243
  br i1 %prol.iter245.cmp.not, label %.lr.ph.i.i58.i.prol.loopexit, label %.lr.ph.i.i58.i.prol, !llvm.loop !444

.lr.ph.i.i58.i.prol.loopexit:                     ; preds = %.lr.ph.i.i58.i.prol, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i
  %.020.i.i.i.unr = phi i64 [ %i.gp, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i ], [ %i.gv, %.lr.ph.i.i58.i.prol ]
  %.0919.i.i.i.unr = phi ptr [ %.lcssa121, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i ], [ %i.gt, %.lr.ph.i.i58.i.prol ]
  %.01618.i.i.i.unr = phi ptr [ %i.r, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i ], [ %i.gu, %.lr.ph.i.i58.i.prol ]
  %i.gw = sub nsw i64 %i.bg, %i.d
  %i.gx = icmp ugt i64 %i.gw, -4
  br i1 %i.gx, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i58.i

.lr.ph.i.i58.i:                                   ; preds = %.lr.ph.i.i58.i.prol.loopexit, %.lr.ph.i.i58.i
  %.020.i.i.i = phi i64 [ %i.hp, %.lr.ph.i.i58.i ], [ %.020.i.i.i.unr, %.lr.ph.i.i58.i.prol.loopexit ]
  %.0919.i.i.i = phi ptr [ %i.hn, %.lr.ph.i.i58.i ], [ %.0919.i.i.i.unr, %.lr.ph.i.i58.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i = phi ptr [ %i.ho, %.lr.ph.i.i58.i ], [ %.01618.i.i.i.unr, %.lr.ph.i.i58.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i) ]
  %i.gy = load i32, ptr %.0919.i.i.i, align 4, !tbaa !65
  store i32 %i.gy, ptr %.01618.i.i.i, align 4, !tbaa !65
  %i.gz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66 ; 4 uses
  %i.ha = add i32 %i.gz, 1
  store i32 %i.ha, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.hb = getelementptr inbounds nuw i8, ptr %.0919.i.i.i, i64 4
  %i.hc = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 4
  %i.hd = load i32, ptr %i.hb, align 4, !tbaa !65
  store i32 %i.hd, ptr %i.hc, align 4, !tbaa !65
  %i.he = add i32 %i.gz, 2
  store i32 %i.he, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.hf = getelementptr inbounds nuw i8, ptr %.0919.i.i.i, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 8
  %i.hh = load i32, ptr %i.hf, align 4, !tbaa !65
  store i32 %i.hh, ptr %i.hg, align 4, !tbaa !65
  %i.hi = add i32 %i.gz, 3
  store i32 %i.hi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.hj = getelementptr inbounds nuw i8, ptr %.0919.i.i.i, i64 12
  %i.hk = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 12
  %i.hl = load i32, ptr %i.hj, align 4, !tbaa !65
  store i32 %i.hl, ptr %i.hk, align 4, !tbaa !65
  %i.hm = add i32 %i.gz, 4
  store i32 %i.hm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.hn = getelementptr inbounds nuw i8, ptr %.0919.i.i.i, i64 16
  %i.ho = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 16
  %i.hp = add i64 %.020.i.i.i, -4                 ; 2 uses
  %.not.i.i59.i.3 = icmp eq i64 %i.hp, 0
  br i1 %.not.i.i59.i.3, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i58.i, !llvm.loop !18

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %.lr.ph.i.i58.i.prol.loopexit, %.lr.ph.i.i58.i, %middle.block139
  %i.hq = trunc i64 %i.d to i16
  %i.hr = add i16 %i.p, %i.hq
  store i16 %i.hr, ptr %i.o, align 2, !tbaa !73
  br label %bb.n

bb.l:                                             ; preds = %bb.h
  %.not45 = icmp ugt i64 %i.d, %i.ag
  br i1 %.not45, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i57 = icmp samesign ult i64 %i.ax, %i.d
  %i.hs = sub nsw i64 0, %i.d                     ; 2 uses
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.hs ; 3 uses
  br i1 %.not.i57, label %.lr.ph.i48.i74, label %.lr.ph.i.i59.preheader

.lr.ph.i.i59.preheader:                           ; preds = %bb.m
  %i.hu = icmp eq i64 %i.c, 4
  br i1 %i.hu, label %.lr.ph.i.i59.epil.preheader, label %.lr.ph.i.i59.preheader.new

.lr.ph.i.i59.preheader.new:                       ; preds = %.lr.ph.i.i59.preheader
  %unroll_iter = and i64 %i.d, -2
  br label %.lr.ph.i.i59

.lr.ph.i.i59:                                     ; preds = %.lr.ph.i.i59, %.lr.ph.i.i59.preheader.new
  %indvar = phi i64 [ 0, %.lr.ph.i.i59.preheader.new ], [ %indvar.next.1, %.lr.ph.i.i59 ] ; 2 uses
  %.0919.i.i = phi ptr [ %i.ah, %.lr.ph.i.i59.preheader.new ], [ %i.id, %.lr.ph.i.i59 ] ; 4 uses
  %.01618.i.i61 = phi ptr [ %i.ht, %.lr.ph.i.i59.preheader.new ], [ %i.ie, %.lr.ph.i.i59 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i59.preheader.new ], [ %niter.next.1, %.lr.ph.i.i59 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i61) ]
  %i.hv = load i32, ptr %.0919.i.i, align 4, !tbaa !65
  store i32 %i.hv, ptr %.01618.i.i61, align 4, !tbaa !65
  store i32 0, ptr %.0919.i.i, align 4, !tbaa !65
  %i.hw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.hx = add i32 %i.hw, 1
  store i32 %i.hx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.hy = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 4 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.01618.i.i61, i64 4
  %i.ia = load i32, ptr %i.hy, align 4, !tbaa !65
  store i32 %i.ia, ptr %i.hz, align 4, !tbaa !65
  store i32 0, ptr %i.hy, align 4, !tbaa !65
  %i.ib = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ic = add i32 %i.ib, 1
  store i32 %i.ic, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.id = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 8 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.01618.i.i61, i64 8 ; 2 uses
  %indvar.next.1 = add i64 %indvar, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, label %.lr.ph.i.i59, !llvm.loop !11

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i59
  %indvar.next = or disjoint i64 %indvar, 1
  %i.if = and i64 %i.c, 4
  %lcmp.mod247.not = icmp eq i64 %i.if, 0
  br i1 %lcmp.mod247.not, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i59.epil.preheader

.lr.ph.i.i59.epil.preheader:                      ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, %.lr.ph.i.i59.preheader
  %indvar.epil.init = phi i64 [ 0, %.lr.ph.i.i59.preheader ], [ %indvar.next.1, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ]
  %.0919.i.i.epil.init = phi ptr [ %i.ah, %.lr.ph.i.i59.preheader ], [ %i.id, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ] ; 3 uses
  %.01618.i.i61.epil.init = phi ptr [ %i.ht, %.lr.ph.i.i59.preheader ], [ %i.ie, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod250 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod250)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i61.epil.init) ]
  %i.ig = load i32, ptr %.0919.i.i.epil.init, align 4, !tbaa !65
  store i32 %i.ig, ptr %.01618.i.i61.epil.init, align 4, !tbaa !65
  store i32 0, ptr %.0919.i.i.epil.init, align 4, !tbaa !65
  %i.ih = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ii = add i32 %i.ih, 1
  store i32 %i.ii, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ij = getelementptr inbounds nuw i8, ptr %.0919.i.i.epil.init, i64 4
  br label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i: ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, %.lr.ph.i.i59.epil.preheader
  %indvar.lcssa = phi i64 [ %indvar.next, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ], [ %indvar.epil.init, %.lr.ph.i.i59.epil.preheader ]
  %.lcssa233 = phi ptr [ %i.id, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ], [ %i.ij, %.lr.ph.i.i59.epil.preheader ] ; 6 uses
  %.not8.i.i63 = icmp eq ptr %.lcssa233, %1
  br i1 %.not8.i.i63, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %.lr.ph.i40.i64.preheader

.lr.ph.i40.i64.preheader:                         ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %i.ik = shl nuw nsw i64 %i.ag, 2
  %i.il = add i64 %i.au, -4
  %4 = sub i64 %i.il, %i.f                        ; 2 uses
  %i.im = add i64 %i.c, %i.ik
  %i.in = sub i64 %4, %i.im                       ; 2 uses
  %i.io = lshr i64 %i.in, 2
  %i.ip = add nuw nsw i64 %i.io, 1                ; 2 uses
  %min.iters.check170 = icmp ult i64 %i.in, 140
  br i1 %min.iters.check170, label %.lr.ph.i40.i64.preheader231, label %vector.memcheck164

vector.memcheck164:                               ; preds = %.lr.ph.i40.i64.preheader
  %i.iq = shl nuw nsw i64 %i.ag, 2                ; 2 uses
  %i.ir = add i64 %i.c, %i.iq
  %i.is = sub i64 %4, %i.ir
  %i.it = and i64 %i.is, -4
  %i.iu = add i64 %i.it, %i.iq                    ; 2 uses
  %i.iv = getelementptr i8, ptr %i.e, i64 %i.iu
  %scevgep = getelementptr i8, ptr %i.iv, i64 4
  %i.iw = shl i64 %indvar.lcssa, 2
  %i.ix = getelementptr i8, ptr %i.e, i64 %i.iu
  %i.iy = getelementptr i8, ptr %i.ix, i64 8
  %scevgep165 = getelementptr i8, ptr %i.iy, i64 %i.iw
  %bound0166 = icmp ult ptr %i.ah, %scevgep165
  %bound1167 = icmp ult ptr %.lcssa233, %scevgep
  %found.conflict168 = and i1 %bound0166, %bound1167
  br i1 %found.conflict168, label %.lr.ph.i40.i64.preheader231, label %vector.ph171

vector.ph171:                                     ; preds = %vector.memcheck164
  %n.vec172 = and i64 %i.ip, 9223372036854775800  ; 3 uses
  %i.iz = shl i64 %n.vec172, 2                    ; 2 uses
  %i.ja = getelementptr i8, ptr %i.ah, i64 %i.iz  ; 2 uses
  %i.jb = getelementptr i8, ptr %.lcssa233, i64 %i.iz
  br label %vector.body173

vector.body173:                                   ; preds = %vector.body173, %vector.ph171
  %index174 = phi i64 [ 0, %vector.ph171 ], [ %index.next179, %vector.body173 ] ; 2 uses
  %i.jc = shl i64 %index174, 2                    ; 2 uses
  %next.gep175 = getelementptr i8, ptr %i.ah, i64 %i.jc ; 2 uses
  %next.gep176 = getelementptr i8, ptr %.lcssa233, i64 %i.jc ; 3 uses
  %i.jd = getelementptr i8, ptr %next.gep176, i64 16 ; 2 uses
  %wide.load177 = load <4 x i32>, ptr %next.gep176, align 4, !tbaa !65, !alias.scope !458
  %wide.load178 = load <4 x i32>, ptr %i.jd, align 4, !tbaa !65, !alias.scope !458
  %i.je = getelementptr i8, ptr %next.gep175, i64 16
  store <4 x i32> %wide.load177, ptr %next.gep175, align 4, !tbaa !65, !alias.scope !459, !noalias !458
  store <4 x i32> %wide.load178, ptr %i.je, align 4, !tbaa !65, !alias.scope !459, !noalias !458
  store <4 x i32> zeroinitializer, ptr %next.gep176, align 4, !tbaa !65, !alias.scope !458
  store <4 x i32> zeroinitializer, ptr %i.jd, align 4, !tbaa !65, !alias.scope !458
  %index.next179 = add nuw i64 %index174, 8       ; 2 uses
  %i.jf = icmp eq i64 %index.next179, %n.vec172
  br i1 %i.jf, label %middle.block180, label %vector.body173, !llvm.loop !448

middle.block180:                                  ; preds = %vector.body173
  %cmp.n181 = icmp eq i64 %i.ip, %n.vec172
  br i1 %cmp.n181, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %.lr.ph.i40.i64.preheader231

.lr.ph.i40.i64.preheader231:                      ; preds = %vector.memcheck164, %.lr.ph.i40.i64.preheader, %middle.block180
  %.010.i.i65.ph = phi ptr [ %i.ah, %vector.memcheck164 ], [ %i.ah, %.lr.ph.i40.i64.preheader ], [ %i.ja, %middle.block180 ]
  %.079.i.i66.ph = phi ptr [ %.lcssa233, %vector.memcheck164 ], [ %.lcssa233, %.lr.ph.i40.i64.preheader ], [ %i.jb, %middle.block180 ]
  br label %.lr.ph.i40.i64

.lr.ph.i40.i64:                                   ; preds = %.lr.ph.i40.i64.preheader231, %.lr.ph.i40.i64
  %.010.i.i65 = phi ptr [ %i.ji, %.lr.ph.i40.i64 ], [ %.010.i.i65.ph, %.lr.ph.i40.i64.preheader231 ] ; 2 uses
  %.079.i.i66 = phi ptr [ %i.jh, %.lr.ph.i40.i64 ], [ %.079.i.i66.ph, %.lr.ph.i40.i64.preheader231 ] ; 3 uses
  %i.jg = load i32, ptr %.079.i.i66, align 4, !tbaa !65
  store i32 %i.jg, ptr %.010.i.i65, align 4, !tbaa !65
  store i32 0, ptr %.079.i.i66, align 4, !tbaa !65
  %i.jh = getelementptr inbounds nuw i8, ptr %.079.i.i66, i64 4 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.010.i.i65, i64 4 ; 2 uses
  %.not.i41.i67 = icmp eq ptr %i.jh, %1
  br i1 %.not.i41.i67, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %.lr.ph.i40.i64, !llvm.loop !449

_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %.lr.ph.i40.i64, %middle.block180, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %.0.lcssa.i.i = phi ptr [ %i.ah, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i ], [ %i.ja, %middle.block180 ], [ %i.ji, %.lr.ph.i40.i64 ] ; 4 uses
  %min.iters.check189 = icmp ult i64 %i.d, 8
  %.0.lcssa.i.i187 = ptrtoaddr ptr %.0.lcssa.i.i to i64
  %i.jj = sub i64 %i.b, %.0.lcssa.i.i187
  %diff.check191 = icmp ugt i64 %i.jj, -32
  %or.cond227 = select i1 %min.iters.check189, i1 true, i1 %diff.check191
  br i1 %or.cond227, label %.lr.ph.i.i.i68.preheader, label %vector.ph192

vector.ph192:                                     ; preds = %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %n.vec193 = and i64 %i.d, -8                    ; 3 uses
  %i.jk = shl nsw i64 %n.vec193, 2                ; 2 uses
  %i.jl = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.jk
  %i.jm = and i64 %i.d, 7
  %i.jn = getelementptr i8, ptr %2, i64 %i.jk
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %vector.ph192
  %index195 = phi i64 [ 0, %vector.ph192 ], [ %index.next200, %vector.body194 ] ; 2 uses
  %i.jo = shl i64 %index195, 2                    ; 2 uses
  %next.gep196 = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.jo ; 2 uses
  %next.gep197 = getelementptr i8, ptr %2, i64 %i.jo ; 2 uses
  %i.jp = getelementptr i8, ptr %next.gep197, i64 16
  %wide.load198 = load <4 x i32>, ptr %next.gep197, align 4, !tbaa !65
  %wide.load199 = load <4 x i32>, ptr %i.jp, align 4, !tbaa !65
  %i.jq = getelementptr i8, ptr %next.gep196, i64 16
  store <4 x i32> %wide.load198, ptr %next.gep196, align 4, !tbaa !65
  store <4 x i32> %wide.load199, ptr %i.jq, align 4, !tbaa !65
  %index.next200 = add nuw i64 %index195, 8       ; 2 uses
  %i.jr = icmp eq i64 %index.next200, %n.vec193
  br i1 %i.jr, label %middle.block201, label %vector.body194, !llvm.loop !450

middle.block201:                                  ; preds = %vector.body194
  %cmp.n202 = icmp eq i64 %i.d, %n.vec193
  br i1 %cmp.n202, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i68.preheader

.lr.ph.i.i.i68.preheader:                         ; preds = %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, %middle.block201
  %.011.i.i.i69.ph = phi ptr [ %.0.lcssa.i.i, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.jl, %middle.block201 ] ; 2 uses
  %.0610.i.i.i70.ph = phi i64 [ %i.d, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.jm, %middle.block201 ] ; 4 uses
  %.079.i.i.i71.ph = phi ptr [ %2, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.jn, %middle.block201 ] ; 2 uses
  %i.js = add nsw i64 %.0610.i.i.i70.ph, -1
  %xtraiter251 = and i64 %.0610.i.i.i70.ph, 7     ; 2 uses
  %lcmp.mod252.not = icmp eq i64 %xtraiter251, 0
  br i1 %lcmp.mod252.not, label %.lr.ph.i.i.i68.prol.loopexit, label %.lr.ph.i.i.i68.prol

.lr.ph.i.i.i68.prol:                              ; preds = %.lr.ph.i.i.i68.preheader, %.lr.ph.i.i.i68.prol
  %.011.i.i.i69.prol = phi ptr [ %i.jw, %.lr.ph.i.i.i68.prol ], [ %.011.i.i.i69.ph, %.lr.ph.i.i.i68.preheader ] ; 2 uses
  %.0610.i.i.i70.prol = phi i64 [ %i.jt, %.lr.ph.i.i.i68.prol ], [ %.0610.i.i.i70.ph, %.lr.ph.i.i.i68.preheader ]
  %.079.i.i.i71.prol = phi ptr [ %i.jv, %.lr.ph.i.i.i68.prol ], [ %.079.i.i.i71.ph, %.lr.ph.i.i.i68.preheader ] ; 2 uses
  %prol.iter253 = phi i64 [ %prol.iter253.next, %.lr.ph.i.i.i68.prol ], [ 0, %.lr.ph.i.i.i68.preheader ]
  %i.jt = add i64 %.0610.i.i.i70.prol, -1         ; 2 uses
  %i.ju = load i32, ptr %.079.i.i.i71.prol, align 4, !tbaa !65
  store i32 %i.ju, ptr %.011.i.i.i69.prol, align 4, !tbaa !65
  %i.jv = getelementptr inbounds nuw i8, ptr %.079.i.i.i71.prol, i64 4 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.011.i.i.i69.prol, i64 4 ; 2 uses
  %prol.iter253.next = add i64 %prol.iter253, 1   ; 2 uses
  %prol.iter253.cmp.not = icmp eq i64 %prol.iter253.next, %xtraiter251
  br i1 %prol.iter253.cmp.not, label %.lr.ph.i.i.i68.prol.loopexit, label %.lr.ph.i.i.i68.prol, !llvm.loop !451

.lr.ph.i.i.i68.prol.loopexit:                     ; preds = %.lr.ph.i.i.i68.prol, %.lr.ph.i.i.i68.preheader
  %.011.i.i.i69.unr = phi ptr [ %.011.i.i.i69.ph, %.lr.ph.i.i.i68.preheader ], [ %i.jw, %.lr.ph.i.i.i68.prol ]
  %.0610.i.i.i70.unr = phi i64 [ %.0610.i.i.i70.ph, %.lr.ph.i.i.i68.preheader ], [ %i.jt, %.lr.ph.i.i.i68.prol ]
  %.079.i.i.i71.unr = phi ptr [ %.079.i.i.i71.ph, %.lr.ph.i.i.i68.preheader ], [ %i.jv, %.lr.ph.i.i.i68.prol ]
  %i.jx = icmp ult i64 %i.js, 7
  br i1 %i.jx, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i68

.lr.ph.i.i.i68:                                   ; preds = %.lr.ph.i.i.i68.prol.loopexit, %.lr.ph.i.i.i68
  %.011.i.i.i69 = phi ptr [ %i.kw, %.lr.ph.i.i.i68 ], [ %.011.i.i.i69.unr, %.lr.ph.i.i.i68.prol.loopexit ] ; 9 uses
  %.0610.i.i.i70 = phi i64 [ %i.kt, %.lr.ph.i.i.i68 ], [ %.0610.i.i.i70.unr, %.lr.ph.i.i.i68.prol.loopexit ]
  %.079.i.i.i71 = phi ptr [ %i.kv, %.lr.ph.i.i.i68 ], [ %.079.i.i.i71.unr, %.lr.ph.i.i.i68.prol.loopexit ] ; 9 uses
  %i.jy = load i32, ptr %.079.i.i.i71, align 4, !tbaa !65
  store i32 %i.jy, ptr %.011.i.i.i69, align 4, !tbaa !65
  %i.jz = getelementptr inbounds nuw i8, ptr %.079.i.i.i71, i64 4
  %i.ka = getelementptr inbounds nuw i8, ptr %.011.i.i.i69, i64 4
  %i.kb = load i32, ptr %i.jz, align 4, !tbaa !65
  store i32 %i.kb, ptr %i.ka, align 4, !tbaa !65
  %i.kc = getelementptr inbounds nuw i8, ptr %.079.i.i.i71, i64 8
  %i.kd = getelementptr inbounds nuw i8, ptr %.011.i.i.i69, i64 8
  %i.ke = load i32, ptr %i.kc, align 4, !tbaa !65
  store i32 %i.ke, ptr %i.kd, align 4, !tbaa !65
  %i.kf = getelementptr inbounds nuw i8, ptr %.079.i.i.i71, i64 12
  %i.kg = getelementptr inbounds nuw i8, ptr %.011.i.i.i69, i64 12
  %i.kh = load i32, ptr %i.kf, align 4, !tbaa !65
  store i32 %i.kh, ptr %i.kg, align 4, !tbaa !65
  %i.ki = getelementptr inbounds nuw i8, ptr %.079.i.i.i71, i64 16
  %i.kj = getelementptr inbounds nuw i8, ptr %.011.i.i.i69, i64 16
  %i.kk = load i32, ptr %i.ki, align 4, !tbaa !65
  store i32 %i.kk, ptr %i.kj, align 4, !tbaa !65
  %i.kl = getelementptr inbounds nuw i8, ptr %.079.i.i.i71, i64 20
  %i.km = getelementptr inbounds nuw i8, ptr %.011.i.i.i69, i64 20
  %i.kn = load i32, ptr %i.kl, align 4, !tbaa !65
  store i32 %i.kn, ptr %i.km, align 4, !tbaa !65
  %i.ko = getelementptr inbounds nuw i8, ptr %.079.i.i.i71, i64 24
  %i.kp = getelementptr inbounds nuw i8, ptr %.011.i.i.i69, i64 24
  %i.kq = load i32, ptr %i.ko, align 4, !tbaa !65
  store i32 %i.kq, ptr %i.kp, align 4, !tbaa !65
  %i.kr = getelementptr inbounds nuw i8, ptr %.079.i.i.i71, i64 28
  %i.ks = getelementptr inbounds nuw i8, ptr %.011.i.i.i69, i64 28
  %i.kt = add i64 %.0610.i.i.i70, -8              ; 2 uses
  %i.ku = load i32, ptr %i.kr, align 4, !tbaa !65
  store i32 %i.ku, ptr %i.ks, align 4, !tbaa !65
  %i.kv = getelementptr inbounds nuw i8, ptr %.079.i.i.i71, i64 32
  %i.kw = getelementptr inbounds nuw i8, ptr %.011.i.i.i69, i64 32
  %.not.i.i.i72.7 = icmp eq i64 %i.kt, 0
  br i1 %.not.i.i.i72.7, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i68, !llvm.loop !452

.lr.ph.i48.i74:                                   ; preds = %bb.m, %.lr.ph.i48.i74
  %.018.i.i75 = phi ptr [ %i.la, %.lr.ph.i48.i74 ], [ %i.ah, %bb.m ] ; 3 uses
  %.01517.i.i76 = phi ptr [ %i.lb, %.lr.ph.i48.i74 ], [ %i.ht, %bb.m ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i76) ]
  %i.kx = load i32, ptr %.018.i.i75, align 4, !tbaa !65
  store i32 %i.kx, ptr %.01517.i.i76, align 4, !tbaa !65
  store i32 0, ptr %.018.i.i75, align 4, !tbaa !65
  %i.ky = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.kz = add i32 %i.ky, 1
  store i32 %i.kz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.la = getelementptr inbounds nuw i8, ptr %.018.i.i75, i64 4 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.01517.i.i76, i64 4 ; 3 uses
  %.not.i49.i77 = icmp eq ptr %i.la, %1
  br i1 %.not.i49.i77, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, label %.lr.ph.i48.i74, !llvm.loop !8

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i: ; preds = %.lr.ph.i48.i74
  %i.lc = sub nsw i64 %i.d, %i.ax                 ; 3 uses
  %.neg = add nsw i64 %i.ax, 1
  %xtraiter254 = and i64 %i.lc, 1
  %i.ld = icmp eq i64 %i.d, %.neg
  br i1 %i.ld, label %.lr.ph.i.i50.i.epil.preheader, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.new

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.new: ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %unroll_iter259 = and i64 %i.lc, -2
  br label %.lr.ph.i.i50.i

.lr.ph.i.i50.i:                                   ; preds = %.lr.ph.i.i50.i, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.new
  %indvar207 = phi i64 [ 0, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.new ], [ %indvar.next208.1, %.lr.ph.i.i50.i ] ; 2 uses
  %.0919.i.i.i79 = phi ptr [ %2, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.new ], [ %i.ll, %.lr.ph.i.i50.i ] ; 3 uses
  %.01618.i.i.i80 = phi ptr [ %i.lb, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.new ], [ %i.lm, %.lr.ph.i.i50.i ] ; 3 uses
  %niter260 = phi i64 [ 0, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.new ], [ %niter260.next.1, %.lr.ph.i.i50.i ]
  %i.le = load i32, ptr %.0919.i.i.i79, align 4, !tbaa !65
  store i32 %i.le, ptr %.01618.i.i.i80, align 4, !tbaa !65
  %i.lf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66 ; 2 uses
  %i.lg = add i32 %i.lf, 1
  store i32 %i.lg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.lh = getelementptr inbounds nuw i8, ptr %.0919.i.i.i79, i64 4
  %i.li = getelementptr inbounds nuw i8, ptr %.01618.i.i.i80, i64 4
  %i.lj = load i32, ptr %i.lh, align 4, !tbaa !65
  store i32 %i.lj, ptr %i.li, align 4, !tbaa !65
  %i.lk = add i32 %i.lf, 2
  store i32 %i.lk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ll = getelementptr inbounds nuw i8, ptr %.0919.i.i.i79, i64 8 ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.01618.i.i.i80, i64 8 ; 2 uses
  %indvar.next208.1 = add i64 %indvar207, 2       ; 2 uses
end_hunk_3
