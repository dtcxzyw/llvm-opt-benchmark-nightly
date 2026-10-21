Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/mx_node?download=true
inline.NumInlined: 9612
inline.NumDeleted: 1756
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 219
begin_hunk_0_@_ZNK6casadi17SetNonzerosSlice2ILb0EE4evalEPPKdPPdPxS5_:bb.a
  br i1 %i.k, label %bb.d, label %bb.e, !prof !116

bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit.i
  %.idx.i = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr align 8 %i.a, i64 %.idx.i, i1 false)
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i

bb.e:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit.i
  %i.l = icmp eq i64 %i.j, 1
  br i1 %i.l, label %bb.f, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.m = load double, ptr %i.a, align 8, !tbaa !168
  store double %i.m, ptr %i.d, align 8, !tbaa !168
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i

_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i:               ; preds = %bb.f, %bb.e, %bb.d, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = load i64, ptr %i.o, align 8, !tbaa !296  ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.p
  %i.r = load i64, ptr %i.n, align 8, !tbaa !295  ; 2 uses
  %.not2429.i = icmp eq i64 %i.r, %i.p
  br i1 %.not2429.i, label %_ZNK6casadi17SetNonzerosSlice2ILb0EE8eval_genIdEEiPPKT_PPS3_PxS7_.exit, label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load i64, ptr %i.s, align 8, !tbaa !298  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load i64, ptr %i.u, align 8, !tbaa !299  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.x = load i64, ptr %i.w, align 8, !tbaa !297
  %.not2526.i = icmp eq i64 %i.t, %i.v
  br i1 %.not2526.i, label %_ZNK6casadi17SetNonzerosSlice2ILb0EE8eval_genIdEEiPPKT_PPS3_PxS7_.exit, label %.lr.ph32.i.split

.lr.ph32.i.split:                                 ; preds = %.lr.ph32.i
  %i.y = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.r
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !300
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i.loopexit, %.lr.ph32.i.split
  %.02031.i = phi ptr [ %i.y, %.lr.ph32.i.split ], [ %i.ad, %._crit_edge.i.loopexit ] ; 3 uses
  %.02130.i = phi ptr [ %i.c, %.lr.ph32.i.split ], [ %i.ae, %._crit_edge.i.loopexit ]
  %i.ab = getelementptr inbounds [8 x i8], ptr %.02031.i, i64 %i.v
  %i.ac = getelementptr inbounds [8 x i8], ptr %.02031.i, i64 %i.t
  br label %bb.g

._crit_edge.i.loopexit:                           ; preds = %bb.g
  %i.ad = getelementptr inbounds [8 x i8], ptr %.02031.i, i64 %i.x ; 2 uses
  %.not24.i = icmp eq ptr %i.ad, %i.q
  br i1 %.not24.i, label %_ZNK6casadi17SetNonzerosSlice2ILb0EE8eval_genIdEEiPPKT_PPS3_PxS7_.exit, label %.lr.ph.i, !llvm.loop !1801

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %.028.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %i.ag, %bb.g ] ; 2 uses
  %.127.i = phi ptr [ %.02130.i, %.lr.ph.i ], [ %i.ae, %bb.g ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.127.i, i64 8 ; 2 uses
  %i.af = load double, ptr %.127.i, align 8, !tbaa !168
  store double %i.af, ptr %.028.i, align 8, !tbaa !168
  %i.ag = getelementptr inbounds [8 x i8], ptr %.028.i, i64 %i.aa ; 2 uses
  %.not25.i = icmp eq ptr %i.ag, %i.ab
  br i1 %.not25.i, label %._crit_edge.i.loopexit, label %bb.g, !llvm.loop !1802

_ZNK6casadi17SetNonzerosSlice2ILb0EE8eval_genIdEEiPPKT_PPS3_PxS7_.exit: ; preds = %._crit_edge.i.loopexit, %.lr.ph32.i, %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi17SetNonzerosSlice2ILb0EE7eval_sxEPPKNS_6SXElemEPPS2_PxS6_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK6casadi17SetNonzerosSlice2ILb0EE8eval_genINS_6SXElemEEEiPPKT_PPS4_PxS8_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi17SetNonzerosSlice2ILb0EE7eval_mxERKSt6vectorINS_2MXESaIS3_EERS5_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %.loopexit, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = add nuw nsw i64 %.079.i, 1               ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %.not.i = icmp ult i64 %i.f, %i.l
  br i1 %.not.i, label %.lr.ph.i, label %.loopexit, !llvm.loop !20

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %i.m = phi ptr [ %i.h, %bb.b ], [ %i.d, %bb.a ]
  %.079.i = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.079.i
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.p = load ptr, ptr %1, align 8, !tbaa !49
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.079.i
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  %i.s = tail call noundef zeroext i1 @_ZNK6casadi8Sparsity8is_equalERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  br i1 %i.s, label %bb.b, label %_ZNK6casadi6MXNode16matches_sparsityINS_2MXEEEbRKSt6vectorIT_SaIS4_EE.exit

_ZNK6casadi6MXNode16matches_sparsityINS_2MXEEEbRKSt6vectorIT_SaIS4_EE.exit: ; preds = %.lr.ph.i
  tail call void @_ZNK6casadi11SetNonzerosILb0EE7eval_mxERKSt6vectorINS_2MXESaIS3_EERS5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.d

.loopexit:                                        ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.t = load ptr, ptr %1, align 8, !tbaa !49     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #36, !noalias !1805, !inline_history !7 ; 6 uses
  invoke void @_ZN6casadi11SetNonzerosILb0EEC2ERKNS_2MXES4_(ptr noundef nonnull align 8 dereferenceable(112) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %_ZN6casadi11SetNonzerosILb0EE6createERKNS_2MXES4_RKNS_5SliceES7_.exit unwind label %bb.c, !noalias !1805, !inline_history !8

common.resume:                                    ; preds = %bb.e, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.c ], [ %i.ad, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %.loopexit
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 112) #33, !noalias !1805, !inline_history !7
  br label %common.resume

_ZN6casadi11SetNonzerosILb0EE6createERKNS_2MXES4_RKNS_5SliceES7_.exit: ; preds = %.loopexit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 896) (i8, ptr @_ZTVN6casadi17SetNonzerosSlice2ILb0EEE, i64 16), ptr %i.v, align 8, !tbaa !32, !noalias !1805
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !1805
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !1805
  call void @_ZN6casadi2MX6createEPNS_6MXNodeE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %3, ptr noundef nonnull %i.v), !inline_history !7
  %i.ab = load ptr, ptr %2, align 8, !tbaa !49
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN6casadi2MXaSERKS0_.exit unwind label %bb.e ; 0 uses

