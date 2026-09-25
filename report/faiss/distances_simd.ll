Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/distances_simd?download=true
inline.NumInlined: 164
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN5faiss8fvec_addILNS_9SIMDLevelE0EEEvmPKffPf:bb.a
  store float %i.fn, ptr %i.fo, align 4, !tbaa !14
  %i.fp = add nuw i64 %.137, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.fp, %0
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph38, !llvm.loop !94

._crit_edge:                                      ; preds = %.lr.ph38.prol.loopexit, %.lr.ph38, %middle.block51, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss27compute_PQ_dis_tables_dsub2ILNS_9SIMDLevelE0EEEvmmPKfmS3_bPf(i64 noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i1 noundef zeroext %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [8 x float], align 32             ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca [8 x float], align 32             ; 89 uses
  %i.c = lshr i64 %0, 1                           ; 5 uses
  %i.d = and i64 %1, 7
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.preheader141, label %bb.b

.preheader141:                                    ; preds = %bb.a
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge158.split, label %.lr.ph157

.lr.ph157:                                        ; preds = %.preheader141
  %.not159 = icmp eq i64 %1, 0
  %i.f = shl i64 %1, 1                            ; 40 uses
  %.not160 = icmp eq i64 %3, 0
  %.idx15.i101 = mul i64 %1, 12
  %.idx16.i93 = shl i64 %1, 3
  br i1 %.not159, label %._crit_edge158.split, label %.lr.ph155.preheader

.lr.ph155.preheader:                              ; preds = %.lr.ph157
  %.sroa.0112.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 8 uses
  %.sroa.0112.sroa.80.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 8 uses
  %.sroa.0112.sroa.96.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 8 uses
  %.sroa.0112.sroa.112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 8 uses
  %.sroa.0112.sroa.128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 8 uses
  %.sroa.0112.sroa.144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 8 uses
  %.sroa.0112.sroa.160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 7 uses
  %.sroa.0112.sroa.80.0..sroa_idx400 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 8 uses
  %.sroa.0112.sroa.112.0..sroa_idx460 = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 8 uses
  %.sroa.0112.sroa.144.0..sroa_idx520 = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 8 uses
  %.sroa.0112.sroa.160.0..sroa_idx550 = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.24..24..24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %.lr.ph155

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.g, ptr %7, align 8, !tbaa !111
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !24
  store i8 0, ptr %i.g, align 8, !tbaa !25
  %i.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #17 ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = zext nneg i32 %i.i to i64                ; 2 uses
  %i.l = add nuw nsw i64 %i.k, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.l)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %7, align 8, !tbaa !26
  %i.n = load i64, ptr %i.h, align 8, !tbaa !24
  %i.o = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.m, i64 noundef %i.n, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #17 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.k)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.q = call ptr @__cxa_allocate_exception(i64 40) #17 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss27compute_PQ_dis_tables_dsub2ILNS_9SIMDLevelE0EEEvmmPKfmS3_bPf, ptr noundef nonnull @.str.2, i32 noundef 149)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #18
          to label %bb.y unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.q) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.r, %bb.h ]
  %i.s = load ptr, ptr %7, align 8, !tbaa !26     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.g
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.u = load i64, ptr %i.g, align 8, !tbaa !25
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  resume { ptr, i32 } %.pn

..loopexit_crit_edge:                             ; preds = %._crit_edge
  %i.w = icmp ult i64 %i.ac, %i.c
  %indvars.iv.next = add nuw i64 %indvars.iv, 4
  %indvar.next = add i32 %indvar, 1
  br i1 %i.w, label %.lr.ph155, label %._crit_edge158.split, !llvm.loop !97

._crit_edge158.split:                             ; preds = %..loopexit_crit_edge, %.lr.ph157, %.preheader141
  ret void

.lr.ph155:                                        ; preds = %.lr.ph155.preheader, %..loopexit_crit_edge
  %indvar = phi i32 [ 0, %.lr.ph155.preheader ], [ %indvar.next, %..loopexit_crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 4, %.lr.ph155.preheader ], [ %indvars.iv.next, %..loopexit_crit_edge ] ; 2 uses
  %.068156 = phi i64 [ 0, %.lr.ph155.preheader ], [ %i.ac, %..loopexit_crit_edge ] ; 7 uses
  %i.x = mul i32 %indvar, -4                      ; 2 uses
  %umin652 = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %i.c)
  %i.y = trunc i64 %umin652 to i32                ; 10 uses
  %i.z = add i32 %i.x, %i.y                       ; 8 uses
  %i.aa = add i32 %i.x, -1
  %i.ab = add i32 %i.aa, %i.y                     ; 8 uses
  %i.ac = add nuw i64 %.068156, 4                 ; 4 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.c) ; 3 uses
  %i.ad = trunc i64 %.sroa.speculated to i32
  %i.ae = mul i64 %.068156, %1
  %i.af = trunc i64 %.068156 to i32
  %i.ag = icmp slt i32 %i.af, %i.ad
  %sext = shl i64 %.sroa.speculated, 32
  %i.ah = ashr exact i64 %sext, 32                ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %i.ac
  %i.aj = sub i64 %.sroa.speculated, %.068156
  %.tr = trunc i64 %i.aj to i32
  %i.ak = shl i32 %.tr, 1                         ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  %.idx77 = shl i64 %.068156, 3
  %invariant.gep149 = getelementptr i8, ptr %4, i64 %.idx77 ; 2 uses
  %i.am = zext nneg i32 %i.ak to i64
  %i.an = shl nuw nsw i64 %i.am, 2
  %i.ao = sub i64 %i.ah, %.068156                 ; 2 uses
  %xtraiter = and i32 %i.y, 3                     ; 4 uses
  %i.ap = icmp ult i32 %i.ab, 3
  %unroll_iter = sub i32 %i.z, %xtraiter
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod653 = icmp ne i32 %xtraiter, 0
  %xtraiter664 = and i32 %i.y, 3                  ; 4 uses
  %i.aq = icmp ult i32 %i.ab, 3
  %unroll_iter668 = sub i32 %i.z, %xtraiter664
  %lcmp.mod666.not = icmp eq i32 %xtraiter664, 0
  %lcmp.mod667 = icmp ne i32 %xtraiter664, 0
  %xtraiter671 = and i32 %i.y, 3                  ; 4 uses
  %i.ar = icmp ult i32 %i.ab, 3
  %unroll_iter675 = sub i32 %i.z, %xtraiter671
  %lcmp.mod673.not = icmp eq i32 %xtraiter671, 0
  %lcmp.mod674 = icmp ne i32 %xtraiter671, 0
  %xtraiter678 = and i32 %i.y, 3                  ; 4 uses
  %i.as = icmp ult i32 %i.ab, 3
  %unroll_iter682 = sub i32 %i.z, %xtraiter678
  %lcmp.mod680.not = icmp eq i32 %xtraiter678, 0
  %lcmp.mod681 = icmp ne i32 %xtraiter678, 0
  %xtraiter685 = and i32 %i.y, 3                  ; 4 uses
  %i.at = icmp ult i32 %i.ab, 3
  %unroll_iter689 = sub i32 %i.z, %xtraiter685
  %lcmp.mod687.not = icmp eq i32 %xtraiter685, 0
  %lcmp.mod688 = icmp ne i32 %xtraiter685, 0
  %xtraiter692 = and i32 %i.y, 3                  ; 4 uses
  %i.au = icmp ult i32 %i.ab, 3
  %unroll_iter696 = sub i32 %i.z, %xtraiter692
  %lcmp.mod694.not = icmp eq i32 %xtraiter692, 0
  %lcmp.mod695 = icmp ne i32 %xtraiter692, 0
  %xtraiter699 = and i32 %i.y, 3                  ; 4 uses
  %i.av = icmp ult i32 %i.ab, 3
  %unroll_iter703 = sub i32 %i.z, %xtraiter699
  %lcmp.mod701.not = icmp eq i32 %xtraiter699, 0
  %lcmp.mod702 = icmp ne i32 %xtraiter699, 0
  %xtraiter706 = and i32 %i.y, 3                  ; 4 uses
  %i.aw = icmp ult i32 %i.ab, 3
  %unroll_iter710 = sub i32 %i.z, %xtraiter706
  %lcmp.mod708.not = icmp eq i32 %xtraiter706, 0
  %lcmp.mod709 = icmp ne i32 %xtraiter706, 0
  br label %.preheader140

.preheader140:                                    ; preds = %.lr.ph155, %._crit_edge
  %indvars.iv168 = phi i64 [ 0, %.lr.ph155 ], [ %indvars.iv.next169, %._crit_edge ] ; 3 uses
  %i.ax = add i64 %indvars.iv168, %i.ae           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  br i1 %i.ag, label %.lr.ph.us.preheader, label %.preheader140.split.preheader