_ZN6casadi2MXaSERKS0_.exit:                       ; preds = %_ZN6casadi11SetNonzerosILb0EE6createERKNS_2MXES4_RKNS_5SliceES7_.exit
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.d

bb.d:                                             ; preds = %_ZN6casadi2MXaSERKS0_.exit, %_ZNK6casadi6MXNode16matches_sparsityINS_2MXEEEbRKSt6vectorIT_SaIS4_EE.exit
  ret void

bb.e:                                             ; preds = %_ZN6casadi11SetNonzerosILb0EE6createERKNS_2MXES4_RKNS_5SliceES7_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi17SetNonzerosSlice2ILb0EE10sp_forwardEPPKyPPyPxS5_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !111    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !111
  %i.d = load ptr, ptr %2, align 8, !tbaa !111    ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 392
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 0), !inline_history !6
  %i.i = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 3 uses
  %.not = icmp eq ptr %i.d, %i.a
  br i1 %.not, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp sgt i64 %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.d, !prof !116

bb.c:                                             ; preds = %bb.b
  %.idx = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr align 8 %i.a, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.i, 1
  br i1 %i.k, label %bb.e, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !97
  store i64 %i.l, ptr %i.d, align 8, !tbaa !97
  br label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit

_ZSt4copyIPKyPyET0_T_S4_S3_.exit:                 ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load i64, ptr %i.m, align 8, !tbaa !295  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !296  ; 2 uses
  %.not2227 = icmp eq i64 %i.n, %i.p
  br i1 %.not2227, label %._crit_edge31, label %.lr.ph30

.lr.ph30:                                         ; preds = %_ZSt4copyIPKyPyET0_T_S4_S3_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.a = load i64, ptr %i.r, align 8, !tbaa !299
  br label %bb.f

._crit_edge31:                                    ; preds = %._crit_edge, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit
  ret i32 0

bb.f:                                             ; preds = %.lr.ph30, %._crit_edge
  %i.u = phi i64 [ %i.p, %.lr.ph30 ], [ %i.x, %._crit_edge ]
  %i.v = phi i64 [ %.pre.a, %.lr.ph30 ], [ %i.y, %._crit_edge ] ; 2 uses
  %.01829.a = phi i64 [ %i.n, %.lr.ph30 ], [ %i.aa, %._crit_edge ] ; 3 uses
  %.01928 = phi ptr [ %i.c, %.lr.ph30 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %5 = load i64, ptr %i.q, align 8, !tbaa !298    ; 2 uses
  %.not2324 = icmp eq i64 %5, %i.v
  br i1 %.not2324, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.w = add nsw i64 %5, %.01829.a
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre32.a = load i64, ptr %i.o, align 8, !tbaa !296
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %i.x = phi i64 [ %i.u, %bb.f ], [ %.pre32.a, %._crit_edge.loopexit ] ; 2 uses
  %i.y = phi i64 [ %i.v, %bb.f ], [ %i.ag, %._crit_edge.loopexit ]
  %.1.lcssa = phi ptr [ %.01928, %bb.f ], [ %i.ab, %._crit_edge.loopexit ]
  %i.z = load i64, ptr %i.t, align 8, !tbaa !297
  %i.aa = add nsw i64 %i.z, %.01829.a             ; 2 uses
  %.not22 = icmp eq i64 %i.aa, %i.x
  br i1 %.not22, label %._crit_edge31, label %bb.f, !llvm.loop !1806

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.026 = phi i64 [ %i.af, %.lr.ph ], [ %i.w, %.lr.ph.preheader ] ; 2 uses
  %.125 = phi ptr [ %i.ab, %.lr.ph ], [ %.01928, %.lr.ph.preheader ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.125, i64 8 ; 2 uses
  %i.ac = load i64, ptr %.125, align 8, !tbaa !97
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.026
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !97
  %i.ae = load i64, ptr %i.s, align 8, !tbaa !300
  %i.af = add nsw i64 %i.ae, %.026                ; 2 uses
  %i.ag = load i64, ptr %i.r, align 8, !tbaa !299 ; 2 uses
  %i.ah = add nsw i64 %i.ag, %.01829.a
  %.not23 = icmp eq i64 %i.af, %i.ah
  br i1 %.not23, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !1807
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi17SetNonzerosSlice2ILb0EE10sp_reverseEPPyS3_PxS2_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !111    ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i64, ptr %i.b, align 8, !tbaa !295  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !296  ; 2 uses
  %.not21 = icmp eq i64 %i.c, %i.e
  br i1 %.not21, label %._crit_edge26, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !111
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.a = load i64, ptr %i.i, align 8, !tbaa !299
  br label %bb.b

._crit_edge26:                                    ; preds = %._crit_edge, %bb.a
  %i.l = load ptr, ptr %1, align 8, !tbaa !111    ; 7 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 392
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.o(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 0), !inline_history !6
  %i.q = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 8 uses
  %.not.i = icmp ne ptr %i.l, %i.a
  %i.r = icmp sgt i64 %i.q, 0
  %or.cond.i = and i1 %.not.i, %i.r
  br i1 %or.cond.i, label %.lr.ph.i.preheader, label %_ZN6casadi6MXNode8copy_revEPyS1_x.exit

.lr.ph.i.preheader:                               ; preds = %._crit_edge26
  %min.iters.check = icmp ult i64 %i.q, 6
  br i1 %min.iters.check, label %.lr.ph.i.preheader44, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.s = shl i64 %i.q, 3                          ; 2 uses
  %i.t = getelementptr i8, ptr %i.l, i64 %i.s
  %i.u = getelementptr i8, ptr %i.a, i64 %i.s
  %bound0 = icmp ult ptr %i.l, %i.u
  %bound1 = icmp ult ptr %i.a, %i.t
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader44, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.q, 9223372036854775804      ; 4 uses
  %i.v = shl i64 %n.vec, 3                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.l, i64 %i.v
  %i.x = getelementptr i8, ptr %i.a, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.l, i64 %i.y ; 3 uses
  %next.gep38 = getelementptr i8, ptr %i.a, i64 %i.y ; 3 uses
  %i.z = getelementptr i8, ptr %next.gep38, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep38, align 8, !tbaa !97, !alias.scope !1816
  %wide.load39 = load <2 x i64>, ptr %i.z, align 8, !tbaa !97, !alias.scope !1816
  %i.aa = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load40 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !97, !alias.scope !1817, !noalias !1816
  %wide.load41 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !97, !alias.scope !1817, !noalias !1816
  %i.ab = or <2 x i64> %wide.load40, %wide.load
  %i.ac = or <2 x i64> %wide.load41, %wide.load39
  store <2 x i64> %i.ab, ptr %next.gep, align 8, !tbaa !97, !alias.scope !1817, !noalias !1816
  store <2 x i64> %i.ac, ptr %i.aa, align 8, !tbaa !97, !alias.scope !1817, !noalias !1816
  store <2 x i64> zeroinitializer, ptr %next.gep38, align 8, !tbaa !97, !alias.scope !1816
  store <2 x i64> zeroinitializer, ptr %i.z, align 8, !tbaa !97, !alias.scope !1816
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1811

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZN6casadi6MXNode8copy_revEPyS1_x.exit, label %.lr.ph.i.preheader44

.lr.ph.i.preheader44:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.013.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.0712.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.preheader ], [ %i.w, %middle.block ] ; 2 uses
  %.0811.i.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.i.preheader ], [ %i.x, %middle.block ] ; 2 uses
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader44, %.lr.ph.i.prol
  %.013.i.prol = phi i64 [ %i.aj, %.lr.ph.i.prol ], [ %.013.i.ph, %.lr.ph.i.preheader44 ]
  %.0712.i.prol = phi ptr [ %i.af, %.lr.ph.i.prol ], [ %.0712.i.ph, %.lr.ph.i.preheader44 ] ; 3 uses
  %.0811.i.prol = phi ptr [ %i.ai, %.lr.ph.i.prol ], [ %.0811.i.ph, %.lr.ph.i.preheader44 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader44 ]
  %i.ae = load i64, ptr %.0811.i.prol, align 8, !tbaa !97
  %i.af = getelementptr inbounds nuw i8, ptr %.0712.i.prol, i64 8 ; 2 uses
  %i.ag = load i64, ptr %.0712.i.prol, align 8, !tbaa !97
  %i.ah = or i64 %i.ag, %i.ae
  store i64 %i.ah, ptr %.0712.i.prol, align 8, !tbaa !97
  %i.ai = getelementptr inbounds nuw i8, ptr %.0811.i.prol, i64 8 ; 2 uses
  store i64 0, ptr %.0811.i.prol, align 8, !tbaa !97
  %i.aj = add nuw nsw i64 %.013.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1812

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader44
  %.013.i.unr = phi i64 [ %.013.i.ph, %.lr.ph.i.preheader44 ], [ %i.aj, %.lr.ph.i.prol ]
  %.0712.i.unr = phi ptr [ %.0712.i.ph, %.lr.ph.i.preheader44 ], [ %i.af, %.lr.ph.i.prol ]
  %.0811.i.unr = phi ptr [ %.0811.i.ph, %.lr.ph.i.preheader44 ], [ %i.ai, %.lr.ph.i.prol ]
  %i.ak = sub nsw i64 %.013.i.ph, %i.q
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %_ZN6casadi6MXNode8copy_revEPyS1_x.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.013.i = phi i64 [ %i.bg, %.lr.ph.i ], [ %.013.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0712.i = phi ptr [ %i.bc, %.lr.ph.i ], [ %.0712.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.0811.i = phi ptr [ %i.bf, %.lr.ph.i ], [ %.0811.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.am = load i64, ptr %.0811.i, align 8, !tbaa !97
  %i.an = getelementptr inbounds nuw i8, ptr %.0712.i, i64 8 ; 2 uses
  %i.ao = load i64, ptr %.0712.i, align 8, !tbaa !97
  %i.ap = or i64 %i.ao, %i.am
  store i64 %i.ap, ptr %.0712.i, align 8, !tbaa !97
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i, i64 8 ; 2 uses
  store i64 0, ptr %.0811.i, align 8, !tbaa !97
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !97
  %i.as = getelementptr inbounds nuw i8, ptr %.0712.i, i64 16 ; 2 uses
  %i.at = load i64, ptr %i.an, align 8, !tbaa !97
  %i.au = or i64 %i.at, %i.ar
  store i64 %i.au, ptr %i.an, align 8, !tbaa !97
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.i, i64 16 ; 2 uses
  store i64 0, ptr %i.aq, align 8, !tbaa !97
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !97
  %i.ax = getelementptr inbounds nuw i8, ptr %.0712.i, i64 24 ; 2 uses
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !97
  %i.az = or i64 %i.ay, %i.aw
  store i64 %i.az, ptr %i.as, align 8, !tbaa !97
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i, i64 24 ; 2 uses
  store i64 0, ptr %i.av, align 8, !tbaa !97
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !97
  %i.bc = getelementptr inbounds nuw i8, ptr %.0712.i, i64 32
  %i.bd = load i64, ptr %i.ax, align 8, !tbaa !97
  %i.be = or i64 %i.bd, %i.bb
  store i64 %i.be, ptr %i.ax, align 8, !tbaa !97
  %i.bf = getelementptr inbounds nuw i8, ptr %.0811.i, i64 32
  store i64 0, ptr %i.ba, align 8, !tbaa !97
  %i.bg = add nuw nsw i64 %.013.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bg, %i.q
  br i1 %exitcond.not.i.3, label %_ZN6casadi6MXNode8copy_revEPyS1_x.exit, label %.lr.ph.i, !llvm.loop !1813

_ZN6casadi6MXNode8copy_revEPyS1_x.exit:           ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %._crit_edge26
  ret i32 0

bb.b:                                             ; preds = %.lr.ph25, %._crit_edge
  %i.bh = phi i64 [ %i.e, %.lr.ph25 ], [ %i.bk, %._crit_edge ]
  %i.bi = phi i64 [ %.pre.a, %.lr.ph25 ], [ %i.bl, %._crit_edge ] ; 2 uses
  %.01523.a = phi i64 [ %i.c, %.lr.ph25 ], [ %i.bn, %._crit_edge ] ; 3 uses
  %.01622 = phi ptr [ %i.g, %.lr.ph25 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %5 = load i64, ptr %i.h, align 8, !tbaa !298    ; 2 uses
  %.not1718 = icmp eq i64 %5, %i.bi
  br i1 %.not1718, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.bj = add nsw i64 %5, %.01523.a
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre27.a = load i64, ptr %i.d, align 8, !tbaa !296
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.bk = phi i64 [ %i.bh, %bb.b ], [ %.pre27.a, %._crit_edge.loopexit ] ; 2 uses
  %i.bl = phi i64 [ %i.bi, %bb.b ], [ %i.bv, %._crit_edge.loopexit ]
  %.1.lcssa = phi ptr [ %.01622, %bb.b ], [ %i.bq, %._crit_edge.loopexit ]
  %i.bm = load i64, ptr %i.k, align 8, !tbaa !297
  %i.bn = add nsw i64 %i.bm, %.01523.a            ; 2 uses
  %.not = icmp eq i64 %i.bn, %i.bk
  br i1 %.not, label %._crit_edge26, label %bb.b, !llvm.loop !1814

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.020 = phi i64 [ %i.bu, %.lr.ph ], [ %i.bj, %.lr.ph.preheader ] ; 2 uses
  %.119 = phi ptr [ %i.bq, %.lr.ph ], [ %.01622, %.lr.ph.preheader ] ; 3 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.020 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !97
  %i.bq = getelementptr inbounds nuw i8, ptr %.119, i64 8 ; 2 uses
  %i.br = load i64, ptr %.119, align 8, !tbaa !97
  %i.bs = or i64 %i.br, %i.bp
  store i64 %i.bs, ptr %.119, align 8, !tbaa !97
  store i64 0, ptr %i.bo, align 8, !tbaa !97
  %i.bt = load i64, ptr %i.j, align 8, !tbaa !300
  %i.bu = add nsw i64 %i.bt, %.020                ; 2 uses
  %i.bv = load i64, ptr %i.i, align 8, !tbaa !299 ; 2 uses
  %i.bw = add nsw i64 %i.bv, %.01523.a
  %.not17 = icmp eq i64 %i.bu, %i.bw
  br i1 %.not17, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !1815
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6casadi17SetNonzerosSlice2ILb0EE4infoB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::map.120") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, casadi::GenericType>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, casadi::GenericType>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 6 uses
  %3 = alloca [3 x %"struct.std::pair.226"], align 8 ; 20 uses
  %4 = alloca %"class.std::map.120", align 8      ; 12 uses
  %5 = alloca %"class.std::map.120", align 8      ; 9 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @_ZNK6casadi5Slice4infoB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::map.120") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEEC2IRA6_KcSt3mapIS5_S8_St4lessIS5_ESaIS9_EETnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISK_SL_EEEbE4typeELb1EEEOSK_OSL_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 1 dereferenceable(6) @.str.284, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %bb.b unwind label %.thread31

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88
  invoke void @_ZNK6casadi5Slice4infoB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::map.120") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEEC2IRA6_KcSt3mapIS5_S8_St4lessIS5_ESaIS9_EETnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISK_SL_EEEbE4typeELb1EEEOSK_OSL_(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 1 dereferenceable(6) @.str.285, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i8 0, ptr %i.a, align 1, !tbaa !166
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEEC2IRA4_KcbTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 1 dereferenceable(4) @.str.130, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %.lr.ph.i.i unwind label %bb.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i32 0, ptr %i.f, align 8, !tbaa !86
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.g, align 8, !tbaa !87
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.f, ptr %i.h, align 8, !tbaa !88
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.f, ptr %i.i, align 8, !tbaa !89
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr %0, ptr %2, align 8, !tbaa !270
  %i.k = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc.i unwind label %.body  ; 0 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.l = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc.i.1 unwind label %.body ; 0 uses

.noexc.i.1:                                       ; preds = %.noexc.i
  %i.m = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc.i.2 unwind label %.body ; 0 uses

.noexc.i.2:                                       ; preds = %.noexc.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i unwind label %bb.e

.body:                                            ; preds = %.noexc.i.1, %.noexc.i, %.lr.ph.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #32
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.p) #32
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.q) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #32
  br label %.loopexit36

bb.e:                                             ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit.1, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit, %.noexc.i.2
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #34
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i: ; preds = %.noexc.i.2
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !59   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !60
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #33
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit: ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 72
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i.1 unwind label %bb.e

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !59 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i.1
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !60
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #33
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit.1

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit.1: ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 32
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i.2 unwind label %bb.e

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit.1
  %i.ah = load ptr, ptr %3, align 8, !tbaa !59    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2: ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i.2
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !60
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #33
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit.2

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit.2: ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !87
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.an)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit.2
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #34
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit.2
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !87
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.ar)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit24 unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #34
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit24: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