.preheader140.split.preheader:                    ; preds = %.preheader140
  %.sroa.0112.sroa.64.0.copyload = load float, ptr %.sroa.0112.sroa.64.0..sroa_idx, align 4
  %i.ay = load <4 x float>, ptr %.sroa.0112.sroa.80.0..sroa_idx, align 8
  %i.az = load <4 x float>, ptr %.sroa.0112.sroa.96.0..sroa_idx, align 4
  %i.ba = load <4 x float>, ptr %.sroa.0112.sroa.112.0..sroa_idx, align 16
  %.sroa.0112.sroa.128.0.copyload = load float, ptr %.sroa.0112.sroa.128.0..sroa_idx, align 4
  %.sroa.0112.sroa.160.0.copyload.a = load float, ptr %.sroa.0112.sroa.160.0..sroa_idx, align 4
  %.sroa.0112.sroa.144.0.copyload = load float, ptr %.sroa.0112.sroa.144.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %.sroa.0112.sroa.64.0.copyload373 = load float, ptr %.sroa.0112.sroa.64.0..sroa_idx, align 4
  %.sroa.0112.sroa.80.0.copyload403 = load float, ptr %.sroa.0112.sroa.80.0..sroa_idx, align 8
  %.sroa.0112.sroa.96.0.copyload433 = load float, ptr %.sroa.0112.sroa.96.0..sroa_idx, align 4
  %.sroa.0112.sroa.112.0.copyload463 = load float, ptr %.sroa.0112.sroa.112.0..sroa_idx, align 16
  %.sroa.0112.sroa.128.0.copyload493 = load float, ptr %.sroa.0112.sroa.128.0..sroa_idx, align 4
  %.sroa.0112.sroa.144.0.copyload523 = load float, ptr %.sroa.0112.sroa.144.0..sroa_idx, align 8
  %.sroa.0112.sroa.160.0.copyload553 = load float, ptr %.sroa.0112.sroa.160.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %.sroa.0112.sroa.64.0.copyload375 = load float, ptr %.sroa.0112.sroa.64.0..sroa_idx, align 4
  %.sroa.0112.sroa.96.0.copyload435 = load float, ptr %.sroa.0112.sroa.96.0..sroa_idx, align 4
  %.sroa.0112.sroa.128.0.copyload495 = load float, ptr %.sroa.0112.sroa.128.0..sroa_idx, align 4
  %.sroa.0112.sroa.144.0.copyload525 = load float, ptr %.sroa.0112.sroa.144.0..sroa_idx, align 8
  %.sroa.0112.sroa.160.0.copyload555 = load float, ptr %.sroa.0112.sroa.160.0..sroa_idx, align 4
  %.sroa.0112.sroa.80.0.copyload405 = load float, ptr %.sroa.0112.sroa.80.0..sroa_idx, align 8
  %.sroa.0112.sroa.112.0.copyload465 = load float, ptr %.sroa.0112.sroa.112.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %.sroa.0112.sroa.64.0.copyload377 = load float, ptr %.sroa.0112.sroa.64.0..sroa_idx, align 4
  %.sroa.0112.sroa.80.0.copyload407 = load float, ptr %.sroa.0112.sroa.80.0..sroa_idx, align 8
  %.sroa.0112.sroa.96.0.copyload437 = load float, ptr %.sroa.0112.sroa.96.0..sroa_idx, align 4
  %.sroa.0112.sroa.112.0.copyload467 = load float, ptr %.sroa.0112.sroa.112.0..sroa_idx, align 16
  %.sroa.0112.sroa.128.0.copyload497 = load float, ptr %.sroa.0112.sroa.128.0..sroa_idx, align 4
  %.sroa.0112.sroa.144.0.copyload527 = load float, ptr %.sroa.0112.sroa.144.0..sroa_idx, align 8
  %.sroa.0112.sroa.160.0.copyload557 = load float, ptr %.sroa.0112.sroa.160.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %.sroa.0112.sroa.64.0.copyload379 = load float, ptr %.sroa.0112.sroa.64.0..sroa_idx, align 4
  %i.bb = load <4 x float>, ptr %.sroa.0112.sroa.80.0..sroa_idx, align 8
  %i.bc = load <4 x float>, ptr %.sroa.0112.sroa.96.0..sroa_idx, align 4
  %i.bd = load <4 x float>, ptr %.sroa.0112.sroa.112.0..sroa_idx, align 16
  %.sroa.0112.sroa.128.0.copyload499 = load float, ptr %.sroa.0112.sroa.128.0..sroa_idx, align 4
  %i.be = load <2 x float>, ptr %.sroa.0112.sroa.144.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %.sroa.0112.sroa.64.0.copyload381 = load float, ptr %.sroa.0112.sroa.64.0..sroa_idx, align 4
  %.sroa.0112.sroa.80.0.copyload411 = load float, ptr %.sroa.0112.sroa.80.0..sroa_idx, align 8
  %.sroa.0112.sroa.96.0.copyload441 = load float, ptr %.sroa.0112.sroa.96.0..sroa_idx, align 4
  %.sroa.0112.sroa.112.0.copyload471 = load float, ptr %.sroa.0112.sroa.112.0..sroa_idx, align 16
  %.sroa.0112.sroa.128.0.copyload501 = load float, ptr %.sroa.0112.sroa.128.0..sroa_idx, align 4
  %.sroa.0112.sroa.144.0.copyload531 = load float, ptr %.sroa.0112.sroa.144.0..sroa_idx, align 8
  %.sroa.0112.sroa.160.0.copyload561 = load float, ptr %.sroa.0112.sroa.160.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %.sroa.0112.sroa.64.0.copyload383 = load float, ptr %.sroa.0112.sroa.64.0..sroa_idx, align 4
  %.sroa.0112.sroa.96.0.copyload443 = load float, ptr %.sroa.0112.sroa.96.0..sroa_idx, align 4
  %.sroa.0112.sroa.128.0.copyload503 = load float, ptr %.sroa.0112.sroa.128.0..sroa_idx, align 4
  %.sroa.0112.sroa.144.0.copyload533 = load float, ptr %.sroa.0112.sroa.144.0..sroa_idx, align 8
  %.sroa.0112.sroa.160.0.copyload563 = load float, ptr %.sroa.0112.sroa.160.0..sroa_idx, align 4
  %.sroa.0112.sroa.80.0.copyload413 = load float, ptr %.sroa.0112.sroa.80.0..sroa_idx, align 8
  %.sroa.0112.sroa.112.0.copyload473 = load float, ptr %.sroa.0112.sroa.112.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %.sroa.0112.sroa.64.0.copyload385 = load float, ptr %.sroa.0112.sroa.64.0..sroa_idx, align 4
  %.sroa.0112.sroa.80.0.copyload415 = load float, ptr %.sroa.0112.sroa.80.0..sroa_idx, align 8
  %.sroa.0112.sroa.96.0.copyload445 = load float, ptr %.sroa.0112.sroa.96.0..sroa_idx, align 4
  %.sroa.0112.sroa.112.0.copyload475 = load float, ptr %.sroa.0112.sroa.112.0..sroa_idx, align 16
  %.sroa.0112.sroa.128.0.copyload505 = load float, ptr %.sroa.0112.sroa.128.0..sroa_idx, align 4
  %.sroa.0112.sroa.144.0.copyload535 = load float, ptr %.sroa.0112.sroa.144.0..sroa_idx, align 8
  %.sroa.0112.sroa.160.0.copyload565 = load float, ptr %.sroa.0112.sroa.160.0..sroa_idx, align 4
  %i.bf = insertelement <4 x float> <float poison, float undef, float poison, float undef>, float %.sroa.0112.sroa.64.0.copyload, i64 0
  %i.bg = insertelement <4 x float> %i.bf, float %.sroa.0112.sroa.64.0.copyload375, i64 2
  %i.bh = insertelement <4 x float> <float undef, float poison, float undef, float poison>, float %.sroa.0112.sroa.64.0.copyload373, i64 1
  %i.bi = insertelement <4 x float> %i.bh, float %.sroa.0112.sroa.64.0.copyload377, i64 3
  %i.bj = insertelement <4 x float> <float poison, float undef, float poison, float undef>, float %.sroa.0112.sroa.64.0.copyload379, i64 0
  %i.bk = insertelement <4 x float> %i.bj, float %.sroa.0112.sroa.64.0.copyload383, i64 2
  %i.bl = insertelement <4 x float> <float undef, float poison, float undef, float poison>, float %.sroa.0112.sroa.64.0.copyload381, i64 1
  %i.bm = insertelement <4 x float> %i.bl, float %.sroa.0112.sroa.64.0.copyload385, i64 3
  %i.bn = insertelement <4 x float> %i.az, float %.sroa.0112.sroa.80.0.copyload403, i64 1
  %i.bo = insertelement <4 x float> %i.bn, float %.sroa.0112.sroa.96.0.copyload435, i64 2
  %i.bp = insertelement <4 x float> %i.bo, float %.sroa.0112.sroa.80.0.copyload407, i64 3
  %i.bq = insertelement <4 x float> %i.ay, float %.sroa.0112.sroa.96.0.copyload433, i64 1
  %i.br = insertelement <4 x float> %i.bq, float %.sroa.0112.sroa.80.0.copyload405, i64 2
  %i.bs = insertelement <4 x float> %i.br, float %.sroa.0112.sroa.96.0.copyload437, i64 3
  %i.bt = insertelement <4 x float> %i.bc, float %.sroa.0112.sroa.80.0.copyload411, i64 1
  %i.bu = insertelement <4 x float> %i.bt, float %.sroa.0112.sroa.96.0.copyload443, i64 2
  %i.bv = insertelement <4 x float> %i.bu, float %.sroa.0112.sroa.80.0.copyload415, i64 3
  %i.bw = insertelement <4 x float> %i.bb, float %.sroa.0112.sroa.96.0.copyload441, i64 1
  %i.bx = insertelement <4 x float> %i.bw, float %.sroa.0112.sroa.80.0.copyload413, i64 2
  %i.by = insertelement <4 x float> %i.bx, float %.sroa.0112.sroa.96.0.copyload445, i64 3
  %i.bz = insertelement <4 x float> poison, float %.sroa.0112.sroa.128.0.copyload, i64 0
  %i.ca = insertelement <4 x float> %i.bz, float %.sroa.0112.sroa.112.0.copyload463, i64 1
  %i.cb = insertelement <4 x float> %i.ca, float %.sroa.0112.sroa.128.0.copyload495, i64 2
  %i.cc = insertelement <4 x float> %i.cb, float %.sroa.0112.sroa.112.0.copyload467, i64 3
  %i.cd = insertelement <4 x float> %i.ba, float %.sroa.0112.sroa.128.0.copyload493, i64 1
  %i.ce = insertelement <4 x float> %i.cd, float %.sroa.0112.sroa.112.0.copyload465, i64 2
  %i.cf = insertelement <4 x float> %i.ce, float %.sroa.0112.sroa.128.0.copyload497, i64 3
  %i.cg = insertelement <4 x float> poison, float %.sroa.0112.sroa.128.0.copyload499, i64 0
  %i.ch = insertelement <4 x float> %i.cg, float %.sroa.0112.sroa.112.0.copyload471, i64 1
  %i.ci = insertelement <4 x float> %i.ch, float %.sroa.0112.sroa.128.0.copyload503, i64 2
  %i.cj = insertelement <4 x float> %i.ci, float %.sroa.0112.sroa.112.0.copyload475, i64 3
  %i.ck = insertelement <4 x float> %i.bd, float %.sroa.0112.sroa.128.0.copyload501, i64 1
  %i.cl = insertelement <4 x float> %i.ck, float %.sroa.0112.sroa.112.0.copyload473, i64 2
  %i.cm = insertelement <4 x float> %i.cl, float %.sroa.0112.sroa.128.0.copyload505, i64 3
  %i.cn = insertelement <4 x float> poison, float %.sroa.0112.sroa.160.0.copyload.a, i64 0
  %i.co = insertelement <4 x float> %i.cn, float %.sroa.0112.sroa.160.0.copyload553, i64 1
  %i.cp = insertelement <4 x float> %i.co, float %.sroa.0112.sroa.160.0.copyload555, i64 2
  %i.cq = insertelement <4 x float> %i.cp, float %.sroa.0112.sroa.160.0.copyload557, i64 3
  %i.cr = shufflevector <2 x float> %i.be, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cs = insertelement <4 x float> %i.cr, float %.sroa.0112.sroa.144.0.copyload531, i64 1
  %i.ct = insertelement <4 x float> %i.cs, float %.sroa.0112.sroa.144.0.copyload533, i64 2
  %i.cu = insertelement <4 x float> %i.ct, float %.sroa.0112.sroa.144.0.copyload535, i64 3
  %i.cv = shufflevector <2 x float> %i.be, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cw = insertelement <4 x float> %i.cv, float %.sroa.0112.sroa.160.0.copyload561, i64 1
  %i.cx = insertelement <4 x float> %i.cw, float %.sroa.0112.sroa.160.0.copyload563, i64 2
  %i.cy = insertelement <4 x float> %i.cx, float %.sroa.0112.sroa.160.0.copyload565, i64 3
  %i.cz = insertelement <2 x float> poison, float %.sroa.0112.sroa.144.0.copyload, i64 0
  %i.da = insertelement <2 x float> %i.cz, float %.sroa.0112.sroa.144.0.copyload523, i64 1
  br label %.preheader