.thread31:                                        ; preds = %bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %.loopexit

.thread:                                          ; preds = %bb.b
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %.preheader.preheader

bb.h:                                             ; preds = %bb.c
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit36

.loopexit36:                                      ; preds = %.body, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.i ], [ %i.o, %.body ]
  %i.ay = phi i1 [ false, %bb.i ], [ true, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %.loopexit36
  %.015 = phi ptr [ %i.e, %.loopexit36 ], [ %i.c, %bb.h ]
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.loopexit36 ], [ %i.aw, %bb.h ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK6casadi17SetNonzerosSlice2ILb1EE4evalEPPKdPPdPxS5_:bb.a
bb.d:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit.i
  %.idx.i = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr align 8 %i.a, i64 %.idx.i, i1 false)
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i

bb.e:                                             ; preds = %_ZNK6casadi6MXNode3depEx.exit.i
  %i.l = icmp eq i64 %i.j, 1
  br i1 %i.l, label %bb.f, label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.m = load double, ptr %i.a, align 8, !tbaa !168
  store double %i.m, ptr %i.d, align 8, !tbaa !168
  br label %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i

_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i:               ; preds = %bb.f, %bb.e, %bb.d, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = load i64, ptr %i.o, align 8, !tbaa !308  ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.p
  %i.r = load i64, ptr %i.n, align 8, !tbaa !307  ; 2 uses
  %.not2429.i = icmp eq i64 %i.r, %i.p
  br i1 %.not2429.i, label %_ZNK6casadi17SetNonzerosSlice2ILb1EE8eval_genIdEEiPPKT_PPS3_PxS7_.exit, label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load i64, ptr %i.s, align 8, !tbaa !310  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load i64, ptr %i.u, align 8, !tbaa !311  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.x = load i64, ptr %i.w, align 8, !tbaa !309
  %.not2526.i = icmp eq i64 %i.t, %i.v
  br i1 %.not2526.i, label %_ZNK6casadi17SetNonzerosSlice2ILb1EE8eval_genIdEEiPPKT_PPS3_PxS7_.exit, label %.lr.ph32.i.split

.lr.ph32.i.split:                                 ; preds = %.lr.ph32.i
  %i.y = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.r
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !312
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i.loopexit, %.lr.ph32.i.split
  %.02031.i = phi ptr [ %i.y, %.lr.ph32.i.split ], [ %i.ad, %._crit_edge.i.loopexit ] ; 3 uses
  %.02130.i = phi ptr [ %i.c, %.lr.ph32.i.split ], [ %i.ae, %._crit_edge.i.loopexit ]
  %i.ab = getelementptr inbounds [8 x i8], ptr %.02031.i, i64 %i.v
  %i.ac = getelementptr inbounds [8 x i8], ptr %.02031.i, i64 %i.t
  br label %bb.g

._crit_edge.i.loopexit:                           ; preds = %bb.g
  %i.ad = getelementptr inbounds [8 x i8], ptr %.02031.i, i64 %i.x ; 2 uses
  %.not24.i = icmp eq ptr %i.ad, %i.q
  br i1 %.not24.i, label %_ZNK6casadi17SetNonzerosSlice2ILb1EE8eval_genIdEEiPPKT_PPS3_PxS7_.exit, label %.lr.ph.i, !llvm.loop !1900

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %.028.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %i.ai, %bb.g ] ; 3 uses
  %.127.i = phi ptr [ %.02130.i, %.lr.ph.i ], [ %i.ae, %bb.g ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.127.i, i64 8 ; 2 uses
  %i.af = load double, ptr %.127.i, align 8, !tbaa !168
  %i.ag = load double, ptr %.028.i, align 8, !tbaa !168
  %i.ah = fadd double %i.af, %i.ag
  store double %i.ah, ptr %.028.i, align 8, !tbaa !168
  %i.ai = getelementptr inbounds [8 x i8], ptr %.028.i, i64 %i.aa ; 2 uses
  %.not25.i = icmp eq ptr %i.ai, %i.ab
  br i1 %.not25.i, label %._crit_edge.i.loopexit, label %bb.g, !llvm.loop !1901

_ZNK6casadi17SetNonzerosSlice2ILb1EE8eval_genIdEEiPPKT_PPS3_PxS7_.exit: ; preds = %._crit_edge.i.loopexit, %.lr.ph32.i, %_ZSt4copyIPKdPdET0_T_S4_S3_.exit.i
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi17SetNonzerosSlice2ILb1EE7eval_sxEPPKNS_6SXElemEPPS2_PxS6_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK6casadi17SetNonzerosSlice2ILb1EE8eval_genINS_6SXElemEEEiPPKT_PPS4_PxS8_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6casadi17SetNonzerosSlice2ILb1EE7eval_mxERKSt6vectorINS_2MXESaIS3_EERS5_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %.loopexit, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = add nuw nsw i64 %.079.i, 1               ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %.not.i = icmp ult i64 %i.f, %i.l
  br i1 %.not.i, label %.lr.ph.i, label %.loopexit, !llvm.loop !20

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %i.m = phi ptr [ %i.h, %bb.b ], [ %i.d, %bb.a ]
  %.079.i = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.079.i
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.p = load ptr, ptr %1, align 8, !tbaa !49
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.079.i
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  %i.s = tail call noundef zeroext i1 @_ZNK6casadi8Sparsity8is_equalERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  br i1 %i.s, label %bb.b, label %_ZNK6casadi6MXNode16matches_sparsityINS_2MXEEEbRKSt6vectorIT_SaIS4_EE.exit

_ZNK6casadi6MXNode16matches_sparsityINS_2MXEEEbRKSt6vectorIT_SaIS4_EE.exit: ; preds = %.lr.ph.i
  tail call void @_ZNK6casadi11SetNonzerosILb1EE7eval_mxERKSt6vectorINS_2MXESaIS3_EERS5_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.d

.loopexit:                                        ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.t = load ptr, ptr %1, align 8, !tbaa !49     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #36, !noalias !1904, !inline_history !9 ; 6 uses
  invoke void @_ZN6casadi11SetNonzerosILb1EEC2ERKNS_2MXES4_(ptr noundef nonnull align 8 dereferenceable(112) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %_ZN6casadi11SetNonzerosILb1EE6createERKNS_2MXES4_RKNS_5SliceES7_.exit unwind label %bb.c, !noalias !1904, !inline_history !10

common.resume:                                    ; preds = %bb.e, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.c ], [ %i.ad, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %.loopexit
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 112) #33, !noalias !1904, !inline_history !9
  br label %common.resume

_ZN6casadi11SetNonzerosILb1EE6createERKNS_2MXES4_RKNS_5SliceES7_.exit: ; preds = %.loopexit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 896) (i8, ptr @_ZTVN6casadi17SetNonzerosSlice2ILb1EEE, i64 16), ptr %i.v, align 8, !tbaa !32, !noalias !1904
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !1904
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !1904
  call void @_ZN6casadi2MX6createEPNS_6MXNodeE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %3, ptr noundef nonnull %i.v), !inline_history !9
  %i.ab = load ptr, ptr %2, align 8, !tbaa !49
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN6casadi2MXaSERKS0_.exit unwind label %bb.e ; 0 uses