.lr.ph.us.preheader:                              ; preds = %.preheader140
  %i.db = shl i64 %i.ax, 1                        ; 2 uses
  br i1 %i.ap, label %.epil.preheader, label %.lr.ph.us.preheader.new

.lr.ph.us.preheader.new:                          ; preds = %.lr.ph.us.preheader, %.lr.ph.us.preheader.new
  %.064143.us = phi i64 [ %i.dv, %.lr.ph.us.preheader.new ], [ %i.db, %.lr.ph.us.preheader ] ; 2 uses
  %.065142.us = phi i64 [ %i.dt, %.lr.ph.us.preheader.new ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph.us.preheader.new ], [ 0, %.lr.ph.us.preheader ]
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.064143.us
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us
  %i.de = load <2 x float>, ptr %i.dc, align 4, !tbaa !14
  store <2 x float> %i.de, ptr %i.dd, align 32, !tbaa !14
  %i.df = add i64 %.064143.us, %i.f               ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.df
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load <2 x float>, ptr %i.dg, align 4, !tbaa !14
  store <2 x float> %i.dj, ptr %i.di, align 8, !tbaa !14
  %i.dk = add i64 %i.df, %i.f                     ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dk
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load <2 x float>, ptr %i.dl, align 4, !tbaa !14
  store <2 x float> %i.do, ptr %i.dn, align 16, !tbaa !14
  %i.dp = add i64 %i.dk, %i.f                     ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dp
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = add nuw nsw i64 %.065142.us, 8          ; 2 uses
  %i.du = load <2 x float>, ptr %i.dq, align 4, !tbaa !14
  store <2 x float> %i.du, ptr %i.ds, align 8, !tbaa !14
  %i.dv = add i64 %i.dp, %i.f                     ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.preheader.new, !llvm.loop !98

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us.preheader
  %.064143.us.epil.init = phi i64 [ %i.db, %.lr.ph.us.preheader ], [ %i.dv, %._crit_edge.us.unr-lcssa ]
  %.065142.us.epil.init = phi i64 [ 0, %.lr.ph.us.preheader ], [ %i.dt, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod653)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %.064143.us.epil = phi i64 [ %.064143.us.epil.init, %.epil.preheader ], [ %i.ea, %bb.j ] ; 2 uses
  %.065142.us.epil = phi i64 [ %.065142.us.epil.init, %.epil.preheader ], [ %i.dy, %bb.j ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.064143.us.epil
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.epil
  %i.dy = add nuw nsw i64 %.065142.us.epil, 2
  %i.dz = load <2 x float>, ptr %i.dw, align 4, !tbaa !14
  store <2 x float> %i.dz, ptr %i.dx, align 8, !tbaa !14
  %i.ea = add i64 %.064143.us.epil, %i.f
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.j, !llvm.loop !99

._crit_edge.us:                                   ; preds = %bb.j, %._crit_edge.us.unr-lcssa
  %i.eb = load <2 x float>, ptr %i.b, align 32    ; 2 uses
  %i.ec = load <2 x float>, ptr %.sroa.0112.sroa.80.0..sroa_idx400, align 8 ; 2 uses
  %i.ed = load <2 x float>, ptr %.sroa.0112.sroa.112.0..sroa_idx460, align 16 ; 2 uses
  %.sroa.0112.sroa.160.0.copyload551.a = load float, ptr %.sroa.0112.sroa.160.0..sroa_idx550, align 4
  %.sroa.0112.sroa.144.0.copyload521 = load float, ptr %.sroa.0112.sroa.144.0..sroa_idx520, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.ee = shl i64 %i.ax, 1
  %i.ef = or disjoint i64 %i.ee, 2                ; 2 uses
  br i1 %i.aq, label %.epil.preheader663, label %._crit_edge.us.new

._crit_edge.us.new:                               ; preds = %._crit_edge.us, %._crit_edge.us.new
  %.064143.us.1 = phi i64 [ %i.ez, %._crit_edge.us.new ], [ %i.ef, %._crit_edge.us ] ; 2 uses
  %.065142.us.1 = phi i64 [ %i.ex, %._crit_edge.us.new ], [ 0, %._crit_edge.us ] ; 5 uses
  %niter669 = phi i32 [ %niter669.next.3, %._crit_edge.us.new ], [ 0, %._crit_edge.us ]
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.064143.us.1
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.1
  %i.ei = load <2 x float>, ptr %i.eg, align 4, !tbaa !14
  store <2 x float> %i.ei, ptr %i.eh, align 32, !tbaa !14
  %i.ej = add i64 %.064143.us.1, %i.f             ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ej
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.1
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load <2 x float>, ptr %i.ek, align 4, !tbaa !14
  store <2 x float> %i.en, ptr %i.em, align 8, !tbaa !14
  %i.eo = add i64 %i.ej, %i.f                     ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.eo
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.1
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load <2 x float>, ptr %i.ep, align 4, !tbaa !14
  store <2 x float> %i.es, ptr %i.er, align 16, !tbaa !14
  %i.et = add i64 %i.eo, %i.f                     ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.et
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.1
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ex = add nuw nsw i64 %.065142.us.1, 8        ; 2 uses
  %i.ey = load <2 x float>, ptr %i.eu, align 4, !tbaa !14
  store <2 x float> %i.ey, ptr %i.ew, align 8, !tbaa !14
  %i.ez = add i64 %i.et, %i.f                     ; 2 uses
  %niter669.next.3 = add i32 %niter669, 4         ; 2 uses
  %niter669.ncmp.3 = icmp eq i32 %niter669.next.3, %unroll_iter668
  br i1 %niter669.ncmp.3, label %._crit_edge.us.1.unr-lcssa, label %._crit_edge.us.new, !llvm.loop !98

._crit_edge.us.1.unr-lcssa:                       ; preds = %._crit_edge.us.new
  br i1 %lcmp.mod666.not, label %._crit_edge.us.1, label %.epil.preheader663

.epil.preheader663:                               ; preds = %._crit_edge.us.1.unr-lcssa, %._crit_edge.us
  %.064143.us.1.epil.init = phi i64 [ %i.ef, %._crit_edge.us ], [ %i.ez, %._crit_edge.us.1.unr-lcssa ]
  %.065142.us.1.epil.init = phi i64 [ 0, %._crit_edge.us ], [ %i.ex, %._crit_edge.us.1.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod667)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader663
  %.064143.us.1.epil = phi i64 [ %.064143.us.1.epil.init, %.epil.preheader663 ], [ %i.fe, %bb.k ] ; 2 uses
  %.065142.us.1.epil = phi i64 [ %.065142.us.1.epil.init, %.epil.preheader663 ], [ %i.fc, %bb.k ] ; 2 uses
  %epil.iter665 = phi i32 [ 0, %.epil.preheader663 ], [ %epil.iter665.next, %bb.k ]
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.064143.us.1.epil
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.1.epil
  %i.fc = add nuw nsw i64 %.065142.us.1.epil, 2
  %i.fd = load <2 x float>, ptr %i.fa, align 4, !tbaa !14
  store <2 x float> %i.fd, ptr %i.fb, align 8, !tbaa !14
  %i.fe = add i64 %.064143.us.1.epil, %i.f
  %epil.iter665.next = add i32 %epil.iter665, 1   ; 2 uses
  %epil.iter665.cmp.not = icmp eq i32 %epil.iter665.next, %xtraiter664
  br i1 %epil.iter665.cmp.not, label %._crit_edge.us.1, label %bb.k, !llvm.loop !100

._crit_edge.us.1:                                 ; preds = %bb.k, %._crit_edge.us.1.unr-lcssa
  %i.ff = load <2 x float>, ptr %i.b, align 32    ; 2 uses
  %i.fg = load <2 x float>, ptr %.sroa.0112.sroa.80.0..sroa_idx400, align 8 ; 2 uses
  %i.fh = load <2 x float>, ptr %.sroa.0112.sroa.112.0..sroa_idx460, align 16 ; 2 uses
  %i.fi = load <2 x float>, ptr %.sroa.0112.sroa.144.0..sroa_idx520, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.fj = shl i64 %i.ax, 1
  %i.fk = or disjoint i64 %i.fj, 4                ; 2 uses
  br i1 %i.ar, label %.epil.preheader670, label %._crit_edge.us.1.new

._crit_edge.us.1.new:                             ; preds = %._crit_edge.us.1, %._crit_edge.us.1.new
  %.064143.us.2 = phi i64 [ %i.ge, %._crit_edge.us.1.new ], [ %i.fk, %._crit_edge.us.1 ] ; 2 uses
  %.065142.us.2 = phi i64 [ %i.gc, %._crit_edge.us.1.new ], [ 0, %._crit_edge.us.1 ] ; 5 uses
  %niter676 = phi i32 [ %niter676.next.3, %._crit_edge.us.1.new ], [ 0, %._crit_edge.us.1 ]
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.064143.us.2
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.2
  %i.fn = load <2 x float>, ptr %i.fl, align 4, !tbaa !14
  store <2 x float> %i.fn, ptr %i.fm, align 32, !tbaa !14
  %i.fo = add i64 %.064143.us.2, %i.f             ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fo
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.2
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load <2 x float>, ptr %i.fp, align 4, !tbaa !14
  store <2 x float> %i.fs, ptr %i.fr, align 8, !tbaa !14
  %i.ft = add i64 %i.fo, %i.f                     ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ft
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.2
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load <2 x float>, ptr %i.fu, align 4, !tbaa !14
  store <2 x float> %i.fx, ptr %i.fw, align 16, !tbaa !14
  %i.fy = add i64 %i.ft, %i.f                     ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fy
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.2
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gc = add nuw nsw i64 %.065142.us.2, 8        ; 2 uses
  %i.gd = load <2 x float>, ptr %i.fz, align 4, !tbaa !14
  store <2 x float> %i.gd, ptr %i.gb, align 8, !tbaa !14
  %i.ge = add i64 %i.fy, %i.f                     ; 2 uses
  %niter676.next.3 = add i32 %niter676, 4         ; 2 uses
  %niter676.ncmp.3 = icmp eq i32 %niter676.next.3, %unroll_iter675
  br i1 %niter676.ncmp.3, label %._crit_edge.us.2.unr-lcssa, label %._crit_edge.us.1.new, !llvm.loop !98

._crit_edge.us.2.unr-lcssa:                       ; preds = %._crit_edge.us.1.new
  br i1 %lcmp.mod673.not, label %._crit_edge.us.2, label %.epil.preheader670

.epil.preheader670:                               ; preds = %._crit_edge.us.2.unr-lcssa, %._crit_edge.us.1
  %.064143.us.2.epil.init = phi i64 [ %i.fk, %._crit_edge.us.1 ], [ %i.ge, %._crit_edge.us.2.unr-lcssa ]
  %.065142.us.2.epil.init = phi i64 [ 0, %._crit_edge.us.1 ], [ %i.gc, %._crit_edge.us.2.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod674)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader670
  %.064143.us.2.epil = phi i64 [ %.064143.us.2.epil.init, %.epil.preheader670 ], [ %i.gj, %bb.l ] ; 2 uses
  %.065142.us.2.epil = phi i64 [ %.065142.us.2.epil.init, %.epil.preheader670 ], [ %i.gh, %bb.l ] ; 2 uses
  %epil.iter672 = phi i32 [ 0, %.epil.preheader670 ], [ %epil.iter672.next, %bb.l ]
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.064143.us.2.epil
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.2.epil
  %i.gh = add nuw nsw i64 %.065142.us.2.epil, 2
  %i.gi = load <2 x float>, ptr %i.gf, align 4, !tbaa !14
  store <2 x float> %i.gi, ptr %i.gg, align 8, !tbaa !14
  %i.gj = add i64 %.064143.us.2.epil, %i.f
  %epil.iter672.next = add i32 %epil.iter672, 1   ; 2 uses
  %epil.iter672.cmp.not = icmp eq i32 %epil.iter672.next, %xtraiter671
  br i1 %epil.iter672.cmp.not, label %._crit_edge.us.2, label %bb.l, !llvm.loop !101

._crit_edge.us.2:                                 ; preds = %bb.l, %._crit_edge.us.2.unr-lcssa
  %i.gk = load <4 x float>, ptr %i.b, align 32    ; 2 uses
  %i.gl = load <4 x float>, ptr %.sroa.0112.sroa.80.0..sroa_idx400, align 8 ; 2 uses
  %i.gm = load <4 x float>, ptr %.sroa.0112.sroa.112.0..sroa_idx460, align 16 ; 2 uses
  %i.gn = load <2 x float>, ptr %.sroa.0112.sroa.144.0..sroa_idx520, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.go = shl i64 %i.ax, 1
  %i.gp = or disjoint i64 %i.go, 6                ; 2 uses
  br i1 %i.as, label %.epil.preheader677, label %._crit_edge.us.2.new

._crit_edge.us.2.new:                             ; preds = %._crit_edge.us.2, %._crit_edge.us.2.new
  %.064143.us.3 = phi i64 [ %i.hj, %._crit_edge.us.2.new ], [ %i.gp, %._crit_edge.us.2 ] ; 2 uses
  %.065142.us.3 = phi i64 [ %i.hh, %._crit_edge.us.2.new ], [ 0, %._crit_edge.us.2 ] ; 5 uses
  %niter683 = phi i32 [ %niter683.next.3, %._crit_edge.us.2.new ], [ 0, %._crit_edge.us.2 ]
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.064143.us.3
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.3
  %i.gs = load <2 x float>, ptr %i.gq, align 4, !tbaa !14
  store <2 x float> %i.gs, ptr %i.gr, align 32, !tbaa !14
  %i.gt = add i64 %.064143.us.3, %i.f             ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gt
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.3
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load <2 x float>, ptr %i.gu, align 4, !tbaa !14
  store <2 x float> %i.gx, ptr %i.gw, align 8, !tbaa !14
  %i.gy = add i64 %i.gt, %i.f                     ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gy
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.3
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load <2 x float>, ptr %i.gz, align 4, !tbaa !14
  store <2 x float> %i.hc, ptr %i.hb, align 16, !tbaa !14
  %i.hd = add i64 %i.gy, %i.f                     ; 2 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hd
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.3
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.hh = add nuw nsw i64 %.065142.us.3, 8        ; 2 uses
  %i.hi = load <2 x float>, ptr %i.he, align 4, !tbaa !14
  store <2 x float> %i.hi, ptr %i.hg, align 8, !tbaa !14
  %i.hj = add i64 %i.hd, %i.f                     ; 2 uses
  %niter683.next.3 = add i32 %niter683, 4         ; 2 uses
  %niter683.ncmp.3 = icmp eq i32 %niter683.next.3, %unroll_iter682
  br i1 %niter683.ncmp.3, label %._crit_edge.us.3.unr-lcssa, label %._crit_edge.us.2.new, !llvm.loop !98

._crit_edge.us.3.unr-lcssa:                       ; preds = %._crit_edge.us.2.new
  br i1 %lcmp.mod680.not, label %._crit_edge.us.3, label %.epil.preheader677

.epil.preheader677:                               ; preds = %._crit_edge.us.3.unr-lcssa, %._crit_edge.us.2
  %.064143.us.3.epil.init = phi i64 [ %i.gp, %._crit_edge.us.2 ], [ %i.hj, %._crit_edge.us.3.unr-lcssa ]
  %.065142.us.3.epil.init = phi i64 [ 0, %._crit_edge.us.2 ], [ %i.hh, %._crit_edge.us.3.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod681)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader677
  %.064143.us.3.epil = phi i64 [ %.064143.us.3.epil.init, %.epil.preheader677 ], [ %i.ho, %bb.m ] ; 2 uses
  %.065142.us.3.epil = phi i64 [ %.065142.us.3.epil.init, %.epil.preheader677 ], [ %i.hm, %bb.m ] ; 2 uses
  %epil.iter679 = phi i32 [ 0, %.epil.preheader677 ], [ %epil.iter679.next, %bb.m ]
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.064143.us.3.epil
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.3.epil
  %i.hm = add nuw nsw i64 %.065142.us.3.epil, 2
  %i.hn = load <2 x float>, ptr %i.hk, align 4, !tbaa !14
  store <2 x float> %i.hn, ptr %i.hl, align 8, !tbaa !14
  %i.ho = add i64 %.064143.us.3.epil, %i.f
  %epil.iter679.next = add i32 %epil.iter679, 1   ; 2 uses
  %epil.iter679.cmp.not = icmp eq i32 %epil.iter679.next, %xtraiter678
  br i1 %epil.iter679.cmp.not, label %._crit_edge.us.3, label %bb.m, !llvm.loop !102

._crit_edge.us.3:                                 ; preds = %bb.m, %._crit_edge.us.3.unr-lcssa
  %i.hp = load <4 x float>, ptr %i.b, align 32    ; 2 uses
  %i.hq = load <4 x float>, ptr %.sroa.0112.sroa.80.0..sroa_idx400, align 8 ; 2 uses
  %i.hr = load <4 x float>, ptr %.sroa.0112.sroa.112.0..sroa_idx460, align 16 ; 2 uses
  %i.hs = load <2 x float>, ptr %.sroa.0112.sroa.144.0..sroa_idx520, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
end_hunk_0
begin_hunk_1_@_ZN5faiss27compute_PQ_dis_tables_dsub2ILNS_9SIMDLevelE0EEEvmmPKfmS3_bPf:bb.a
  %niter697.ncmp.3 = icmp eq i32 %niter697.next.3, %unroll_iter696
  br i1 %niter697.ncmp.3, label %._crit_edge.us.5.unr-lcssa, label %._crit_edge.us.4.new, !llvm.loop !98

._crit_edge.us.5.unr-lcssa:                       ; preds = %._crit_edge.us.4.new
  br i1 %lcmp.mod694.not, label %._crit_edge.us.5, label %.epil.preheader691

.epil.preheader691:                               ; preds = %._crit_edge.us.5.unr-lcssa, %._crit_edge.us.4
  %.064143.us.5.epil.init = phi i64 [ %i.iz, %._crit_edge.us.4 ], [ %i.jt, %._crit_edge.us.5.unr-lcssa ]
  %.065142.us.5.epil.init = phi i64 [ 0, %._crit_edge.us.4 ], [ %i.jr, %._crit_edge.us.5.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod695)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader691
  %.064143.us.5.epil = phi i64 [ %.064143.us.5.epil.init, %.epil.preheader691 ], [ %i.jy, %bb.o ] ; 2 uses
  %.065142.us.5.epil = phi i64 [ %.065142.us.5.epil.init, %.epil.preheader691 ], [ %i.jw, %bb.o ] ; 2 uses
  %epil.iter693 = phi i32 [ 0, %.epil.preheader691 ], [ %epil.iter693.next, %bb.o ]
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.064143.us.5.epil
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.5.epil
  %i.jw = add nuw nsw i64 %.065142.us.5.epil, 2
  %i.jx = load <2 x float>, ptr %i.ju, align 4, !tbaa !14
  store <2 x float> %i.jx, ptr %i.jv, align 8, !tbaa !14
  %i.jy = add i64 %.064143.us.5.epil, %i.f
  %epil.iter693.next = add i32 %epil.iter693, 1   ; 2 uses
  %epil.iter693.cmp.not = icmp eq i32 %epil.iter693.next, %xtraiter692
  br i1 %epil.iter693.cmp.not, label %._crit_edge.us.5, label %bb.o, !llvm.loop !104

._crit_edge.us.5:                                 ; preds = %bb.o, %._crit_edge.us.5.unr-lcssa
  %i.jz = load <2 x float>, ptr %i.b, align 32    ; 2 uses
  %i.ka = load <2 x float>, ptr %.sroa.0112.sroa.80.0..sroa_idx400, align 8 ; 2 uses
  %i.kb = load <2 x float>, ptr %.sroa.0112.sroa.112.0..sroa_idx460, align 16 ; 2 uses
  %i.kc = load <2 x float>, ptr %.sroa.0112.sroa.144.0..sroa_idx520, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.kd = shl i64 %i.ax, 1
  %i.ke = or disjoint i64 %i.kd, 12               ; 2 uses
  br i1 %i.av, label %.epil.preheader698, label %._crit_edge.us.5.new

._crit_edge.us.5.new:                             ; preds = %._crit_edge.us.5, %._crit_edge.us.5.new
  %.064143.us.6 = phi i64 [ %i.ky, %._crit_edge.us.5.new ], [ %i.ke, %._crit_edge.us.5 ] ; 2 uses
  %.065142.us.6 = phi i64 [ %i.kw, %._crit_edge.us.5.new ], [ 0, %._crit_edge.us.5 ] ; 5 uses
  %niter704 = phi i32 [ %niter704.next.3, %._crit_edge.us.5.new ], [ 0, %._crit_edge.us.5 ]
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.064143.us.6
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.6
  %i.kh = load <2 x float>, ptr %i.kf, align 4, !tbaa !14
  store <2 x float> %i.kh, ptr %i.kg, align 32, !tbaa !14
  %i.ki = add i64 %.064143.us.6, %i.f             ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ki
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.6
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load <2 x float>, ptr %i.kj, align 4, !tbaa !14
  store <2 x float> %i.km, ptr %i.kl, align 8, !tbaa !14
  %i.kn = add i64 %i.ki, %i.f                     ; 2 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kn
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.6
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.kr = load <2 x float>, ptr %i.ko, align 4, !tbaa !14
  store <2 x float> %i.kr, ptr %i.kq, align 16, !tbaa !14
  %i.ks = add i64 %i.kn, %i.f                     ; 2 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ks
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.6
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 24
  %i.kw = add nuw nsw i64 %.065142.us.6, 8        ; 2 uses
  %i.kx = load <2 x float>, ptr %i.kt, align 4, !tbaa !14
  store <2 x float> %i.kx, ptr %i.kv, align 8, !tbaa !14
  %i.ky = add i64 %i.ks, %i.f                     ; 2 uses
  %niter704.next.3 = add i32 %niter704, 4         ; 2 uses
  %niter704.ncmp.3 = icmp eq i32 %niter704.next.3, %unroll_iter703
  br i1 %niter704.ncmp.3, label %._crit_edge.us.6.unr-lcssa, label %._crit_edge.us.5.new, !llvm.loop !98

._crit_edge.us.6.unr-lcssa:                       ; preds = %._crit_edge.us.5.new
  br i1 %lcmp.mod701.not, label %._crit_edge.us.6, label %.epil.preheader698

.epil.preheader698:                               ; preds = %._crit_edge.us.6.unr-lcssa, %._crit_edge.us.5
  %.064143.us.6.epil.init = phi i64 [ %i.ke, %._crit_edge.us.5 ], [ %i.ky, %._crit_edge.us.6.unr-lcssa ]
  %.065142.us.6.epil.init = phi i64 [ 0, %._crit_edge.us.5 ], [ %i.kw, %._crit_edge.us.6.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod702)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader698
  %.064143.us.6.epil = phi i64 [ %.064143.us.6.epil.init, %.epil.preheader698 ], [ %i.ld, %bb.p ] ; 2 uses
  %.065142.us.6.epil = phi i64 [ %.065142.us.6.epil.init, %.epil.preheader698 ], [ %i.lb, %bb.p ] ; 2 uses
  %epil.iter700 = phi i32 [ 0, %.epil.preheader698 ], [ %epil.iter700.next, %bb.p ]
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.064143.us.6.epil
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.6.epil
  %i.lb = add nuw nsw i64 %.065142.us.6.epil, 2
  %i.lc = load <2 x float>, ptr %i.kz, align 4, !tbaa !14
  store <2 x float> %i.lc, ptr %i.la, align 8, !tbaa !14
  %i.ld = add i64 %.064143.us.6.epil, %i.f
  %epil.iter700.next = add i32 %epil.iter700, 1   ; 2 uses
  %epil.iter700.cmp.not = icmp eq i32 %epil.iter700.next, %xtraiter699
  br i1 %epil.iter700.cmp.not, label %._crit_edge.us.6, label %bb.p, !llvm.loop !105

._crit_edge.us.6:                                 ; preds = %bb.p, %._crit_edge.us.6.unr-lcssa
  %i.le = load <4 x float>, ptr %i.b, align 32    ; 2 uses
  %i.lf = load <4 x float>, ptr %.sroa.0112.sroa.80.0..sroa_idx400, align 8 ; 2 uses
  %i.lg = load <4 x float>, ptr %.sroa.0112.sroa.112.0..sroa_idx460, align 16 ; 2 uses
  %i.lh = load <2 x float>, ptr %.sroa.0112.sroa.144.0..sroa_idx520, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.li = shl i64 %i.ax, 1
  %i.lj = or disjoint i64 %i.li, 14               ; 2 uses
  br i1 %i.aw, label %.epil.preheader705, label %._crit_edge.us.6.new

._crit_edge.us.6.new:                             ; preds = %._crit_edge.us.6, %._crit_edge.us.6.new
  %.064143.us.7 = phi i64 [ %i.md, %._crit_edge.us.6.new ], [ %i.lj, %._crit_edge.us.6 ] ; 2 uses
  %.065142.us.7 = phi i64 [ %i.mb, %._crit_edge.us.6.new ], [ 0, %._crit_edge.us.6 ] ; 5 uses
  %niter711 = phi i32 [ %niter711.next.3, %._crit_edge.us.6.new ], [ 0, %._crit_edge.us.6 ]
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.064143.us.7
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.7
  %i.lm = load <2 x float>, ptr %i.lk, align 4, !tbaa !14
  store <2 x float> %i.lm, ptr %i.ll, align 32, !tbaa !14
  %i.ln = add i64 %.064143.us.7, %i.f             ; 2 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ln
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.7
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.lr = load <2 x float>, ptr %i.lo, align 4, !tbaa !14
  store <2 x float> %i.lr, ptr %i.lq, align 8, !tbaa !14
  %i.ls = add i64 %i.ln, %i.f                     ; 2 uses
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ls
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.7
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.lw = load <2 x float>, ptr %i.lt, align 4, !tbaa !14
  store <2 x float> %i.lw, ptr %i.lv, align 16, !tbaa !14
  %i.lx = add i64 %i.ls, %i.f                     ; 2 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.lx
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.7
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 24
  %i.mb = add nuw nsw i64 %.065142.us.7, 8        ; 2 uses
  %i.mc = load <2 x float>, ptr %i.ly, align 4, !tbaa !14
  store <2 x float> %i.mc, ptr %i.ma, align 8, !tbaa !14
  %i.md = add i64 %i.lx, %i.f                     ; 2 uses
  %niter711.next.3 = add i32 %niter711, 4         ; 2 uses
  %niter711.ncmp.3 = icmp eq i32 %niter711.next.3, %unroll_iter710
  br i1 %niter711.ncmp.3, label %._crit_edge.us.7.unr-lcssa, label %._crit_edge.us.6.new, !llvm.loop !98

._crit_edge.us.7.unr-lcssa:                       ; preds = %._crit_edge.us.6.new
  br i1 %lcmp.mod708.not, label %._crit_edge.us.7, label %.epil.preheader705

.epil.preheader705:                               ; preds = %._crit_edge.us.7.unr-lcssa, %._crit_edge.us.6
  %.064143.us.7.epil.init = phi i64 [ %i.lj, %._crit_edge.us.6 ], [ %i.md, %._crit_edge.us.7.unr-lcssa ]
  %.065142.us.7.epil.init = phi i64 [ 0, %._crit_edge.us.6 ], [ %i.mb, %._crit_edge.us.7.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod709)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader705
  %.064143.us.7.epil = phi i64 [ %.064143.us.7.epil.init, %.epil.preheader705 ], [ %i.mi, %bb.q ] ; 2 uses
  %.065142.us.7.epil = phi i64 [ %.065142.us.7.epil.init, %.epil.preheader705 ], [ %i.mg, %bb.q ] ; 2 uses
  %epil.iter707 = phi i32 [ 0, %.epil.preheader705 ], [ %epil.iter707.next, %bb.q ]
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.064143.us.7.epil
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.065142.us.7.epil
  %i.mg = add nuw nsw i64 %.065142.us.7.epil, 2
  %i.mh = load <2 x float>, ptr %i.me, align 4, !tbaa !14
  store <2 x float> %i.mh, ptr %i.mf, align 8, !tbaa !14
  %i.mi = add i64 %.064143.us.7.epil, %i.f
  %epil.iter707.next = add i32 %epil.iter707, 1   ; 2 uses
  %epil.iter707.cmp.not = icmp eq i32 %epil.iter707.next, %xtraiter706
  br i1 %epil.iter707.cmp.not, label %._crit_edge.us.7, label %bb.q, !llvm.loop !106

._crit_edge.us.7:                                 ; preds = %bb.q, %._crit_edge.us.7.unr-lcssa
  %i.mj = load <4 x float>, ptr %i.b, align 32    ; 2 uses
  %i.mk = load <4 x float>, ptr %.sroa.0112.sroa.80.0..sroa_idx400, align 8 ; 2 uses
  %i.ml = load <4 x float>, ptr %.sroa.0112.sroa.112.0..sroa_idx460, align 16 ; 2 uses
  %i.mm = load <2 x float>, ptr %.sroa.0112.sroa.144.0..sroa_idx520, align 8
  %i.mn = shufflevector <2 x float> %i.eb, <2 x float> %i.ff, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.mo = shufflevector <4 x float> %i.mn, <4 x float> %i.gk, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.mp = shufflevector <4 x float> %i.mo, <4 x float> %i.hp, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.mq = shufflevector <2 x float> %i.eb, <2 x float> %i.ff, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.mr = shufflevector <4 x float> %i.mq, <4 x float> %i.gk, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ms = shufflevector <4 x float> %i.mr, <4 x float> %i.hp, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.mt = shufflevector <2 x float> %i.iu, <2 x float> %i.jz, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.mu = shufflevector <4 x float> %i.mt, <4 x float> %i.le, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.mv = shufflevector <4 x float> %i.mu, <4 x float> %i.mj, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.mw = shufflevector <2 x float> %i.iu, <2 x float> %i.jz, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.mx = shufflevector <4 x float> %i.mw, <4 x float> %i.le, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.my = shufflevector <4 x float> %i.mx, <4 x float> %i.mj, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.mz = shufflevector <2 x float> %i.ec, <2 x float> %i.fg, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.na = shufflevector <4 x float> %i.mz, <4 x float> %i.gl, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.nb = shufflevector <4 x float> %i.na, <4 x float> %i.hq, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.nc = shufflevector <2 x float> %i.ec, <2 x float> %i.fg, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.nd = shufflevector <4 x float> %i.nc, <4 x float> %i.gl, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ne = shufflevector <4 x float> %i.nd, <4 x float> %i.hq, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.nf = shufflevector <2 x float> %i.iv, <2 x float> %i.ka, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.ng = shufflevector <4 x float> %i.nf, <4 x float> %i.lf, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.nh = shufflevector <4 x float> %i.ng, <4 x float> %i.mk, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ni = shufflevector <2 x float> %i.iv, <2 x float> %i.ka, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.nj = shufflevector <4 x float> %i.ni, <4 x float> %i.lf, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.nk = shufflevector <4 x float> %i.nj, <4 x float> %i.mk, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.nl = shufflevector <2 x float> %i.ed, <2 x float> %i.fh, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.nm = shufflevector <4 x float> %i.nl, <4 x float> %i.gm, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.nn = shufflevector <4 x float> %i.nm, <4 x float> %i.hr, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.no = shufflevector <2 x float> %i.ed, <2 x float> %i.fh, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.np = shufflevector <4 x float> %i.no, <4 x float> %i.gm, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.nq = shufflevector <4 x float> %i.np, <4 x float> %i.hr, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.nr = shufflevector <2 x float> %i.iw, <2 x float> %i.kb, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.ns = shufflevector <4 x float> %i.nr, <4 x float> %i.lg, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.nt = shufflevector <4 x float> %i.ns, <4 x float> %i.ml, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.nu = shufflevector <2 x float> %i.iw, <2 x float> %i.kb, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.nv = shufflevector <4 x float> %i.nu, <4 x float> %i.lg, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.nw = shufflevector <4 x float> %i.nv, <4 x float> %i.ml, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.nx = shufflevector <2 x float> %i.fi, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ny = insertelement <4 x float> %i.nx, float %.sroa.0112.sroa.160.0.copyload551.a, i64 0
  %i.nz = shufflevector <2 x float> %i.gn, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.oa = shufflevector <4 x float> %i.ny, <4 x float> %i.nz, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.ob = shufflevector <2 x float> %i.hs, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.oc = shufflevector <4 x float> %i.oa, <4 x float> %i.ob, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.od = extractelement <2 x float> %i.gn, i64 0
  %i.oe = extractelement <2 x float> %i.hs, i64 0
  %i.of = shufflevector <2 x float> %i.ix, <2 x float> %i.kc, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.og = shufflevector <2 x float> %i.lh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.oh = shufflevector <4 x float> %i.of, <4 x float> %i.og, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.oi = shufflevector <2 x float> %i.mm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.oj = shufflevector <4 x float> %i.oh, <4 x float> %i.oi, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ok = shufflevector <2 x float> %i.ix, <2 x float> %i.kc, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ol = shufflevector <4 x float> %i.ok, <4 x float> %i.og, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.om = shufflevector <4 x float> %i.ol, <4 x float> %i.oi, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.on = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.oo = insertelement <2 x float> %i.on, float %.sroa.0112.sroa.144.0.copyload521, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader140.split.preheader, %._crit_edge.us.7
  %.sroa.70.0 = phi float [ %i.oe, %._crit_edge.us.7 ], [ %.sroa.0112.sroa.144.0.copyload527, %.preheader140.split.preheader ] ; 2 uses
  %.sroa.52.0 = phi float [ %i.od, %._crit_edge.us.7 ], [ %.sroa.0112.sroa.144.0.copyload525, %.preheader140.split.preheader ] ; 2 uses
  %i.op = phi <4 x float> [ %i.mp, %._crit_edge.us.7 ], [ %i.bg, %.preheader140.split.preheader ] ; 3 uses
  %i.oq = phi <4 x float> [ %i.ms, %._crit_edge.us.7 ], [ %i.bi, %.preheader140.split.preheader ] ; 3 uses
  %i.or = phi <4 x float> [ %i.mv, %._crit_edge.us.7 ], [ %i.bk, %.preheader140.split.preheader ] ; 3 uses
  %i.os = phi <4 x float> [ %i.my, %._crit_edge.us.7 ], [ %i.bm, %.preheader140.split.preheader ] ; 3 uses
  %i.ot = phi <4 x float> [ %i.nb, %._crit_edge.us.7 ], [ %i.bp, %.preheader140.split.preheader ] ; 3 uses
  %i.ou = phi <4 x float> [ %i.ne, %._crit_edge.us.7 ], [ %i.bs, %.preheader140.split.preheader ] ; 3 uses
  %i.ov = phi <4 x float> [ %i.nh, %._crit_edge.us.7 ], [ %i.bv, %.preheader140.split.preheader ] ; 3 uses
  %i.ow = phi <4 x float> [ %i.nk, %._crit_edge.us.7 ], [ %i.by, %.preheader140.split.preheader ] ; 3 uses
  %i.ox = phi <4 x float> [ %i.nn, %._crit_edge.us.7 ], [ %i.cc, %.preheader140.split.preheader ] ; 3 uses
  %i.oy = phi <4 x float> [ %i.nq, %._crit_edge.us.7 ], [ %i.cf, %.preheader140.split.preheader ] ; 3 uses
  %i.oz = phi <4 x float> [ %i.nt, %._crit_edge.us.7 ], [ %i.cj, %.preheader140.split.preheader ] ; 3 uses
  %i.pa = phi <4 x float> [ %i.nw, %._crit_edge.us.7 ], [ %i.cm, %.preheader140.split.preheader ] ; 3 uses
  %i.pb = phi <4 x float> [ %i.oc, %._crit_edge.us.7 ], [ %i.cq, %.preheader140.split.preheader ] ; 3 uses
  %i.pc = phi <4 x float> [ %i.oj, %._crit_edge.us.7 ], [ %i.cu, %.preheader140.split.preheader ] ; 3 uses
  %i.pd = phi <4 x float> [ %i.om, %._crit_edge.us.7 ], [ %i.cy, %.preheader140.split.preheader ] ; 3 uses
  %i.pe = phi <2 x float> [ %i.oo, %._crit_edge.us.7 ], [ %i.da, %.preheader140.split.preheader ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %invariant.gep = getelementptr [4 x i8], ptr %6, i64 %indvars.iv168
  br i1 %.not160, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.pf = shufflevector <4 x float> %i.oq, <4 x float> %i.op, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.pg = shufflevector <4 x float> %i.op, <4 x float> %i.oq, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.ph = shufflevector <4 x float> %i.ou, <4 x float> %i.ot, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.pi = shufflevector <4 x float> %i.ot, <4 x float> %i.ou, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.pj = shufflevector <4 x float> %i.oy, <4 x float> %i.ox, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.pk = shufflevector <4 x float> %i.ox, <4 x float> %i.oy, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.pl = shufflevector <4 x float> %i.os, <4 x float> %i.or, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.pm = shufflevector <4 x float> %i.or, <4 x float> %i.os, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.pn = shufflevector <4 x float> %i.ow, <4 x float> %i.ov, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.po = shufflevector <4 x float> %i.ov, <4 x float> %i.ow, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.pp = shufflevector <4 x float> %i.pa, <4 x float> %i.oz, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.pq = shufflevector <4 x float> %i.oz, <4 x float> %i.pa, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.pr = shufflevector <2 x float> %i.pe, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ps = insertelement <4 x float> %i.pr, float %.sroa.52.0, i64 2
  %i.pt = insertelement <4 x float> %i.ps, float %.sroa.70.0, i64 3
  %i.pu = shufflevector <4 x float> %i.pc, <4 x float> %i.pd, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.pv = shufflevector <4 x float> %i.pd, <4 x float> %i.pc, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.pw = shufflevector <2 x float> %i.pe, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.px = shufflevector <4 x float> %i.pb, <4 x float> %i.pw, <4 x i32> <i32 0, i32 5, i32 2, i32 poison>
  %i.py = insertelement <4 x float> %i.px, float %.sroa.70.0, i64 3
  %i.pz = shufflevector <4 x float> %i.pw, <4 x float> %i.pb, <4 x i32> <i32 0, i32 5, i32 poison, i32 7>
  %i.qa = insertelement <4 x float> %i.pz, float %.sroa.52.0, i64 2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit, %.preheader
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 8 ; 2 uses
  %i.qb = icmp ugt i64 %1, %indvars.iv.next169
  br i1 %i.qb, label %.preheader140, label %..loopexit_crit_edge, !llvm.loop !107

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit
  %.0148 = phi i64 [ %i.us, %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit ], [ 0, %.lr.ph.preheader ] ; 4 uses
  br i1 %i.ai, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph
  %i.qc = mul i64 %.0148, %0
  %gep152 = getelementptr [4 x i8], ptr %invariant.gep149, i64 %i.qc ; 4 uses
  %i.qd = load <2 x float>, ptr %gep152, align 1
  %.sroa.0111.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %gep152, i64 8
  %i.qe = load <2 x float>, ptr %.sroa.0111.sroa.7.0..sroa_idx, align 1
  %.sroa.0111.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %gep152, i64 16
  %i.qf = load <2 x float>, ptr %.sroa.0111.sroa.9.0..sroa_idx, align 1
  %.sroa.0111.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %gep152, i64 24
  %i.qg = load <2 x float>, ptr %.sroa.0111.sroa.11.0..sroa_idx, align 1
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !noalias !112
  br i1 %i.al, label %.lr.ph.preheader.i, label %_ZN5faiss12_GLOBAL__N_125load_simd8float32_partialILNS_9SIMDLevelE0EEENS_16simd8float32_tplIXT_EEEPKfi.exit

.lr.ph.preheader.i:                               ; preds = %bb.s
  %i.qh = mul i64 %.0148, %0
  %gep150 = getelementptr [4 x i8], ptr %invariant.gep149, i64 %i.qh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 32 %i.a, ptr readonly align 4 %gep150, i64 %i.an, i1 false), !tbaa !14, !noalias !112
  %.0. = load <2 x float>, ptr %i.a, align 32
  %.8. = load <2 x float>, ptr %.8..8..8..sroa_idx, align 8
  %.16. = load <2 x float>, ptr %.16..16..16..sroa_idx, align 16
  %.24. = load <2 x float>, ptr %.24..24..24..sroa_idx, align 8
  br label %_ZN5faiss12_GLOBAL__N_125load_simd8float32_partialILNS_9SIMDLevelE0EEENS_16simd8float32_tplIXT_EEEPKfi.exit

_ZN5faiss12_GLOBAL__N_125load_simd8float32_partialILNS_9SIMDLevelE0EEENS_16simd8float32_tplIXT_EEEPKfi.exit: ; preds = %bb.s, %.lr.ph.preheader.i
  %i.qi = phi <2 x float> [ zeroinitializer, %bb.s ], [ %.0., %.lr.ph.preheader.i ]
  %i.qj = phi <2 x float> [ zeroinitializer, %bb.s ], [ %.8., %.lr.ph.preheader.i ]
  %i.qk = phi <2 x float> [ zeroinitializer, %bb.s ], [ %.16., %.lr.ph.preheader.i ]
  %i.ql = phi <2 x float> [ zeroinitializer, %bb.s ], [ %.24., %.lr.ph.preheader.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.t

bb.t:                                             ; preds = %_ZN5faiss12_GLOBAL__N_125load_simd8float32_partialILNS_9SIMDLevelE0EEENS_16simd8float32_tplIXT_EEEPKfi.exit, %bb.r
  %i.qm = phi <2 x float> [ %i.qd, %bb.r ], [ %i.qi, %_ZN5faiss12_GLOBAL__N_125load_simd8float32_partialILNS_9SIMDLevelE0EEENS_16simd8float32_tplIXT_EEEPKfi.exit ] ; 4 uses
  %i.qn = phi <2 x float> [ %i.qe, %bb.r ], [ %i.qj, %_ZN5faiss12_GLOBAL__N_125load_simd8float32_partialILNS_9SIMDLevelE0EEENS_16simd8float32_tplIXT_EEEPKfi.exit ] ; 4 uses
  %i.qo = phi <2 x float> [ %i.qf, %bb.r ], [ %i.qk, %_ZN5faiss12_GLOBAL__N_125load_simd8float32_partialILNS_9SIMDLevelE0EEENS_16simd8float32_tplIXT_EEEPKfi.exit ] ; 4 uses
  %i.qp = phi <2 x float> [ %i.qg, %bb.r ], [ %i.ql, %_ZN5faiss12_GLOBAL__N_125load_simd8float32_partialILNS_9SIMDLevelE0EEENS_16simd8float32_tplIXT_EEEPKfi.exit ] ; 4 uses
  %i.qq = shufflevector <2 x float> %i.qp, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.qr = mul i64 %.0148, %i.c
  %i.qs = add i64 %i.qr, %.068156
  %i.qt = mul i64 %i.qs, %1
  %gep147 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.qt ; 5 uses
  br i1 %5, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.qu = shufflevector <2 x float> %i.qm, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.qv = shufflevector <2 x float> %i.qn, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.qw = shufflevector <2 x float> %i.qo, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.qx = shufflevector <2 x float> %i.qm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.qy = fmul <4 x float> %i.qx, %i.oq
  %i.qz = fmul <4 x float> %i.qu, %i.op
  %i.ra = shufflevector <2 x float> %i.qn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.rb = fmul <4 x float> %i.ra, %i.ou
  %i.rc = fmul <4 x float> %i.qv, %i.ot
  %i.rd = shufflevector <2 x float> %i.qo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.re = fmul <4 x float> %i.rd, %i.oy
  %i.rf = fmul <4 x float> %i.qw, %i.ox
  %i.rg = fadd <4 x float> %i.qz, %i.qy           ; 4 uses
  %i.rh = fadd <4 x float> %i.rc, %i.rb           ; 3 uses
  %i.ri = fadd <4 x float> %i.rf, %i.re           ; 2 uses
  %i.rj = fmul <4 x float> %i.qu, %i.or
  %i.rk = fmul <4 x float> %i.qx, %i.os
  %i.rl = fmul <4 x float> %i.qv, %i.ov
  %i.rm = fmul <4 x float> %i.ra, %i.ow
  %i.rn = fmul <4 x float> %i.qw, %i.oz
  %i.ro = fmul <4 x float> %i.rd, %i.pa
  %i.rp = fadd <4 x float> %i.rj, %i.rk           ; 4 uses
  %i.rq = fadd <4 x float> %i.rl, %i.rm           ; 3 uses
  %i.rr = fadd <4 x float> %i.rn, %i.ro           ; 2 uses
  switch i64 %i.ao, label %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit [
    i64 4, label %bb.v
    i64 3, label %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split.sink.split.sink.split
    i64 2, label %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split.sink.split
    i64 1, label %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split
  ]

bb.v:                                             ; preds = %bb.u
  %i.rs = shufflevector <2 x float> %i.qp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.rt = fmul <4 x float> %i.rs, %i.pu
  %i.ru = fmul <4 x float> %i.qq, %i.pv
  %i.rv = fadd <4 x float> %i.ru, %i.rt
  %i.rw = fmul <4 x float> %i.qq, %i.py
  %i.rx = fmul <4 x float> %i.rs, %i.qa
  %i.ry = fadd <4 x float> %i.rw, %i.rx
  br label %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split.sink.split.sink.split.sink.split

bb.w:                                             ; preds = %bb.t
  %i.rz = shufflevector <2 x float> %i.qm, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.sa = fsub <4 x float> %i.rz, %i.pf           ; 2 uses
  %i.sb = shufflevector <2 x float> %i.qm, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.sc = fsub <4 x float> %i.sb, %i.pg           ; 2 uses
  %i.sd = shufflevector <2 x float> %i.qn, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.se = fsub <4 x float> %i.sd, %i.ph           ; 2 uses
  %i.sf = shufflevector <2 x float> %i.qn, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.sg = fsub <4 x float> %i.sf, %i.pi           ; 2 uses
  %i.sh = shufflevector <2 x float> %i.qo, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.si = fsub <4 x float> %i.sh, %i.pj           ; 2 uses
  %i.sj = shufflevector <2 x float> %i.qo, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.sk = fsub <4 x float> %i.sj, %i.pk           ; 2 uses
  %i.sl = fmul <4 x float> %i.sa, %i.sa
  %i.sm = fmul <4 x float> %i.sc, %i.sc
  %i.sn = fmul <4 x float> %i.se, %i.se
  %i.so = fmul <4 x float> %i.sg, %i.sg
  %i.sp = fmul <4 x float> %i.si, %i.si
  %i.sq = fmul <4 x float> %i.sk, %i.sk
  %i.sr = fadd <4 x float> %i.sl, %i.sm           ; 4 uses
  %i.ss = fadd <4 x float> %i.sn, %i.so           ; 3 uses
  %i.st = fadd <4 x float> %i.sp, %i.sq           ; 2 uses
  %i.su = fsub <4 x float> %i.rz, %i.pl           ; 2 uses
  %i.sv = fsub <4 x float> %i.sb, %i.pm           ; 2 uses
  %i.sw = fmul <4 x float> %i.su, %i.su
  %i.sx = fmul <4 x float> %i.sv, %i.sv
  %i.sy = fsub <4 x float> %i.sd, %i.pn           ; 2 uses
  %i.sz = fsub <4 x float> %i.sf, %i.po           ; 2 uses
  %i.ta = fmul <4 x float> %i.sy, %i.sy
  %i.tb = fmul <4 x float> %i.sz, %i.sz
  %i.tc = fsub <4 x float> %i.sh, %i.pp           ; 2 uses
  %i.td = fsub <4 x float> %i.sj, %i.pq           ; 2 uses
  %i.te = fmul <4 x float> %i.tc, %i.tc
  %i.tf = fmul <4 x float> %i.td, %i.td
  %i.tg = fadd <4 x float> %i.sw, %i.sx           ; 4 uses
  %i.th = fadd <4 x float> %i.ta, %i.tb           ; 3 uses
  %i.ti = fadd <4 x float> %i.te, %i.tf           ; 2 uses
  switch i64 %i.ao, label %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit [
    i64 4, label %bb.x
    i64 3, label %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split.sink.split.sink.split
    i64 2, label %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split.sink.split
    i64 1, label %_ZN5faiss12_GLOBAL__N_116pq2_8cents_tableILNS_9SIMDLevelE0ELb1EEEvPKNS_16simd8float32_tplIXT_EEES4_Pfmm.exit.sink.split
  ]

bb.x:                                             ; preds = %bb.w
  %i.tj = shufflevector <2 x float> %i.qp, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.tk = fsub <4 x float> %i.tj, %i.pc           ; 2 uses
  %i.tl = fmul <4 x float> %i.tk, %i.tk
  %i.tm = shufflevector <2 x float> %i.qp, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.tn = fsub <4 x float> %i.tm, %i.pd           ; 2 uses
  %i.to = fmul <4 x float> %i.tn, %i.tn
  %i.tp = fadd <4 x float> %i.tl, %i.to
end_hunk_1