_ZN6casadi2MXaSERKS0_.exit:                       ; preds = %_ZN6casadi11SetNonzerosILb1EE6createERKNS_2MXES4_RKNS_5SliceES7_.exit
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.d

bb.d:                                             ; preds = %_ZN6casadi2MXaSERKS0_.exit, %_ZNK6casadi6MXNode16matches_sparsityINS_2MXEEEbRKSt6vectorIT_SaIS4_EE.exit
  ret void

bb.e:                                             ; preds = %_ZN6casadi11SetNonzerosILb1EE6createERKNS_2MXES4_RKNS_5SliceES7_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi17SetNonzerosSlice2ILb1EE10sp_forwardEPPKyPPyPxS5_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !111    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !111
  %i.d = load ptr, ptr %2, align 8, !tbaa !111    ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 392
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 0), !inline_history !6
  %i.i = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 3 uses
  %.not = icmp eq ptr %i.d, %i.a
  br i1 %.not, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp sgt i64 %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.d, !prof !116

bb.c:                                             ; preds = %bb.b
  %.idx = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr align 8 %i.a, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.i, 1
  br i1 %i.k, label %bb.e, label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !97
  store i64 %i.l, ptr %i.d, align 8, !tbaa !97
  br label %_ZSt4copyIPKyPyET0_T_S4_S3_.exit

_ZSt4copyIPKyPyET0_T_S4_S3_.exit:                 ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load i64, ptr %i.m, align 8, !tbaa !307  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !308  ; 2 uses
  %.not2227 = icmp eq i64 %i.n, %i.p
  br i1 %.not2227, label %._crit_edge31, label %.lr.ph30

.lr.ph30:                                         ; preds = %_ZSt4copyIPKyPyET0_T_S4_S3_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.a = load i64, ptr %i.r, align 8, !tbaa !311
  br label %bb.f

._crit_edge31:                                    ; preds = %._crit_edge, %_ZSt4copyIPKyPyET0_T_S4_S3_.exit
  ret i32 0

bb.f:                                             ; preds = %.lr.ph30, %._crit_edge
  %i.u = phi i64 [ %i.p, %.lr.ph30 ], [ %i.x, %._crit_edge ]
  %i.v = phi i64 [ %.pre.a, %.lr.ph30 ], [ %i.y, %._crit_edge ] ; 2 uses
  %.01829.a = phi i64 [ %i.n, %.lr.ph30 ], [ %i.aa, %._crit_edge ] ; 3 uses
  %.01928 = phi ptr [ %i.c, %.lr.ph30 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %5 = load i64, ptr %i.q, align 8, !tbaa !310    ; 2 uses
  %.not2324 = icmp eq i64 %5, %i.v
  br i1 %.not2324, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.w = add nsw i64 %5, %.01829.a
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre32.a = load i64, ptr %i.o, align 8, !tbaa !308
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %i.x = phi i64 [ %i.u, %bb.f ], [ %.pre32.a, %._crit_edge.loopexit ] ; 2 uses
  %i.y = phi i64 [ %i.v, %bb.f ], [ %i.ai, %._crit_edge.loopexit ]
  %.1.lcssa = phi ptr [ %.01928, %bb.f ], [ %i.ab, %._crit_edge.loopexit ]
  %i.z = load i64, ptr %i.t, align 8, !tbaa !309
  %i.aa = add nsw i64 %i.z, %.01829.a             ; 2 uses
  %.not22 = icmp eq i64 %i.aa, %i.x
  br i1 %.not22, label %._crit_edge31, label %bb.f, !llvm.loop !1905

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.026 = phi i64 [ %i.ah, %.lr.ph ], [ %i.w, %.lr.ph.preheader ] ; 2 uses
  %.125 = phi ptr [ %i.ab, %.lr.ph ], [ %.01928, %.lr.ph.preheader ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.125, i64 8 ; 2 uses
  %i.ac = load i64, ptr %.125, align 8, !tbaa !97
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.026 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !97
  %i.af = or i64 %i.ae, %i.ac
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !97
  %i.ag = load i64, ptr %i.s, align 8, !tbaa !312
  %i.ah = add nsw i64 %i.ag, %.026                ; 2 uses
  %i.ai = load i64, ptr %i.r, align 8, !tbaa !311 ; 2 uses
  %i.aj = add nsw i64 %i.ai, %.01829.a
  %.not23 = icmp eq i64 %i.ah, %i.aj
  br i1 %.not23, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !1906
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK6casadi17SetNonzerosSlice2ILb1EE10sp_reverseEPPyS3_PxS2_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !111    ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i64, ptr %i.b, align 8, !tbaa !307  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !308  ; 2 uses
  %.not19 = icmp eq i64 %i.c, %i.e
  br i1 %.not19, label %._crit_edge24, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !111
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.a = load i64, ptr %i.i, align 8, !tbaa !311
  br label %bb.b

._crit_edge24:                                    ; preds = %._crit_edge, %bb.a
  %i.l = load ptr, ptr %1, align 8, !tbaa !111    ; 7 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 392
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.o(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef 0), !inline_history !6
  %i.q = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 8 uses
  %.not.i = icmp ne ptr %i.l, %i.a
  %i.r = icmp sgt i64 %i.q, 0
  %or.cond.i = and i1 %.not.i, %i.r
  br i1 %or.cond.i, label %.lr.ph.i.preheader, label %_ZN6casadi6MXNode8copy_revEPyS1_x.exit

.lr.ph.i.preheader:                               ; preds = %._crit_edge24
  %min.iters.check = icmp ult i64 %i.q, 6
  br i1 %min.iters.check, label %.lr.ph.i.preheader42, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.s = shl i64 %i.q, 3                          ; 2 uses
  %i.t = getelementptr i8, ptr %i.l, i64 %i.s
  %i.u = getelementptr i8, ptr %i.a, i64 %i.s
  %bound0 = icmp ult ptr %i.l, %i.u
  %bound1 = icmp ult ptr %i.a, %i.t
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader42, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.q, 9223372036854775804      ; 4 uses
  %i.v = shl i64 %n.vec, 3                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.l, i64 %i.v
  %i.x = getelementptr i8, ptr %i.a, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.l, i64 %i.y ; 3 uses
  %next.gep36 = getelementptr i8, ptr %i.a, i64 %i.y ; 3 uses
  %i.z = getelementptr i8, ptr %next.gep36, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !tbaa !97, !alias.scope !1915
  %wide.load37 = load <2 x i64>, ptr %i.z, align 8, !tbaa !97, !alias.scope !1915
  %i.aa = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load38 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !97, !alias.scope !1916, !noalias !1915
  %wide.load39 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !97, !alias.scope !1916, !noalias !1915
  %i.ab = or <2 x i64> %wide.load38, %wide.load
  %i.ac = or <2 x i64> %wide.load39, %wide.load37
  store <2 x i64> %i.ab, ptr %next.gep, align 8, !tbaa !97, !alias.scope !1916, !noalias !1915
  store <2 x i64> %i.ac, ptr %i.aa, align 8, !tbaa !97, !alias.scope !1916, !noalias !1915
  store <2 x i64> zeroinitializer, ptr %next.gep36, align 8, !tbaa !97, !alias.scope !1915
  store <2 x i64> zeroinitializer, ptr %i.z, align 8, !tbaa !97, !alias.scope !1915
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1910

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZN6casadi6MXNode8copy_revEPyS1_x.exit, label %.lr.ph.i.preheader42

.lr.ph.i.preheader42:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.013.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.0712.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.preheader ], [ %i.w, %middle.block ] ; 2 uses
  %.0811.i.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.i.preheader ], [ %i.x, %middle.block ] ; 2 uses
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader42, %.lr.ph.i.prol
  %.013.i.prol = phi i64 [ %i.aj, %.lr.ph.i.prol ], [ %.013.i.ph, %.lr.ph.i.preheader42 ]
  %.0712.i.prol = phi ptr [ %i.af, %.lr.ph.i.prol ], [ %.0712.i.ph, %.lr.ph.i.preheader42 ] ; 3 uses
  %.0811.i.prol = phi ptr [ %i.ai, %.lr.ph.i.prol ], [ %.0811.i.ph, %.lr.ph.i.preheader42 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader42 ]
  %i.ae = load i64, ptr %.0811.i.prol, align 8, !tbaa !97
  %i.af = getelementptr inbounds nuw i8, ptr %.0712.i.prol, i64 8 ; 2 uses
  %i.ag = load i64, ptr %.0712.i.prol, align 8, !tbaa !97
  %i.ah = or i64 %i.ag, %i.ae
  store i64 %i.ah, ptr %.0712.i.prol, align 8, !tbaa !97
  %i.ai = getelementptr inbounds nuw i8, ptr %.0811.i.prol, i64 8 ; 2 uses
  store i64 0, ptr %.0811.i.prol, align 8, !tbaa !97
  %i.aj = add nuw nsw i64 %.013.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1911

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader42
  %.013.i.unr = phi i64 [ %.013.i.ph, %.lr.ph.i.preheader42 ], [ %i.aj, %.lr.ph.i.prol ]
  %.0712.i.unr = phi ptr [ %.0712.i.ph, %.lr.ph.i.preheader42 ], [ %i.af, %.lr.ph.i.prol ]
  %.0811.i.unr = phi ptr [ %.0811.i.ph, %.lr.ph.i.preheader42 ], [ %i.ai, %.lr.ph.i.prol ]
  %i.ak = sub nsw i64 %.013.i.ph, %i.q
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %_ZN6casadi6MXNode8copy_revEPyS1_x.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.013.i = phi i64 [ %i.bg, %.lr.ph.i ], [ %.013.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0712.i = phi ptr [ %i.bc, %.lr.ph.i ], [ %.0712.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.0811.i = phi ptr [ %i.bf, %.lr.ph.i ], [ %.0811.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.am = load i64, ptr %.0811.i, align 8, !tbaa !97
  %i.an = getelementptr inbounds nuw i8, ptr %.0712.i, i64 8 ; 2 uses
  %i.ao = load i64, ptr %.0712.i, align 8, !tbaa !97
  %i.ap = or i64 %i.ao, %i.am
  store i64 %i.ap, ptr %.0712.i, align 8, !tbaa !97
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i, i64 8 ; 2 uses
  store i64 0, ptr %.0811.i, align 8, !tbaa !97
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !97
  %i.as = getelementptr inbounds nuw i8, ptr %.0712.i, i64 16 ; 2 uses
  %i.at = load i64, ptr %i.an, align 8, !tbaa !97
  %i.au = or i64 %i.at, %i.ar
  store i64 %i.au, ptr %i.an, align 8, !tbaa !97
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.i, i64 16 ; 2 uses
  store i64 0, ptr %i.aq, align 8, !tbaa !97
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !97
  %i.ax = getelementptr inbounds nuw i8, ptr %.0712.i, i64 24 ; 2 uses
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !97
  %i.az = or i64 %i.ay, %i.aw
  store i64 %i.az, ptr %i.as, align 8, !tbaa !97
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i, i64 24 ; 2 uses
  store i64 0, ptr %i.av, align 8, !tbaa !97
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !97
  %i.bc = getelementptr inbounds nuw i8, ptr %.0712.i, i64 32
  %i.bd = load i64, ptr %i.ax, align 8, !tbaa !97
  %i.be = or i64 %i.bd, %i.bb
  store i64 %i.be, ptr %i.ax, align 8, !tbaa !97
  %i.bf = getelementptr inbounds nuw i8, ptr %.0811.i, i64 32
  store i64 0, ptr %i.ba, align 8, !tbaa !97
  %i.bg = add nuw nsw i64 %.013.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bg, %i.q
  br i1 %exitcond.not.i.3, label %_ZN6casadi6MXNode8copy_revEPyS1_x.exit, label %.lr.ph.i, !llvm.loop !1912

_ZN6casadi6MXNode8copy_revEPyS1_x.exit:           ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %._crit_edge24
  ret i32 0

bb.b:                                             ; preds = %.lr.ph23, %._crit_edge
  %i.bh = phi i64 [ %i.e, %.lr.ph23 ], [ %i.bk, %._crit_edge ]
  %i.bi = phi i64 [ %.pre.a, %.lr.ph23 ], [ %i.bl, %._crit_edge ] ; 2 uses
  %.01321.a = phi i64 [ %i.c, %.lr.ph23 ], [ %i.bn, %._crit_edge ] ; 3 uses
  %.01420 = phi ptr [ %i.g, %.lr.ph23 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %5 = load i64, ptr %i.h, align 8, !tbaa !310    ; 2 uses
  %.not1516 = icmp eq i64 %5, %i.bi
  br i1 %.not1516, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.bj = add nsw i64 %5, %.01321.a
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre25.a = load i64, ptr %i.d, align 8, !tbaa !308
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.bk = phi i64 [ %i.bh, %bb.b ], [ %.pre25.a, %._crit_edge.loopexit ] ; 2 uses
  %i.bl = phi i64 [ %i.bi, %bb.b ], [ %i.bv, %._crit_edge.loopexit ]
  %.1.lcssa = phi ptr [ %.01420, %bb.b ], [ %i.bq, %._crit_edge.loopexit ]
  %i.bm = load i64, ptr %i.k, align 8, !tbaa !309
  %i.bn = add nsw i64 %i.bm, %.01321.a            ; 2 uses
  %.not = icmp eq i64 %i.bn, %i.bk
  br i1 %.not, label %._crit_edge24, label %bb.b, !llvm.loop !1913

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.018 = phi i64 [ %i.bu, %.lr.ph ], [ %i.bj, %.lr.ph.preheader ] ; 2 uses
  %.117 = phi ptr [ %i.bq, %.lr.ph ], [ %.01420, %.lr.ph.preheader ] ; 3 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.018
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !97
  %i.bq = getelementptr inbounds nuw i8, ptr %.117, i64 8 ; 2 uses
  %i.br = load i64, ptr %.117, align 8, !tbaa !97
  %i.bs = or i64 %i.br, %i.bp
  store i64 %i.bs, ptr %.117, align 8, !tbaa !97
  %i.bt = load i64, ptr %i.j, align 8, !tbaa !312
  %i.bu = add nsw i64 %i.bt, %.018                ; 2 uses
  %i.bv = load i64, ptr %i.i, align 8, !tbaa !311 ; 2 uses
  %i.bw = add nsw i64 %i.bv, %.01321.a
  %.not15 = icmp eq i64 %i.bu, %i.bw
  br i1 %.not15, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !1914
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6casadi17SetNonzerosSlice2ILb1EE4infoB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::map.120") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, casadi::GenericType>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, casadi::GenericType>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 6 uses
  %3 = alloca [3 x %"struct.std::pair.226"], align 8 ; 20 uses
  %4 = alloca %"class.std::map.120", align 8      ; 12 uses
  %5 = alloca %"class.std::map.120", align 8      ; 9 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @_ZNK6casadi5Slice4infoB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::map.120") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEEC2IRA6_KcSt3mapIS5_S8_St4lessIS5_ESaIS9_EETnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISK_SL_EEEbE4typeELb1EEEOSK_OSL_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 1 dereferenceable(6) @.str.284, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %bb.b unwind label %.thread31

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88
  invoke void @_ZNK6casadi5Slice4infoB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::map.120") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEEC2IRA6_KcSt3mapIS5_S8_St4lessIS5_ESaIS9_EETnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISK_SL_EEEbE4typeELb1EEEOSK_OSL_(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 1 dereferenceable(6) @.str.285, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i8 1, ptr %i.a, align 1, !tbaa !166
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEEC2IRA4_KcbTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 1 dereferenceable(4) @.str.130, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %.lr.ph.i.i unwind label %bb.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i32 0, ptr %i.f, align 8, !tbaa !86
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.g, align 8, !tbaa !87
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.f, ptr %i.h, align 8, !tbaa !88
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.f, ptr %i.i, align 8, !tbaa !89
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr %0, ptr %2, align 8, !tbaa !270
  %i.k = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc.i unwind label %.body  ; 0 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.l = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc.i.1 unwind label %.body ; 0 uses

.noexc.i.1:                                       ; preds = %.noexc.i
  %i.m = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc.i.2 unwind label %.body ; 0 uses

.noexc.i.2:                                       ; preds = %.noexc.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i unwind label %bb.e

.body:                                            ; preds = %.noexc.i.1, %.noexc.i, %.lr.ph.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #32
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.p) #32
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.q) #32
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #32
  br label %.loopexit36

bb.e:                                             ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit.1, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit, %.noexc.i.2
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #34
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i: ; preds = %.noexc.i.2
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !59   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !60
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #33
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit: ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 72
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i.1 unwind label %bb.e

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !59 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i.1
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !60
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #33
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit.1

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit.1: ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 32
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i.2 unwind label %bb.e

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i.2: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit.1
  %i.ah = load ptr, ptr %3, align 8, !tbaa !59    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2: ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i.2
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !60
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #33
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit.2

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit.2: ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !87
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.an)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit.2
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #34
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeEED2Ev.exit.2
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !87
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.ar)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit24 unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #34
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit24: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

.thread31:                                        ; preds = %bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %.loopexit

.thread:                                          ; preds = %bb.b
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %.preheader.preheader

bb.h:                                             ; preds = %bb.c
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit36

.loopexit36:                                      ; preds = %.body, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.i ], [ %i.o, %.body ]
  %i.ay = phi i1 [ false, %bb.i ], [ true, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %.loopexit36
  %.015 = phi ptr [ %i.e, %.loopexit36 ], [ %i.c, %bb.h ]
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.loopexit36 ], [ %i.aw, %bb.h ] ; 2 uses
end_hunk_1
