inline.NumInlined: 1490
inline.NumDeleted: 467
begin_hunk_0_@_ZN16OpenColorIO_v2_519GradingBSplineCurve6CreateESt16initializer_listINS_19GradingControlPointEENS_12HueCurveTypeE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %.017 = phi i64 [ %i.ai, %bb.i ], [ 0, %bb.a ]  ; 2 uses
  %.01116 = phi ptr [ %i.ak, %bb.i ], [ %1, %bb.a ] ; 2 uses
  %i.ad = load ptr, ptr %5, align 8, !tbaa !13    ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = invoke noundef nonnull align 4 dereferenceable(8) ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(60) %i.ad, i64 noundef %.017)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.ai = add nuw nsw i64 %.017, 1
  %i.aj = load i64, ptr %.01116, align 4
  store i64 %i.aj, ptr %i.ah, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.01116, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ak, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %.lr.ph
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_523GradingBSplineCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_523GradingBSplineCurveImplC2Em(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(60) initializes((0, 8)) %0, i64 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN16OpenColorIO_v2_523GradingBSplineCurveImplE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.b, label %.noexc, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.96) #22
  unreachable

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.c = shl nuw nsw i64 %1, 3                    ; 3 uses
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #23 ; 5 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.d, i8 0, i64 %i.c, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.d, i64 %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.g, align 8, !tbaa !54
  store ptr %scevgep.i.i.i.i.i, ptr %i.f, align 8, !tbaa !55
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.i = shl nuw nsw i64 %1, 2                    ; 3 uses
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #23
          to label %.noexc9 unwind label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit ; 4 uses

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  br label %.loopexit

.noexc9:                                          ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.j, ptr %i.h, align 8, !tbaa !56
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.k, ptr %i.l, align 8, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.j, i8 0, i64 %i.i, i1 false), !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  br label %.loopexit

.loopexit:                                        ; preds = %.noexc9, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i ], [ %i.m, %.noexc9 ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.n, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.o, align 8, !tbaa !63
  ret void

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit: ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %.idx = shl nuw nsw i64 %1, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %.idx) #24
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_523GradingBSplineCurveImplC2EmNS_11BSplineTypeE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(60) initializes((0, 8)) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN16OpenColorIO_v2_523GradingBSplineCurveImplE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.b, label %.noexc, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.96) #22
  unreachable

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.c = shl nuw nsw i64 %1, 3                    ; 3 uses
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #23 ; 5 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.d, i8 0, i64 %i.c, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.d, i64 %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.g, align 8, !tbaa !54
  store ptr %scevgep.i.i.i.i.i, ptr %i.f, align 8, !tbaa !55
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.i = shl nuw nsw i64 %1, 2                    ; 3 uses
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #23
          to label %.noexc10 unwind label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit ; 4 uses

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  br label %.loopexit

.noexc10:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.j, ptr %i.h, align 8, !tbaa !56
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.k, ptr %i.l, align 8, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.j, i8 0, i64 %i.i, i1 false), !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  br label %.loopexit

.loopexit:                                        ; preds = %.noexc10, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i ], [ %i.m, %.noexc10 ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.n, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %2, ptr %i.o, align 8, !tbaa !63
  ret void

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit: ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %.idx = shl nuw nsw i64 %1, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %.idx) #24
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_523GradingBSplineCurveImplC2ERKSt6vectorINS_19GradingControlPointESaIS2_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(60) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN16OpenColorIO_v2_523GradingBSplineCurveImplE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !51     ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %.noexc6, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.g, 9223372036854775800
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN16OpenColorIO_v2_519GradingControlPointEE8allocateEmPKv.exit.i.i.i.i, !prof !29

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

_ZNSt15__new_allocatorIN16OpenColorIO_v2_519GradingControlPointEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #23
  br label %.noexc6

.noexc6:                                          ; preds = %_ZNSt15__new_allocatorIN16OpenColorIO_v2_519GradingControlPointEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorIN16OpenColorIO_v2_519GradingControlPointEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !54
  %i.n = load ptr, ptr %1, align 8, !tbaa !72     ; 7 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !72   ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not7.i.i.i.i.i, label %.loopexit10, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc6
  %i.p = ptrtoaddr ptr %i.n to i64                ; 2 uses
  %i.q = ptrtoaddr ptr %i.j to i64
  %i.r = ptrtoaddr ptr %i.o to i64
  %2 = sub i64 %i.r, %i.p
  %3 = add i64 %2, -8                             ; 2 uses
  %i.s = lshr i64 %3, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 72
  %i.u = sub i64 %i.p, %i.q
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 4611686018427387900      ; 3 uses
  %i.v = shl i64 %n.vec, 3                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.j, i64 %i.v     ; 2 uses
  %i.x = getelementptr i8, ptr %i.n, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.y ; 2 uses
  %next.gep15 = getelementptr i8, ptr %i.n, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep15, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep15, align 4
  %wide.load16 = load <2 x i64>, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load16, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %.loopexit10, label %.lr.ph.i.i.i.i.i.preheader18

.lr.ph.i.i.i.i.i.preheader18:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader18, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader18 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader18 ] ; 2 uses
  %i.ac = load i64, ptr %.sroa.04.08.i.i.i.i.i, align 4
  store i64 %i.ac, ptr %.09.i.i.i.i.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, %i.o
  br i1 %.not.i.i.i.i.i, label %.loopexit10, label %.lr.ph.i.i.i.i.i, !llvm.loop !77

.loopexit10:                                      ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc6
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.j, %.noexc6 ], [ %i.w, %middle.block ], [ %i.ae, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.k, align 8, !tbaa !55
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !55  ; 2 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.n to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = ashr exact i64 %i.aj, 3                 ; 2 uses
  %i.al = icmp ugt i64 %i.ak, 2305843009213693951
  br i1 %i.al, label %bb.c, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.c:                                             ; preds = %.loopexit10
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.96) #22
          to label %.noexc8 unwind label %bb.e

.noexc8:                                          ; preds = %bb.c
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.loopexit10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %.not.i.i.i.i7 = icmp eq ptr %i.ag, %i.n
  br i1 %.not.i.i.i.i7, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.am = ashr exact i64 %i.aj, 1                 ; 3 uses
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #23
          to label %.noexc9 unwind label %bb.e    ; 4 uses

.noexc9:                                          ; preds = %bb.d
  store ptr %i.an, ptr %i.af, align 8, !tbaa !56
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ak
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !59
  %i.aq = and i64 %i.am, -4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.an, i8 0, i64 %i.aq, i1 false), !tbaa !60
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i, %.noexc9
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.noexc9 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.as, align 8, !tbaa !62
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.at, align 8, !tbaa !63
  ret void

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !51  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = load ptr, ptr %i.m, align 8, !tbaa !54
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.az) #24
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.au
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_523GradingBSplineCurveImplC2ERKSt6vectorINS_19GradingControlPointESaIS2_EENS_11BSplineTypeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(60) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN16OpenColorIO_v2_523GradingBSplineCurveImplE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !51     ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %.noexc7, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.g, 9223372036854775800
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN16OpenColorIO_v2_519GradingControlPointEE8allocateEmPKv.exit.i.i.i.i, !prof !29

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

_ZNSt15__new_allocatorIN16OpenColorIO_v2_519GradingControlPointEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #23
  br label %.noexc7

.noexc7:                                          ; preds = %_ZNSt15__new_allocatorIN16OpenColorIO_v2_519GradingControlPointEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorIN16OpenColorIO_v2_519GradingControlPointEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !54
  %i.n = load ptr, ptr %1, align 8, !tbaa !72     ; 7 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !72   ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not7.i.i.i.i.i, label %.loopexit11, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc7
  %i.p = ptrtoaddr ptr %i.n to i64                ; 2 uses
  %i.q = ptrtoaddr ptr %i.j to i64
  %i.r = ptrtoaddr ptr %i.o to i64
  %3 = sub i64 %i.r, %i.p
  %4 = add i64 %3, -8                             ; 2 uses
  %i.s = lshr i64 %4, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 72
  %i.u = sub i64 %i.p, %i.q
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader19, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 4611686018427387900      ; 3 uses
  %i.v = shl i64 %n.vec, 3                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.j, i64 %i.v     ; 2 uses
  %i.x = getelementptr i8, ptr %i.n, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.y ; 2 uses
  %next.gep16 = getelementptr i8, ptr %i.n, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep16, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep16, align 4
  %wide.load17 = load <2 x i64>, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load17, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %.loopexit11, label %.lr.ph.i.i.i.i.i.preheader19

.lr.ph.i.i.i.i.i.preheader19:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader19, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader19 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader19 ] ; 2 uses
  %i.ac = load i64, ptr %.sroa.04.08.i.i.i.i.i, align 4
  store i64 %i.ac, ptr %.09.i.i.i.i.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, %i.o
  br i1 %.not.i.i.i.i.i, label %.loopexit11, label %.lr.ph.i.i.i.i.i, !llvm.loop !79

.loopexit11:                                      ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc7
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.j, %.noexc7 ], [ %i.w, %middle.block ], [ %i.ae, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.k, align 8, !tbaa !55
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !55  ; 2 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.n to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = ashr exact i64 %i.aj, 3                 ; 2 uses
  %i.al = icmp ugt i64 %i.ak, 2305843009213693951
  br i1 %i.al, label %bb.c, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.c:                                             ; preds = %.loopexit11
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.96) #22
          to label %.noexc9 unwind label %bb.e

.noexc9:                                          ; preds = %bb.c
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.loopexit11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %.not.i.i.i.i8 = icmp eq ptr %i.ag, %i.n
  br i1 %.not.i.i.i.i8, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.am = ashr exact i64 %i.aj, 1                 ; 3 uses
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #23
          to label %.noexc10 unwind label %bb.e   ; 4 uses

.noexc10:                                         ; preds = %bb.d
  store ptr %i.an, ptr %i.af, align 8, !tbaa !56
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ak
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !59
  %i.aq = and i64 %i.am, -4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.an, i8 0, i64 %i.aq, i1 false), !tbaa !60
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i, %.noexc10
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.noexc10 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.as, align 8, !tbaa !62
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %2, ptr %i.at, align 8, !tbaa !63
  ret void

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !51  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = load ptr, ptr %i.m, align 8, !tbaa !54
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.az) #24
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.au
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl18createEditableCopyEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(60) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::allocator.27", align 1 ; 3 uses
  %3 = alloca %"class.std::shared_ptr.0", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4, !tbaa !22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21, !noalias !80
  store ptr null, ptr %3, align 8, !tbaa !13, !alias.scope !80
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvEJiEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a), !inline_history !83
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %3, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.b unwind label %bb.k       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %3, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.c unwind label %bb.k       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load i32, ptr %i.k, align 8, !tbaa !63
  %i.m = load ptr, ptr %3, align 8, !tbaa !13     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i32 %i.l, ptr %i.n, align 8, !tbaa !63
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.o, align 8
  store ptr %i.m, ptr %0, align 8, !tbaa !42
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !19   ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_523GradingBSplineCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSINS0_23GradingBSplineCurveImplEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS2_E4typeESE_.exit, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSINS0_23GradingBSplineCurveImplEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS2_E4typeESE_.exit.thread7

_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSINS0_23GradingBSplineCurveImplEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS2_E4typeESE_.exit.thread7: ; preds = %bb.d
  %i.t = load i32, ptr %i.r, align 4, !tbaa !22
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !22
  store ptr %i.q, ptr %i.p, align 8, !tbaa !19
  br label %bb.e

_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSINS0_23GradingBSplineCurveImplEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS2_E4typeESE_.exit: ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.r, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.b, align 8, !tbaa !19 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !19
  %.not.i.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_523GradingBSplineCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSINS0_23GradingBSplineCurveImplEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS2_E4typeESE_.exit.thread7, %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSINS0_23GradingBSplineCurveImplEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS2_E4typeESE_.exit
  %.pr10 = phi ptr [ %i.q, %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSINS0_23GradingBSplineCurveImplEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS2_E4typeESE_.exit.thread7 ], [ %.pr.pre, %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSINS0_23GradingBSplineCurveImplEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS2_E4typeESE_.exit ] ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.pr10, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.w, align 8, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %.pr10, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !25
  %i.ab = load ptr, ptr %.pr10, align 8, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %.pr10) #21, !inline_history !28
  %i.ae = load ptr, ptr %.pr10, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %.pr10) #21, !inline_history !28
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_523GradingBSplineCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i3 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.w, align 8, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.aj = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.z, %bb.h ], [ %i.aj, %bb.i ]
  %i.ak = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ak, label %bb.j, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_523GradingBSplineCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !29

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr10) #21
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_523GradingBSplineCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_523GradingBSplineCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.c, %_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSINS0_23GradingBSplineCurveImplEEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS2_E4typeESE_.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

bb.k:                                             ; preds = %bb.b, %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_523GradingBSplineCurveImplELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !51     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.i = load ptr, ptr %0, align 8, !tbaa !51     ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_M_allocateEm.exit.i, !prof !29

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

_ZNSt12_Vector_baseIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #23 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -8
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZNSt12_Vector_baseIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #24
  br label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.t, ptr %i.g, align 8, !tbaa !54
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !55
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.x, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp sgt i64 %i.f, 8
  br i1 %i.y, label %bb.h, label %bb.i, !prof !84

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.g
  %i.z = icmp eq i64 %i.f, 8
  br i1 %i.z, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %i.c, align 4
  store i64 %i.aa, ptr %i.i, align 4
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.x, 8
  br i1 %i.ab, label %bb.l, label %bb.m, !prof !84

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.x, i1 false)
  br label %_ZSt4copyIPN16OpenColorIO_v2_519GradingControlPointES2_ET0_T_S4_S3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ac = icmp eq i64 %i.x, 8
  br i1 %i.ac, label %bb.n, label %_ZSt4copyIPN16OpenColorIO_v2_519GradingControlPointES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = load i64, ptr %i.c, align 4
  store i64 %i.ad, ptr %i.i, align 4
  br label %_ZSt4copyIPN16OpenColorIO_v2_519GradingControlPointES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN16OpenColorIO_v2_519GradingControlPointES2_ET0_T_S4_S3_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ae = load ptr, ptr %1, align 8, !tbaa !51    ; 2 uses
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !55  ; 4 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !51
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 4 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !55  ; 3 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIPN16OpenColorIO_v2_519GradingControlPointES2_ET0_T_S4_S3_.exit
  %i.am = ptrtoaddr ptr %i.ae to i64              ; 2 uses
  %i.an = ptrtoaddr ptr %i.al to i64
  %i.ao = add i64 %i.ai, %i.an
  %i.ap = add i64 %i.am, %i.ah
  %2 = sub i64 %i.ao, %i.ap
  %3 = add i64 %2, -8                             ; 2 uses
  %i.aq = lshr i64 %3, 3
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 72
  %i.as = sub i64 %i.am, %i.ai
  %diff.check = icmp ugt i64 %i.as, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader36, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ar, 4611686018427387900     ; 3 uses
  %i.at = shl i64 %n.vec, 3                       ; 2 uses
  %i.au = getelementptr i8, ptr %i.af, i64 %i.at
  %i.av = getelementptr i8, ptr %i.ak, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.aw ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.ak, i64 %i.aw ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep33, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep33, align 4
  %wide.load34 = load <2 x i64>, ptr %i.ax, align 4
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load34, ptr %i.ay, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.preheader36

.lr.ph.i.i.i.i.preheader36:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader36, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader36 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader36 ] ; 2 uses
  %i.ba = load i64, ptr %.0810.i.i.i.i, align 4
  store i64 %i.ba, ptr %.011.i.i.i.i, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bb, %i.al
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !86

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt4copyIPN16OpenColorIO_v2_519GradingControlPointES2_ET0_T_S4_S3_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.bd = load ptr, ptr %0, align 8, !tbaa !51
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.f
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !55
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN16OpenColorIO_v2_519GradingControlPointESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.c = load ptr, ptr %1, align 8, !tbaa !56     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !59
  %i.i = load ptr, ptr %0, align 8, !tbaa !56     ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i, !prof !29

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #23 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !84

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 4
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load float, ptr %i.c, align 4, !tbaa !60
  store float %i.r, ptr %i.o, align 4, !tbaa !60
  br label %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit

_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #24
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit: ; preds = %_ZNSt6vectorIfSaIfEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEPfmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.s, ptr %i.g, align 8, !tbaa !59
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !62   ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.k                       ; 5 uses
  %.not24 = icmp ult i64 %i.w, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp sgt i64 %i.f, 4
  br i1 %i.x, label %bb.k, label %bb.l, !prof !84

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.y = icmp eq i64 %i.f, 4
  br i1 %i.y, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.z = load float, ptr %i.c, align 4, !tbaa !60
  store float %i.z, ptr %i.i, align 4, !tbaa !60
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.aa = icmp sgt i64 %i.w, 4
  br i1 %i.aa, label %bb.o, label %bb.p, !prof !84

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.w, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !56
  %.pre25 = load ptr, ptr %i.t, align 8, !tbaa !62 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !56
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !62
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPfS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ab = icmp eq i64 %i.w, 4
  br i1 %i.ab, label %bb.q, label %_ZSt4copyIPfS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ac = load float, ptr %i.c, align 4, !tbaa !60
  store float %i.ac, ptr %i.i, align 4, !tbaa !60
  br label %_ZSt4copyIPfS0_ET0_T_S2_S1_.exit

_ZSt4copyIPfS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.w, %bb.p ], [ 4, %bb.q ]
  %i.ad = phi ptr [ %.pre25, %bb.o ], [ %i.u, %bb.p ], [ %i.u, %bb.q ] ; 2 uses
  %i.ae = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.pre-phi32 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %.pre-phi34, %i.ag              ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 4
  br i1 %i.ai, label %bb.r, label %bb.s, !prof !84

bb.r:                                             ; preds = %_ZSt4copyIPfS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ad, ptr align 4 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPfS0_ET0_T_S2_S1_.exit
  %i.aj = icmp eq i64 %i.ah, 4
  br i1 %i.aj, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ak = load float, ptr %i.af, align 4, !tbaa !60
  store float %i.ak, ptr %i.ad, align 4, !tbaa !60
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !56
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !62
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEENS1_IPfS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl13getSplineTypeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !63
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_523GradingBSplineCurveImpl13setSplineTypeENS_11BSplineTypeE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(60) initializes((56, 60)) %0, i32 noundef %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %1, ptr %i.a, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 -1152921504606846976, 1152921504606846976) i64 @_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl19getNumControlPointsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  ret i64 %i.h
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_523GradingBSplineCurveImpl19setNumControlPointsEm(ptr noundef nonnull align 8 dereferenceable(60) %0, i64 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62   ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = icmp ugt i64 %1, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = sub nuw i64 %1, %i.j
  call void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %i.e, i64 noundef %i.l, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit

bb.c:                                             ; preds = %bb.a
  %i.m = icmp ult i64 %1, %i.j
  br i1 %i.m, label %bb.d, label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.n
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.n, ptr %i.d, align 8, !tbaa !62
  br label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit

_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit:            ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !51     ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !54
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN16OpenColorIO_v2_519GradingControlPointEmS1_ET_S3_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN16OpenColorIO_v2_519GradingControlPointEmS1_ET_S3_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.r, i1 false)
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !55
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.97) #22
  unreachable

_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #23 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.x, i8 0, i64 %i.y, i1 false)
  %.not10.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.z = ptrtoaddr ptr %i.w to i64
  %2 = sub i64 %i.d, %i.e
  %3 = add i64 %2, -8                             ; 2 uses
  %i.aa = lshr i64 %3, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 72
  %i.ac = sub i64 %i.e, %i.z
  %diff.check = icmp ugt i64 %i.ac, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.w, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.c, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ag ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.ag ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.ah = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 4, !alias.scope !90, !noalias !87
  %wide.load13 = load <2 x i64>, ptr %i.ah, align 4, !alias.scope !90, !noalias !87
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !87, !noalias !90
  store <2 x i64> %wide.load13, ptr %i.ai, align 4, !alias.scope !87, !noalias !90
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.ak = load i64, ptr %.0911.i.i.i.i, align 4, !alias.scope !90, !noalias !87
  store i64 %i.ak, ptr %.012.i.i.i.i, align 4, !alias.scope !87, !noalias !90
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.al, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !93

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.not.i36.i = icmp eq ptr %i.c, null
  br i1 %.not.i36.i, label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE13_M_deallocateEPS1_m.exit37.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.an = sub i64 %i.l, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.an) #24
  br label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE13_M_deallocateEPS1_m.exit37.i

_ZNSt12_Vector_baseIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE13_M_deallocateEPS1_m.exit37.i: ; preds = %bb.e, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !51
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !55
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ap, ptr %i.j, align 8, !tbaa !54
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.aq = icmp ult i64 %1, %i.g
  br i1 %i.aq, label %bb.g, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.ar
  br i1 %.not.i4, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPN16OpenColorIO_v2_519GradingControlPointES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN16OpenColorIO_v2_519GradingControlPointES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %bb.g
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !55
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_default_appendEm.exit

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_519GradingControlPointES1_EvT_S3_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE13_M_deallocateEPS1_m.exit37.i, %_ZSt27__uninitialized_default_n_aIPN16OpenColorIO_v2_519GradingControlPointEmS1_ET_S3_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl13validateIndexEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.h)
          to label %_ZNSolsEm.exit unwind label %bb.e ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.1, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %_ZNSolsEm.exit
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef %1)
          to label %_ZNSolsEm.exit16 unwind label %bb.e

_ZNSolsEm.exit16:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.2, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17: ; preds = %_ZNSolsEm.exit16
  %i.n = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %i.o = load ptr, ptr %3, align 8, !tbaa !94
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef %i.o)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #22
          to label %bb.j unwind label %bb.f

bb.e:                                             ; preds = %_ZNSolsEm.exit16, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.s = load ptr, ptr %3, align 8, !tbaa !94     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.v = load i64, ptr %i.t, align 8, !tbaa !21
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn20 = phi { ptr, i32 } [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.n) #21
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn20, %bb.g ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %bb.e ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn.pn

bb.i:                                             ; preds = %bb.a
  ret void

bb.j:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #0 align 2

declare void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

; Function Attrs: nounwind
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_512_GLOBAL__N_112FitRGBSplineERKSt6vectorINS_19GradingControlPointESaIS2_EERKS1_IfSaIfEERS8_SB_SB_SB_:bb.a
  br i1 %.not.i17.i.i164, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i165, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i163
  tail call void @_ZdlPvm(ptr noundef nonnull %i.la, i64 noundef %i.ld) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i165

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i165: ; preds = %bb.bq, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i163
  store ptr %i.ll, ptr %2, align 8, !tbaa !56
  store ptr %i.lp, ptr %i.h, align 8, !tbaa !62
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %i.lj
  store ptr %i.lq, ptr %i.j, align 8, !tbaa !59
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit166

_ZNSt6vectorIfSaIfEE9push_backERKf.exit166:       ; preds = %bb.bm, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i165
  %exitcond.not = icmp eq i64 %i.an, %i.ae
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !126
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl31computeKnotsAndCoefsForHueCurveERNS0_10KnotsCoefsEib(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.OpenColorIO_v2_5::GradingControlPoint", align 4 ; 5 uses
  %5 = alloca %"class.std::vector", align 8       ; 27 uses
  %6 = alloca %"class.std::vector.3", align 8     ; 38 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, 9
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl10isIdentityEv(ptr noundef nonnull align 8 dereferenceable(60) %0)
  br i1 %i.j, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b, %bb.a
  br i1 %3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = shl nsw i32 %2, 1                        ; 2 uses
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !109  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.m
  store i32 -1, ptr %i.o, align 4, !tbaa !22
  %i.p = or disjoint i32 %i.l, 1
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.q
  store i32 0, ptr %i.r, align 4, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !109  ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.m
  store i32 -1, ptr %i.u, align 4, !tbaa !22
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.q
  store i32 0, ptr %i.v, align 4, !tbaa !22
  br label %bb.fx

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.x = load i32, ptr %i.w, align 4, !tbaa !118  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !124
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = shl nsw i32 %2, 1                       ; 2 uses
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !109 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ac
  store i32 %i.x, ptr %i.ae, align 4, !tbaa !22
  %i.af = or disjoint i32 %i.ab, 1
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ag
  store i32 2, ptr %i.ah, align 4, !tbaa !22
  %i.ai = load i32, ptr %i.y, align 8, !tbaa !124
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !109 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ac
  store i32 %i.ai, ptr %i.al, align 4, !tbaa !22
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ag
  store i32 3, ptr %i.am, align 4, !tbaa !22
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !125
  %i.ap = sext i32 %i.x to i64
  %i.aq = getelementptr [4 x i8], ptr %i.ao, i64 %i.ap
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.aq, align 4, !tbaa !60
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !125
  %i.at = sext i32 %i.z to i64
  %i.au = getelementptr [4 x i8], ptr %i.as, i64 %i.at ; 3 uses
  store float 0.000000e+00, ptr %i.au, align 4, !tbaa !60
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !63 ; 3 uses
  %i.ax = add i32 %i.aw, -1
  %i.ay = icmp ult i32 %i.ax, 2
  %i.az = select i1 %i.ay, float 1.000000e+00, float 0.000000e+00
  %i.ba = getelementptr i8, ptr %i.au, i64 4
  store float %i.az, ptr %i.ba, align 4, !tbaa !60
  %i.bb = icmp eq i32 %i.aw, 3
  %i.bc = icmp eq i32 %i.aw, 5
  %i.bd = or i1 %i.bb, %i.bc
  %i.be = select i1 %i.bd, float 1.000000e+00, float 0.000000e+00
  %i.bf = getelementptr i8, ptr %i.au, i64 8
  store float %i.be, ptr %i.bf, align 4, !tbaa !60
  %i.bg = load <2 x i32>, ptr %i.y, align 8, !tbaa !22
  %i.bh = add nsw <2 x i32> %i.bg, <i32 3, i32 2>
  store <2 x i32> %i.bh, ptr %i.y, align 8, !tbaa !22
  br label %bb.fx

.lr.ph.i:                                         ; preds = %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !63 ; 2 uses
  %.off = add i32 %i.bj, -2
  %switch = icmp ult i32 %.off, 3                 ; 5 uses
  %i.bk = add i32 %i.bj, -3
  %switch114 = icmp ult i32 %i.bk, -2             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.bl = load ptr, ptr %i.c, align 8, !tbaa !55  ; 2 uses
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !51  ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = ashr exact i64 %i.bp, 3                 ; 4 uses
  %.not.i = icmp ne ptr %i.bl, %i.bm
  tail call void @llvm.assume(i1 %.not.i)
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 10 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i, %.lr.ph.i
  %i.bt = phi ptr [ null, %.lr.ph.i ], [ %i.ga, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i ] ; 17 uses
  %i.bu = phi i64 [ 0, %.lr.ph.i ], [ %i.gc, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i ]
  %.0166.i = phi i32 [ 0, %.lr.ph.i ], [ %i.gb, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i ]
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bu
  %i.bx = load <2 x float>, ptr %i.bw, align 4, !tbaa !60 ; 4 uses
  %i.by = extractelement <2 x float> %i.bx, i64 1 ; 4 uses
  %i.bz = extractelement <2 x float> %i.bx, i64 0 ; 4 uses
  %i.ca = fcmp olt float %i.bz, 0.000000e+00
  %or.cond.i = select i1 %switch, i1 %i.ca, i1 false
  br i1 %or.cond.i, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.cb = fadd float %i.bz, 1.000000e+00          ; 2 uses
  %i.cc = fadd float %i.by, 1.000000e+00
  %i.cd = select i1 %switch114, float %i.by, float %i.cc ; 2 uses
  %i.ce = load ptr, ptr %i.bs, align 8, !tbaa !54
  %.not.i.i.i = icmp eq ptr %i.bt, %i.ce
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store float %i.cb, ptr %i.bt, align 4
  %.sroa_idx154.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store float %i.cd, ptr %.sroa_idx154.i, align 4
  %i.cf = load ptr, ptr %i.br, align 8, !tbaa !55
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  store ptr %i.cg, ptr %i.br, align 8, !tbaa !55
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ch = load ptr, ptr %5, align 8, !tbaa !51    ; 7 uses
  %i.ci = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.cj = ptrtoint ptr %i.ch to i64               ; 3 uses
  %i.ck = sub i64 %i.ci, %i.cj                    ; 4 uses
  %i.cl = icmp eq i64 %i.ck, 9223372036854775800
  br i1 %i.cl, label %.invoke, label %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i

.invoke:                                          ; preds = %bb.r, %bb.n, %bb.i, %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #22
          to label %.cont unwind label %.loopexit.split-lp325

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.i
  %i.cm = ashr exact i64 %i.ck, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cm, i64 1)
  %i.cn = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.cm ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.cm
  %i.cp = tail call i64 @llvm.umin.i64(i64 %i.cn, i64 1152921504606846975)
  %i.cq = select i1 %i.co, i64 1152921504606846975, i64 %i.cp ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.cq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.cr = shl nuw nsw i64 %i.cq, 3
  %i.cs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #23
          to label %.noexc116 unwind label %.loopexit324 ; 8 uses

.noexc116:                                        ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ck ; 2 uses
  store float %i.cb, ptr %i.ct, align 4
  %.sroa_idx156.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store float %i.cd, ptr %.sroa_idx156.i, align 4
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ch, %i.bt
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc116
  %i.cu = ptrtoaddr ptr %i.cs to i64
  %7 = sub i64 %i.ci, %i.cj
  %8 = add i64 %7, -8                             ; 2 uses
  %i.cv = lshr i64 %8, 3
  %i.cw = add nuw nsw i64 %i.cv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 24
  %i.cx = sub i64 %i.cj, %i.cu
  %diff.check = icmp ugt i64 %i.cx, -32
  %or.cond1232 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond1232, label %.lr.ph.i.i.i.i.i.i.i.preheader1417, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.cw, 4611686018427387900     ; 3 uses
  %i.cy = shl i64 %n.vec, 3                       ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cs, i64 %i.cy  ; 2 uses
  %i.da = getelementptr i8, ptr %i.ch, i64 %i.cy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.db = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cs, i64 %i.db ; 2 uses
  %next.gep1168 = getelementptr i8, ptr %i.ch, i64 %i.db ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.dc = getelementptr i8, ptr %next.gep1168, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1168, align 4, !alias.scope !130, !noalias !127
  %wide.load1169 = load <2 x i64>, ptr %i.dc, align 4, !alias.scope !130, !noalias !127
  %i.dd = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !127, !noalias !130
  store <2 x i64> %wide.load1169, ptr %i.dd, align 4, !alias.scope !127, !noalias !130
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !132

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cw, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader1417

.lr.ph.i.i.i.i.i.i.i.preheader1417:               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cz, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.da, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader1417, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1417 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1417 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.df = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !130, !noalias !127
  store i64 %i.df, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !127, !noalias !130
  %i.dg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dg, %i.bt
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !133

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc116
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cs, %.noexc116 ], [ %i.cz, %middle.block ], [ %i.dh, %.lr.ph.i.i.i.i.i.i.i ]
  %i.di = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.ck) #24
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i: ; preds = %bb.j, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i
  store ptr %i.cs, ptr %5, align 8, !tbaa !51
  store ptr %i.di, ptr %i.br, align 8, !tbaa !55
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cq
  store ptr %i.dj, ptr %i.bs, align 8, !tbaa !54
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i

bb.k:                                             ; preds = %bb.f
  %i.dk = fcmp oge float %i.bz, 1.000000e+00
  %or.cond3.i = select i1 %switch, i1 %i.dk, i1 false
  br i1 %or.cond3.i, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.dl = fadd float %i.bz, -1.000000e+00         ; 2 uses
  %i.dm = fadd float %i.by, -1.000000e+00
  %i.dn = select i1 %switch114, float %i.by, float %i.dm ; 2 uses
  %i.do = load ptr, ptr %i.bs, align 8, !tbaa !54
  %.not.i.i104.i = icmp eq ptr %i.bt, %i.do
  br i1 %.not.i.i104.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store float %i.dl, ptr %i.bt, align 4
  %.sroa_idx147.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store float %i.dn, ptr %.sroa_idx147.i, align 4
  %i.dp = load ptr, ptr %i.br, align 8, !tbaa !55
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  store ptr %i.dq, ptr %i.br, align 8, !tbaa !55
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i

bb.n:                                             ; preds = %bb.l
  %i.dr = load ptr, ptr %5, align 8, !tbaa !51    ; 7 uses
  %i.ds = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.dt = ptrtoint ptr %i.dr to i64               ; 3 uses
  %i.du = sub i64 %i.ds, %i.dt                    ; 4 uses
  %i.dv = icmp eq i64 %i.du, 9223372036854775800
  br i1 %i.dv, label %.invoke, label %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i105.i

_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i105.i: ; preds = %bb.n
  %i.dw = ashr exact i64 %i.du, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i106.i = tail call i64 @llvm.umax.i64(i64 %i.dw, i64 1)
  %i.dx = add nsw i64 %.sroa.speculated.i.i.i.i106.i, %i.dw ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.dw
  %i.dz = tail call i64 @llvm.umin.i64(i64 %i.dx, i64 1152921504606846975)
  %i.ea = select i1 %i.dy, i64 1152921504606846975, i64 %i.dz ; 3 uses
  %.not.i.i.i.i107.i = icmp ne i64 %i.ea, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i107.i)
  %i.eb = shl nuw nsw i64 %i.ea, 3
  %i.ec = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #23
          to label %.noexc118 unwind label %.loopexit324 ; 8 uses

.noexc118:                                        ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i105.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.du ; 2 uses
  store float %i.dl, ptr %i.ed, align 4
  %.sroa_idx149.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store float %i.dn, ptr %.sroa_idx149.i, align 4
  %.not10.i.i.i.i.i.i108.i = icmp eq ptr %i.dr, %i.bt
  br i1 %.not10.i.i.i.i.i.i108.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i113.i, label %.lr.ph.i.i.i.i.i.i109.i.preheader

.lr.ph.i.i.i.i.i.i109.i.preheader:                ; preds = %.noexc118
  %i.ee = ptrtoaddr ptr %i.ec to i64
  %9 = sub i64 %i.ds, %i.dt
  %10 = add i64 %9, -8                            ; 2 uses
  %i.ef = lshr i64 %10, 3
  %i.eg = add nuw nsw i64 %i.ef, 1                ; 2 uses
  %min.iters.check1174 = icmp ult i64 %10, 24
  %i.eh = sub i64 %i.dt, %i.ee
  %diff.check1172 = icmp ugt i64 %i.eh, -32
  %or.cond1233 = or i1 %min.iters.check1174, %diff.check1172
  br i1 %or.cond1233, label %.lr.ph.i.i.i.i.i.i109.i.preheader1418, label %vector.ph1175

vector.ph1175:                                    ; preds = %.lr.ph.i.i.i.i.i.i109.i.preheader
  %n.vec1176 = and i64 %i.eg, 4611686018427387900 ; 3 uses
  %i.ei = shl i64 %n.vec1176, 3                   ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ec, i64 %i.ei  ; 2 uses
  %i.ek = getelementptr i8, ptr %i.dr, i64 %i.ei
  br label %vector.body1177

vector.body1177:                                  ; preds = %vector.body1177, %vector.ph1175
  %index1178 = phi i64 [ 0, %vector.ph1175 ], [ %index.next1183, %vector.body1177 ] ; 2 uses
  %i.el = shl i64 %index1178, 3                   ; 2 uses
  %next.gep1179 = getelementptr i8, ptr %i.ec, i64 %i.el ; 2 uses
  %next.gep1180 = getelementptr i8, ptr %i.dr, i64 %i.el ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.em = getelementptr i8, ptr %next.gep1180, i64 16
  %wide.load1181 = load <2 x i64>, ptr %next.gep1180, align 4, !alias.scope !137, !noalias !134
  %wide.load1182 = load <2 x i64>, ptr %i.em, align 4, !alias.scope !137, !noalias !134
  %i.en = getelementptr i8, ptr %next.gep1179, i64 16
  store <2 x i64> %wide.load1181, ptr %next.gep1179, align 4, !alias.scope !134, !noalias !137
  store <2 x i64> %wide.load1182, ptr %i.en, align 4, !alias.scope !134, !noalias !137
  %index.next1183 = add nuw i64 %index1178, 4     ; 2 uses
  %i.eo = icmp eq i64 %index.next1183, %n.vec1176
  br i1 %i.eo, label %middle.block1184, label %vector.body1177, !llvm.loop !139

middle.block1184:                                 ; preds = %vector.body1177
  %cmp.n1185 = icmp eq i64 %i.eg, %n.vec1176
  br i1 %cmp.n1185, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i113.i, label %.lr.ph.i.i.i.i.i.i109.i.preheader1418

.lr.ph.i.i.i.i.i.i109.i.preheader1418:            ; preds = %.lr.ph.i.i.i.i.i.i109.i.preheader, %middle.block1184
  %.012.i.i.i.i.i.i110.i.ph = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i.i109.i.preheader ], [ %i.ej, %middle.block1184 ]
  %.0911.i.i.i.i.i.i111.i.ph = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i.i109.i.preheader ], [ %i.ek, %middle.block1184 ]
  br label %.lr.ph.i.i.i.i.i.i109.i

.lr.ph.i.i.i.i.i.i109.i:                          ; preds = %.lr.ph.i.i.i.i.i.i109.i.preheader1418, %.lr.ph.i.i.i.i.i.i109.i
  %.012.i.i.i.i.i.i110.i = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i.i109.i ], [ %.012.i.i.i.i.i.i110.i.ph, %.lr.ph.i.i.i.i.i.i109.i.preheader1418 ] ; 2 uses
  %.0911.i.i.i.i.i.i111.i = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i.i109.i ], [ %.0911.i.i.i.i.i.i111.i.ph, %.lr.ph.i.i.i.i.i.i109.i.preheader1418 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.ep = load i64, ptr %.0911.i.i.i.i.i.i111.i, align 4, !alias.scope !137, !noalias !134
  store i64 %i.ep, ptr %.012.i.i.i.i.i.i110.i, align 4, !alias.scope !134, !noalias !137
  %i.eq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i111.i, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i110.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i112.i = icmp eq ptr %i.eq, %i.bt
  br i1 %.not.i.i.i.i.i.i112.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i113.i, label %.lr.ph.i.i.i.i.i.i109.i, !llvm.loop !140

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i113.i: ; preds = %.lr.ph.i.i.i.i.i.i109.i, %middle.block1184, %.noexc118
  %.0.lcssa.i.i.i.i.i.i114.i = phi ptr [ %i.ec, %.noexc118 ], [ %i.ej, %middle.block1184 ], [ %i.er, %.lr.ph.i.i.i.i.i.i109.i ]
  %i.es = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i114.i, i64 8 ; 2 uses
  %.not.i23.i.i.i115.i = icmp eq ptr %i.dr, null
  br i1 %.not.i23.i.i.i115.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i116.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i113.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.du) #24
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i116.i

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i116.i: ; preds = %bb.o, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i113.i
  store ptr %i.ec, ptr %5, align 8, !tbaa !51
  store ptr %i.es, ptr %i.br, align 8, !tbaa !55
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.ea
  store ptr %i.et, ptr %i.bs, align 8, !tbaa !54
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i

bb.p:                                             ; preds = %bb.k
  %i.eu = load ptr, ptr %i.bs, align 8, !tbaa !54
  %.not.i.i118.i = icmp eq ptr %i.bt, %i.eu
  br i1 %.not.i.i118.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store <2 x float> %i.bx, ptr %i.bt, align 4
  %i.ev = load ptr, ptr %i.br, align 8, !tbaa !55
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  store ptr %i.ew, ptr %i.br, align 8, !tbaa !55
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.ex = load ptr, ptr %5, align 8, !tbaa !51    ; 7 uses
  %i.ey = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.ez = ptrtoint ptr %i.ex to i64               ; 3 uses
  %i.fa = sub i64 %i.ey, %i.ez                    ; 4 uses
  %i.fb = icmp eq i64 %i.fa, 9223372036854775800
  br i1 %i.fb, label %.invoke, label %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i119.i

_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i119.i: ; preds = %bb.r
  %i.fc = ashr exact i64 %i.fa, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i120.i = tail call i64 @llvm.umax.i64(i64 %i.fc, i64 1)
  %i.fd = add nsw i64 %.sroa.speculated.i.i.i.i120.i, %i.fc ; 2 uses
  %i.fe = icmp ult i64 %i.fd, %i.fc
  %i.ff = tail call i64 @llvm.umin.i64(i64 %i.fd, i64 1152921504606846975)
  %i.fg = select i1 %i.fe, i64 1152921504606846975, i64 %i.ff ; 3 uses
  %.not.i.i.i.i121.i = icmp ne i64 %i.fg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i121.i)
  %i.fh = shl nuw nsw i64 %i.fg, 3
  %i.fi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fh) #23
          to label %.noexc120 unwind label %.loopexit324 ; 8 uses

.noexc120:                                        ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i119.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fa
  store <2 x float> %i.bx, ptr %i.fj, align 4
  %.not10.i.i.i.i.i.i122.i = icmp eq ptr %i.ex, %i.bt
  br i1 %.not10.i.i.i.i.i.i122.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i127.i, label %.lr.ph.i.i.i.i.i.i123.i.preheader

.lr.ph.i.i.i.i.i.i123.i.preheader:                ; preds = %.noexc120
  %i.fk = ptrtoaddr ptr %i.fi to i64
  %11 = sub i64 %i.ey, %i.ez
  %12 = add i64 %11, -8                           ; 2 uses
  %i.fl = lshr i64 %12, 3
  %i.fm = add nuw nsw i64 %i.fl, 1                ; 2 uses
  %min.iters.check1191 = icmp ult i64 %12, 24
  %i.fn = sub i64 %i.ez, %i.fk
  %diff.check1189 = icmp ugt i64 %i.fn, -32
  %or.cond1234 = or i1 %min.iters.check1191, %diff.check1189
  br i1 %or.cond1234, label %.lr.ph.i.i.i.i.i.i123.i.preheader1419, label %vector.ph1192

vector.ph1192:                                    ; preds = %.lr.ph.i.i.i.i.i.i123.i.preheader
  %n.vec1193 = and i64 %i.fm, 4611686018427387900 ; 3 uses
  %i.fo = shl i64 %n.vec1193, 3                   ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fi, i64 %i.fo  ; 2 uses
  %i.fq = getelementptr i8, ptr %i.ex, i64 %i.fo
  br label %vector.body1194

vector.body1194:                                  ; preds = %vector.body1194, %vector.ph1192
  %index1195 = phi i64 [ 0, %vector.ph1192 ], [ %index.next1200, %vector.body1194 ] ; 2 uses
  %i.fr = shl i64 %index1195, 3                   ; 2 uses
  %next.gep1196 = getelementptr i8, ptr %i.fi, i64 %i.fr ; 2 uses
  %next.gep1197 = getelementptr i8, ptr %i.ex, i64 %i.fr ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.fs = getelementptr i8, ptr %next.gep1197, i64 16
  %wide.load1198 = load <2 x i64>, ptr %next.gep1197, align 4, !alias.scope !144, !noalias !141
  %wide.load1199 = load <2 x i64>, ptr %i.fs, align 4, !alias.scope !144, !noalias !141
  %i.ft = getelementptr i8, ptr %next.gep1196, i64 16
  store <2 x i64> %wide.load1198, ptr %next.gep1196, align 4, !alias.scope !141, !noalias !144
  store <2 x i64> %wide.load1199, ptr %i.ft, align 4, !alias.scope !141, !noalias !144
  %index.next1200 = add nuw i64 %index1195, 4     ; 2 uses
  %i.fu = icmp eq i64 %index.next1200, %n.vec1193
  br i1 %i.fu, label %middle.block1201, label %vector.body1194, !llvm.loop !146

middle.block1201:                                 ; preds = %vector.body1194
  %cmp.n1202 = icmp eq i64 %i.fm, %n.vec1193
  br i1 %cmp.n1202, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i127.i, label %.lr.ph.i.i.i.i.i.i123.i.preheader1419

.lr.ph.i.i.i.i.i.i123.i.preheader1419:            ; preds = %.lr.ph.i.i.i.i.i.i123.i.preheader, %middle.block1201
  %.012.i.i.i.i.i.i124.i.ph = phi ptr [ %i.fi, %.lr.ph.i.i.i.i.i.i123.i.preheader ], [ %i.fp, %middle.block1201 ]
  %.0911.i.i.i.i.i.i125.i.ph = phi ptr [ %i.ex, %.lr.ph.i.i.i.i.i.i123.i.preheader ], [ %i.fq, %middle.block1201 ]
  br label %.lr.ph.i.i.i.i.i.i123.i

.lr.ph.i.i.i.i.i.i123.i:                          ; preds = %.lr.ph.i.i.i.i.i.i123.i.preheader1419, %.lr.ph.i.i.i.i.i.i123.i
  %.012.i.i.i.i.i.i124.i = phi ptr [ %i.fx, %.lr.ph.i.i.i.i.i.i123.i ], [ %.012.i.i.i.i.i.i124.i.ph, %.lr.ph.i.i.i.i.i.i123.i.preheader1419 ] ; 2 uses
  %.0911.i.i.i.i.i.i125.i = phi ptr [ %i.fw, %.lr.ph.i.i.i.i.i.i123.i ], [ %.0911.i.i.i.i.i.i125.i.ph, %.lr.ph.i.i.i.i.i.i123.i.preheader1419 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.fv = load i64, ptr %.0911.i.i.i.i.i.i125.i, align 4, !alias.scope !144, !noalias !141
  store i64 %i.fv, ptr %.012.i.i.i.i.i.i124.i, align 4, !alias.scope !141, !noalias !144
  %i.fw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i125.i, i64 8 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i124.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i126.i = icmp eq ptr %i.fw, %i.bt
  br i1 %.not.i.i.i.i.i.i126.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i127.i, label %.lr.ph.i.i.i.i.i.i123.i, !llvm.loop !147

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i127.i: ; preds = %.lr.ph.i.i.i.i.i.i123.i, %middle.block1201, %.noexc120
  %.0.lcssa.i.i.i.i.i.i128.i = phi ptr [ %i.fi, %.noexc120 ], [ %i.fp, %middle.block1201 ], [ %i.fx, %.lr.ph.i.i.i.i.i.i123.i ]
  %i.fy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i128.i, i64 8 ; 2 uses
  %.not.i23.i.i.i129.i = icmp eq ptr %i.ex, null
  br i1 %.not.i23.i.i.i129.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i130.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i127.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fa) #24
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i130.i

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i130.i: ; preds = %bb.s, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i127.i
  store ptr %i.fi, ptr %5, align 8, !tbaa !51
  store ptr %i.fy, ptr %i.br, align 8, !tbaa !55
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fg
  store ptr %i.fz, ptr %i.bs, align 8, !tbaa !54
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i130.i, %bb.q, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i116.i, %bb.m, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, %bb.h
  %i.ga = phi ptr [ %i.fy, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i130.i ], [ %i.ew, %bb.q ], [ %i.es, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i116.i ], [ %i.dq, %bb.m ], [ %i.di, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ %i.cg, %bb.h ] ; 2 uses
  %i.gb = add i32 %.0166.i, 1                     ; 2 uses
  %i.gc = zext i32 %i.gb to i64                   ; 2 uses
  %i.gd = icmp ugt i64 %i.bq, %i.gc
  br i1 %i.gd, label %bb.f, label %.lr.ph172.i.preheader, !llvm.loop !148

.lr.ph172.i.preheader:                            ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i
  %i.ge = load ptr, ptr %5, align 8, !tbaa !51    ; 3 uses
  %i.gf = icmp samesign ugt i64 %i.bq, 1
  br i1 %i.gf, label %.lr.ph170.preheader.i, label %._crit_edge173.i

._crit_edge173.i.loopexit:                        ; preds = %._crit_edge.i
  %.pre = load ptr, ptr %i.br, align 8, !tbaa !55
  br label %._crit_edge173.i

._crit_edge173.i:                                 ; preds = %._crit_edge173.i.loopexit, %.lr.ph172.i.preheader
  %i.gg = phi ptr [ %.pre, %._crit_edge173.i.loopexit ], [ %i.ga, %.lr.ph172.i.preheader ]
  %i.gh = phi ptr [ %i.hd, %._crit_edge173.i.loopexit ], [ %i.ge, %.lr.ph172.i.preheader ] ; 9 uses
  %i.gi = getelementptr i8, ptr %i.gh, i64 %i.bp  ; 2 uses
  %i.gj = getelementptr i8, ptr %i.gi, i64 -8     ; 2 uses
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !99
  %i.gl = load float, ptr %i.gh, align 4, !tbaa !99
  %i.gm = fsub float %i.gk, %i.gl                 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.go = ptrtoint ptr %i.gg to i64
  %i.gp = ptrtoint ptr %i.gh to i64
  %i.gq = sub i64 %i.go, %i.gp
  %i.gr = ashr exact i64 %i.gq, 3                 ; 3 uses
  %i.gs = icmp ugt i64 %i.gr, 1
  br i1 %i.gs, label %.lr.ph176.i, label %.loopexit.i

.lr.ph176.i:                                      ; preds = %._crit_edge173.i
  %i.gt = fmul float %i.gm, 2.000000e-03
  br label %bb.t

.lr.ph170.preheader.i:                            ; preds = %.lr.ph172.i.preheader, %._crit_edge.i
  %i.gu = phi i64 [ %i.hf, %._crit_edge.i ], [ 1, %.lr.ph172.i.preheader ]
  %indvars.iv.next.i500 = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 1, %.lr.ph172.i.preheader ] ; 4 uses
  %i.gv = phi ptr [ %i.he, %._crit_edge.i ], [ %i.ge, %.lr.ph172.i.preheader ] ; 3 uses
  %i.gw = phi ptr [ %i.hd, %._crit_edge.i ], [ %i.ge, %.lr.ph172.i.preheader ] ; 2 uses
  %indvars.iv.i499 = phi i64 [ %indvars.iv.next.i500, %._crit_edge.i ], [ 0, %.lr.ph172.i.preheader ]
  %i.gx = trunc nuw i64 %indvars.iv.i499 to i32
  %indvars.i = trunc i64 %indvars.iv.next.i500 to i32
  %i.gy = load float, ptr %i.gv, align 4, !tbaa !99
  br label %.lr.ph170.i

._crit_edge.i:                                    ; preds = %.lr.ph170.i
  %i.gz = zext i32 %.1.i to i64
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.gz ; 2 uses
  %i.hb = load i64, ptr %i.gv, align 4
  %i.hc = load i64, ptr %i.ha, align 4
  store i64 %i.hc, ptr %i.gv, align 4
  store i64 %i.hb, ptr %i.ha, align 4
  %i.hd = load ptr, ptr %5, align 8, !tbaa !51    ; 3 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv.next.i500
  %indvars.iv.next.i = add i64 %indvars.iv.next.i500, 1 ; 2 uses
  %i.hf = and i64 %indvars.iv.next.i, 4294967295  ; 2 uses
  %i.hg = icmp samesign ugt i64 %i.bq, %i.hf
  br i1 %i.hg, label %.lr.ph170.preheader.i, label %._crit_edge173.i.loopexit

.lr.ph170.i:                                      ; preds = %.lr.ph170.i, %.lr.ph170.preheader.i
  %i.hh = phi i64 [ %i.hm, %.lr.ph170.i ], [ %i.gu, %.lr.ph170.preheader.i ]
  %.092169.i = phi i32 [ %.1.i, %.lr.ph170.i ], [ %i.gx, %.lr.ph170.preheader.i ]
  %.093168.i = phi i32 [ %i.hl, %.lr.ph170.i ], [ %indvars.i, %.lr.ph170.preheader.i ] ; 2 uses
  %.094167.i = phi float [ %.195.i, %.lr.ph170.i ], [ %i.gy, %.lr.ph170.preheader.i ] ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.hh
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !99 ; 2 uses
  %i.hk = fcmp olt float %i.hj, %.094167.i        ; 2 uses
  %.195.i = select i1 %i.hk, float %i.hj, float %.094167.i
  %.1.i = select i1 %i.hk, i32 %.093168.i, i32 %.092169.i ; 2 uses
  %i.hl = add i32 %.093168.i, 1                   ; 2 uses
  %i.hm = zext i32 %i.hl to i64                   ; 2 uses
  %i.hn = icmp ugt i64 %i.bq, %i.hm
  br i1 %i.hn, label %.lr.ph170.i, label %._crit_edge.i, !llvm.loop !149

._crit_edge177.i:                                 ; preds = %bb.v
  br i1 %switch114, label %.loopexit.i, label %bb.w

bb.t:                                             ; preds = %bb.v, %.lr.ph176.i
  %i.ho = phi i64 [ 1, %.lr.ph176.i ], [ %i.hz, %bb.v ]
  %.091174.i = phi i32 [ 1, %.lr.ph176.i ], [ %i.hy, %bb.v ] ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.ho ; 2 uses
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !99
  %i.hr = add i32 %.091174.i, -1
  %i.hs = zext i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.hs
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !99 ; 2 uses
  %i.hv = fsub float %i.hq, %i.hu
  %i.hw = fcmp olt float %i.hv, %i.gt
  br i1 %i.hw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hx = tail call float @llvm.fmuladd.f32(float %i.gm, float 2.000000e-03, float %i.hu)
  store float %i.hx, ptr %i.hp, align 4, !tbaa !99
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.hy = add i32 %.091174.i, 1                   ; 2 uses
  %i.hz = zext i32 %i.hy to i64                   ; 2 uses
  %i.ia = icmp ugt i64 %i.gr, %i.hz
  br i1 %i.ia, label %bb.t, label %._crit_edge177.i, !llvm.loop !150

bb.w:                                             ; preds = %._crit_edge177.i
  %i.ib = getelementptr i8, ptr %i.gi, i64 -4
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !102
  %i.id = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %i.ie = load float, ptr %i.id, align 4, !tbaa !102
  %i.if = fsub float %i.ic, %i.ie                 ; 2 uses
  %i.ig = fmul float %i.if, 2.000000e-03
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %bb.w
  %i.ih = phi i64 [ 1, %bb.w ], [ %i.iu, %bb.z ]
  %.089179.i = phi i32 [ 1, %bb.w ], [ %i.it, %bb.z ] ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 4 ; 2 uses
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !102
  %i.il = add i32 %.089179.i, -1
  %i.im = zext i32 %i.il to i64
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  %i.ip = load float, ptr %i.io, align 4, !tbaa !102 ; 2 uses
  %i.iq = fsub float %i.ik, %i.ip
  %i.ir = fcmp olt float %i.iq, %i.ig
  br i1 %i.ir, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.is = tail call float @llvm.fmuladd.f32(float %i.if, float 2.000000e-03, float %i.ip)
  store float %i.is, ptr %i.ij, align 4, !tbaa !102
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.it = add i32 %.089179.i, 1                   ; 2 uses
  %i.iu = zext i32 %i.it to i64                   ; 2 uses
  %i.iv = icmp ugt i64 %i.gr, %i.iu
  br i1 %i.iv, label %bb.x, label %.loopexit.i, !llvm.loop !151

.loopexit.i:                                      ; preds = %bb.z, %._crit_edge177.i, %._crit_edge173.i
  br i1 %switch, label %bb.aa, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116PrepHueCurveDataERKSt6vectorINS_19GradingControlPointESaIS2_EERS4_bb.exit

bb.aa:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.iw = load i64, ptr %i.gj, align 4            ; 2 uses
  %i.ix = trunc i64 %i.iw to i32
  %i.iy = bitcast i32 %i.ix to float
  %i.iz = fadd float %i.iy, -1.000000e+00
  store float %i.iz, ptr %4, align 4, !tbaa !99
  %i.ja = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.jb = lshr i64 %i.iw, 32
  %i.jc = trunc nuw i64 %i.jb to i32
  %i.jd = bitcast i32 %i.jc to float              ; 2 uses
  %i.je = fadd float %i.jd, -1.000000e+00
  %i.jf = select i1 %switch114, float %i.jd, float %i.je
  store float %i.jf, ptr %i.ja, align 4, !tbaa !102
  %i.jg = invoke ptr @_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr nonnull %i.gh, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %.noexc121 unwind label %.loopexit.split-lp325 ; 0 uses

.noexc121:                                        ; preds = %bb.aa
  %i.jh = load ptr, ptr %5, align 8, !tbaa !51    ; 8 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jj = load float, ptr %i.ji, align 4
  %.sroa_idx135.i = getelementptr inbounds nuw i8, ptr %i.jh, i64 12
  %i.jk = load float, ptr %.sroa_idx135.i, align 4 ; 2 uses
  %i.jl = fadd float %i.jj, 1.000000e+00          ; 2 uses
  %i.jm = fadd float %i.jk, 1.000000e+00
  %i.jn = select i1 %switch114, float %i.jk, float %i.jm ; 2 uses
  %i.jo = load ptr, ptr %i.gn, align 8, !tbaa !55 ; 6 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !54
  %.not.i.i = icmp eq ptr %i.jo, %i.jq
  br i1 %.not.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.noexc121
  store float %i.jl, ptr %i.jo, align 4
  %.sroa_idx132.i = getelementptr inbounds nuw i8, ptr %i.jo, i64 4
  store float %i.jn, ptr %.sroa_idx132.i, align 4
  %i.jr = load ptr, ptr %i.gn, align 8, !tbaa !55
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  store ptr %i.js, ptr %i.gn, align 8, !tbaa !55
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backERKS1_.exit.i

bb.ac:                                            ; preds = %.noexc121
  %i.jt = ptrtoint ptr %i.jo to i64               ; 2 uses
  %i.ju = ptrtoint ptr %i.jh to i64               ; 3 uses
  %i.jv = sub i64 %i.jt, %i.ju                    ; 4 uses
  %i.jw = icmp eq i64 %i.jv, 9223372036854775800
  br i1 %i.jw, label %.invoke, label %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ac
  %i.jx = ashr exact i64 %i.jv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.jx, i64 1)
  %i.jy = add nsw i64 %.sroa.speculated.i.i.i.i, %i.jx ; 2 uses
  %i.jz = icmp ult i64 %i.jy, %i.jx
  %i.ka = call i64 @llvm.umin.i64(i64 %i.jy, i64 1152921504606846975)
  %i.kb = select i1 %i.jz, i64 1152921504606846975, i64 %i.ka ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.kb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.kc = shl nuw nsw i64 %i.kb, 3
  %i.kd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kc) #23
          to label %.noexc123 unwind label %.loopexit.split-lp325 ; 8 uses

.noexc123:                                        ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.jv ; 2 uses
  store float %i.jl, ptr %i.ke, align 4
  %.sroa_idx134.i = getelementptr inbounds nuw i8, ptr %i.ke, i64 4
  store float %i.jn, ptr %.sroa_idx134.i, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.jh, %i.jo
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc123
  %i.kf = ptrtoaddr ptr %i.kd to i64
  %13 = sub i64 %i.jt, %i.ju
  %14 = add i64 %13, -8                           ; 2 uses
  %i.kg = lshr i64 %14, 3
  %i.kh = add nuw nsw i64 %i.kg, 1                ; 2 uses
  %min.iters.check1208 = icmp ult i64 %14, 72
  %i.ki = sub i64 %i.ju, %i.kf
  %diff.check1206 = icmp ugt i64 %i.ki, -32
  %or.cond1235 = or i1 %min.iters.check1208, %diff.check1206
  br i1 %or.cond1235, label %.lr.ph.i.i.i.i.i.i.preheader1414, label %vector.ph1209

vector.ph1209:                                    ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec1210 = and i64 %i.kh, 4611686018427387900 ; 3 uses
  %i.kj = shl i64 %n.vec1210, 3                   ; 2 uses
  %i.kk = getelementptr i8, ptr %i.kd, i64 %i.kj  ; 2 uses
  %i.kl = getelementptr i8, ptr %i.jh, i64 %i.kj
  br label %vector.body1211

vector.body1211:                                  ; preds = %vector.body1211, %vector.ph1209
  %index1212 = phi i64 [ 0, %vector.ph1209 ], [ %index.next1217, %vector.body1211 ] ; 2 uses
  %i.km = shl i64 %index1212, 3                   ; 2 uses
  %next.gep1213 = getelementptr i8, ptr %i.kd, i64 %i.km ; 2 uses
  %next.gep1214 = getelementptr i8, ptr %i.jh, i64 %i.km ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.kn = getelementptr i8, ptr %next.gep1214, i64 16
  %wide.load1215 = load <2 x i64>, ptr %next.gep1214, align 4, !alias.scope !155, !noalias !152
  %wide.load1216 = load <2 x i64>, ptr %i.kn, align 4, !alias.scope !155, !noalias !152
  %i.ko = getelementptr i8, ptr %next.gep1213, i64 16
  store <2 x i64> %wide.load1215, ptr %next.gep1213, align 4, !alias.scope !152, !noalias !155
  store <2 x i64> %wide.load1216, ptr %i.ko, align 4, !alias.scope !152, !noalias !155
  %index.next1217 = add nuw i64 %index1212, 4     ; 2 uses
  %i.kp = icmp eq i64 %index.next1217, %n.vec1210
  br i1 %i.kp, label %middle.block1218, label %vector.body1211, !llvm.loop !157

middle.block1218:                                 ; preds = %vector.body1211
  %cmp.n1219 = icmp eq i64 %i.kh, %n.vec1210
  br i1 %cmp.n1219, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader1414

.lr.ph.i.i.i.i.i.i.preheader1414:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block1218
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.kd, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.kk, %middle.block1218 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.jh, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.kl, %middle.block1218 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader1414, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ks, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader1414 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.kr, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader1414 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.kq = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !155, !noalias !152
  store i64 %i.kq, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !152, !noalias !155
  %i.kr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.kr, %i.jo
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !158

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block1218, %.noexc123
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.kd, %.noexc123 ], [ %i.kk, %middle.block1218 ], [ %i.ks, %.lr.ph.i.i.i.i.i.i ]
  %i.kt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef %i.jv) #24
  store ptr %i.kd, ptr %5, align 8, !tbaa !51
  store ptr %i.kt, ptr %i.gn, align 8, !tbaa !55
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.kb
  store ptr %i.ku, ptr %i.jp, align 8, !tbaa !54
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backERKS1_.exit.i

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backERKS1_.exit.i: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116PrepHueCurveDataERKSt6vectorINS_19GradingControlPointESaIS2_EERS4_bb.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_116PrepHueCurveDataERKSt6vectorINS_19GradingControlPointESaIS2_EERS4_bb.exit: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backERKS1_.exit.i, %.loopexit.i
  %i.kv = load i32, ptr %i.bi, align 8, !tbaa !63
  %i.kw = icmp eq i32 %i.kv, 2
  %narrow = or i1 %i.kw, %switch114
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.kx = load ptr, ptr %0, align 8, !tbaa !26
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 56
  %i.kz = load ptr, ptr %i.ky, align 8
  %i.la = invoke noundef zeroext i1 %i.kz(ptr noundef nonnull align 8 dereferenceable(60) %0)
          to label %bb.ad unwind label %bb.an

.loopexit324:                                     ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i, %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i105.i, %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i119.i
  %lpad.loopexit326 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

.loopexit.split-lp325:                            ; preds = %.invoke, %bb.aa, %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.split-lp327 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

bb.ad:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_116PrepHueCurveDataERKSt6vectorINS_19GradingControlPointESaIS2_EERS4_bb.exit
  br i1 %i.la, label %bb.ar, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !62
  %i.le = load ptr, ptr %i.lb, align 8, !tbaa !56
  %i.lf = ptrtoint ptr %i.ld to i64
  %i.lg = ptrtoint ptr %i.le to i64
  %i.lh = sub i64 %i.lf, %i.lg
  %i.li = ashr exact i64 %i.lh, 2
  %i.lj = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.lk = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.ll = ptrtoint ptr %i.lj to i64
  %i.lm = ptrtoint ptr %i.lk to i64
  %i.ln = sub i64 %i.ll, %i.lm
  %i.lo = ashr exact i64 %i.ln, 3
  %i.lp = icmp eq i64 %i.li, %i.lo
  br i1 %i.lp, label %bb.af, label %bb.ar

bb.af:                                            ; preds = %bb.ae
  %i.lq = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.lb)
          to label %bb.ag unwind label %bb.an     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  br i1 %switch, label %bb.ah, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i155

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.lr = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !125
  %i.lt = getelementptr inbounds i8, ptr %i.ls, i64 -4
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !60
  store float %i.lu, ptr %i.a, align 4, !tbaa !60
  %i.lv = load ptr, ptr %6, align 8, !tbaa !125
  %i.lw = invoke ptr @_ZNSt6vectorIfSaIfEE6insertEN9__gnu_cxx17__normal_iteratorIPKfS1_EERS4_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.lv, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.ai unwind label %bb.ao     ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  %i.lx = load ptr, ptr %6, align 8, !tbaa !125   ; 4 uses
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !60 ; 2 uses
  %i.lz = load ptr, ptr %i.lr, align 8, !tbaa !62 ; 4 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !59
  %.not.i124 = icmp eq ptr %i.lz, %i.mb
  br i1 %.not.i124, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store float %i.ly, ptr %i.lz, align 4, !tbaa !60
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  store ptr %i.mc, ptr %i.lr, align 8, !tbaa !62
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.ak:                                            ; preds = %bb.ai
  %i.md = ptrtoint ptr %i.lz to i64
  %i.me = ptrtoint ptr %i.lx to i64
  %i.mf = sub i64 %i.md, %i.me                    ; 6 uses
  %i.mg = icmp eq i64 %i.mf, 9223372036854775804
  br i1 %i.mg, label %bb.al, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #22
          to label %.noexc126 unwind label %bb.ap

.noexc126:                                        ; preds = %bb.al
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ak
  %i.mh = ashr exact i64 %i.mf, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.mh, i64 1)
  %i.mi = add nsw i64 %.sroa.speculated.i.i.i, %i.mh ; 2 uses
  %i.mj = icmp ult i64 %i.mi, %i.mh
  %i.mk = call i64 @llvm.umin.i64(i64 %i.mi, i64 2305843009213693951)
  %i.ml = select i1 %i.mj, i64 2305843009213693951, i64 %i.mk ; 3 uses
  %.not.i.i.i125 = icmp ne i64 %i.ml, 0
  call void @llvm.assume(i1 %.not.i.i.i125)
  %i.mm = shl nuw nsw i64 %i.ml, 2
  %i.mn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mm) #23
          to label %.noexc127 unwind label %bb.ap ; 4 uses

.noexc127:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.mo = getelementptr inbounds i8, ptr %i.mn, i64 %i.mf ; 2 uses
  store float %i.ly, ptr %i.mo, align 4, !tbaa !60
  %i.mp = icmp sgt i64 %i.mf, 0
  br i1 %i.mp, label %bb.am, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

bb.am:                                            ; preds = %.noexc127
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mn, ptr nonnull align 4 %i.lx, i64 %i.mf, i1 false)
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.am, %.noexc127
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 4
  call void @_ZdlPvm(ptr noundef nonnull %i.lx, i64 noundef %i.mf) #24
  store ptr %i.mn, ptr %6, align 8, !tbaa !56
  store ptr %i.mq, ptr %i.lr, align 8, !tbaa !62
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %i.ml
  store ptr %i.mr, ptr %i.ma, align 8, !tbaa !59
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

_ZNSt6vectorIfSaIfEE9push_backERKf.exit:          ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i155

bb.an:                                            ; preds = %bb.af, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116PrepHueCurveDataERKSt6vectorINS_19GradingControlPointESaIS2_EERS4_bb.exit
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ao:                                            ; preds = %bb.ah
  %i.mt = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_523GradingBSplineCurveImplD2Ev:bb.a
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !54
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #24
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_523GradingBSplineCurveImplD0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN16OpenColorIO_v2_523GradingBSplineCurveImplE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24, !inline_history !174
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !51   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZN16OpenColorIO_v2_523GradingBSplineCurveImplD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !54
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #24, !inline_history !174
  br label %_ZN16OpenColorIO_v2_523GradingBSplineCurveImplD2Ev.exit

_ZN16OpenColorIO_v2_523GradingBSplineCurveImplD2Ev.exit: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !175
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !22   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !175
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !72     ; 9 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !55   ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.i = icmp eq ptr %1, %i.f
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %2, align 4
  store i64 %i.j, ptr %i.f, align 4
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.l, ptr %i.e, align 8, !tbaa !55
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 3 uses
  %i.n = load i64, ptr %2, align 4
  %i.o = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.p = load i64, ptr %i.o, align 4
  store i64 %i.p, ptr %i.f, align 4
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !55   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.r, ptr %i.e, align 8, !tbaa !55
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 -8 ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.t, %i.b                       ; 3 uses
  %i.v = ashr exact i64 %i.u, 3                   ; 2 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.e, label %bb.f, !prof !84

bb.e:                                             ; preds = %bb.d
  %i.x = sub nsw i64 0, %i.v
  %i.y = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.y, ptr align 4 %i.m, i64 %i.u, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.z = icmp eq i64 %i.u, 8
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = load i64, ptr %i.m, align 4
  store i64 %i.aa, ptr %i.s, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  store i64 %i.n, ptr %i.m, align 4
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 4 uses
  %i.ac = ptrtoint ptr %i.f to i64                ; 2 uses
  %i.ad = sub i64 %i.ac, %i.c                     ; 3 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.j, label %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #22
  unreachable

_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #23 ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.d
  %i.an = load i64, ptr %2, align 4
  store i64 %i.an, ptr %i.am, align 4
  %.not10.i.i.i.i = icmp eq ptr %i.a, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.ao = ptrtoaddr ptr %i.al to i64
  %3 = sub i64 %i.b, %i.c
  %4 = add i64 %3, -8                             ; 2 uses
  %i.ap = lshr i64 %4, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 72
  %i.ar = sub i64 %i.c, %i.ao
  %diff.check = icmp ugt i64 %i.ar, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader51, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as  ; 2 uses
  %i.au = getelementptr i8, ptr %i.a, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.av ; 2 uses
  %next.gep29 = getelementptr i8, ptr %i.a, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.aw = getelementptr i8, ptr %next.gep29, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep29, align 4, !alias.scope !179, !noalias !176
  %wide.load30 = load <2 x i64>, ptr %i.aw, align 4, !alias.scope !179, !noalias !176
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !176, !noalias !179
  store <2 x i64> %wide.load30, ptr %i.ax, align 4, !alias.scope !176, !noalias !179
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !181

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader51

.lr.ph.i.i.i.i.preheader51:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader51, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader51 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader51 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.az = load i64, ptr %.0911.i.i.i.i, align 4, !alias.scope !179, !noalias !176
  store i64 %i.az, ptr %.012.i.i.i.i, align 4, !alias.scope !176, !noalias !179
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ba, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !182

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.al, %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.at, %middle.block ], [ %i.bb, %.lr.ph.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i33 = ptrtoaddr ptr %.0.lcssa.i.i.i.i to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 5 uses
  %.not10.i.i.i16.i = icmp eq ptr %1, %i.f
  br i1 %.not10.i.i.i16.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i17.i.preheader

.lr.ph.i.i.i17.i.preheader:                       ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %5 = sub i64 %i.ac, %i.b
  %6 = add i64 %5, -8                             ; 2 uses
  %i.bd = lshr i64 %6, 3
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check36 = icmp ult i64 %6, 104
  br i1 %min.iters.check36, label %.lr.ph.i.i.i17.i.preheader50, label %vector.memcheck32

vector.memcheck32:                                ; preds = %.lr.ph.i.i.i17.i.preheader
  %i.bf = sub i64 %.0.lcssa.i.i.i.i33, %i.b
  %i.bg = add i64 %i.bf, 7
  %diff.check34 = icmp ult i64 %i.bg, 31
  br i1 %diff.check34, label %.lr.ph.i.i.i17.i.preheader50, label %vector.ph37

vector.ph37:                                      ; preds = %vector.memcheck32
  %n.vec38 = and i64 %i.be, 4611686018427387900   ; 3 uses
  %i.bh = shl i64 %n.vec38, 3                     ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bc, i64 %i.bh  ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ab, i64 %i.bh
  br label %vector.body39

vector.body39:                                    ; preds = %vector.body39, %vector.ph37
  %index40 = phi i64 [ 0, %vector.ph37 ], [ %index.next45, %vector.body39 ] ; 2 uses
  %i.bk = shl i64 %index40, 3                     ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.bc, i64 %i.bk ; 2 uses
  %next.gep42 = getelementptr i8, ptr %i.ab, i64 %i.bk ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %i.bl = getelementptr i8, ptr %next.gep42, i64 16
  %wide.load43 = load <2 x i64>, ptr %next.gep42, align 4, !alias.scope !186, !noalias !183
  %wide.load44 = load <2 x i64>, ptr %i.bl, align 4, !alias.scope !186, !noalias !183
  %i.bm = getelementptr i8, ptr %next.gep41, i64 16
  store <2 x i64> %wide.load43, ptr %next.gep41, align 4, !alias.scope !183, !noalias !186
  store <2 x i64> %wide.load44, ptr %i.bm, align 4, !alias.scope !183, !noalias !186
  %index.next45 = add nuw i64 %index40, 4         ; 2 uses
  %i.bn = icmp eq i64 %index.next45, %n.vec38
  br i1 %i.bn, label %middle.block46, label %vector.body39, !llvm.loop !188

middle.block46:                                   ; preds = %vector.body39
  %cmp.n47 = icmp eq i64 %i.be, %n.vec38
  br i1 %cmp.n47, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i17.i.preheader50

.lr.ph.i.i.i17.i.preheader50:                     ; preds = %vector.memcheck32, %.lr.ph.i.i.i17.i.preheader, %middle.block46
  %.012.i.i.i18.i.ph = phi ptr [ %i.bc, %vector.memcheck32 ], [ %i.bc, %.lr.ph.i.i.i17.i.preheader ], [ %i.bi, %middle.block46 ]
  %.0911.i.i.i19.i.ph = phi ptr [ %i.ab, %vector.memcheck32 ], [ %i.ab, %.lr.ph.i.i.i17.i.preheader ], [ %i.bj, %middle.block46 ]
  br label %.lr.ph.i.i.i17.i

.lr.ph.i.i.i17.i:                                 ; preds = %.lr.ph.i.i.i17.i.preheader50, %.lr.ph.i.i.i17.i
  %.012.i.i.i18.i = phi ptr [ %i.bq, %.lr.ph.i.i.i17.i ], [ %.012.i.i.i18.i.ph, %.lr.ph.i.i.i17.i.preheader50 ] ; 2 uses
  %.0911.i.i.i19.i = phi ptr [ %i.bp, %.lr.ph.i.i.i17.i ], [ %.0911.i.i.i19.i.ph, %.lr.ph.i.i.i17.i.preheader50 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %i.bo = load i64, ptr %.0911.i.i.i19.i, align 4, !alias.scope !186, !noalias !183
  store i64 %i.bo, ptr %.012.i.i.i18.i, align 4, !alias.scope !183, !noalias !186
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i, i64 8 ; 2 uses
  %.not.i.i.i20.i = icmp eq ptr %i.bp, %i.f
  br i1 %.not.i.i.i20.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i17.i, !llvm.loop !189

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i: ; preds = %.lr.ph.i.i.i17.i, %middle.block46, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %.0.lcssa.i.i.i21.i = phi ptr [ %i.bc, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i ], [ %i.bi, %middle.block46 ], [ %i.bq, %.lr.ph.i.i.i17.i ]
  %.not.i23.i = icmp eq ptr %i.a, null
  br i1 %.not.i23.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.ad) #24
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, %bb.k
  store ptr %i.al, ptr %0, align 8, !tbaa !51
  store ptr %.0.lcssa.i.i.i21.i, ptr %i.e, align 8, !tbaa !55
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.br, ptr %i.g, align 8, !tbaa !54
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.h, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit
  %i.bs = load ptr, ptr %0, align 8, !tbaa !51
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.d
  ret ptr %i.bt
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvEJRmEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #23 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !25
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = load i64, ptr %3, align 8, !tbaa !8      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN16OpenColorIO_v2_523GradingBSplineCurveImplE, i64 16), ptr %i.d, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.g = icmp ugt i64 %i.e, 1152921504606846975
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.96) #22
          to label %.noexc unwind label %bb.a

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i.i: ; preds = %_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i.i
  %i.h = shl nuw nsw i64 %i.e, 3                  ; 4 uses
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #23
          to label %.noexc9 unwind label %bb.a    ; 5 uses

.noexc9:                                          ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i
  store ptr %i.i, ptr %i.f, align 8, !tbaa !51
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.i, i8 0, i64 %i.h, i1 false)
  %scevgep.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.i, i64 %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.j, ptr %i.l, align 8, !tbaa !54
  store ptr %scevgep.i.i.i.i.i.i.i.i, ptr %i.k, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.n = shl nuw nsw i64 %i.e, 2                  ; 3 uses
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #23
          to label %.noexc9.i.i.i unwind label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit.i.i.i, !inline_history !190 ; 4 uses

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i.i.i: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i8 0, i64 48, i1 false)
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit

.noexc9.i.i.i:                                    ; preds = %.noexc9
  store ptr %i.o, ptr %i.m, align 8, !tbaa !56
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.p, ptr %i.q, align 8, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.o, i8 0, i64 %i.n, i1 false), !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit.i.i.i: ; preds = %.noexc9
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.h) #24, !inline_history !190
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit: ; preds = %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i.i.i, %.noexc9.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i.i.i ], [ %i.r, %.noexc9.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %.0.i.i.i.i.i.i.i.i.i.i, ptr %i.t, align 8, !tbaa !62
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 0, ptr %i.u, align 8, !tbaa !63
  store ptr %i.a, ptr %0, align 8, !tbaa !19
  store ptr %i.d, ptr %1, align 8, !tbaa !191
  ret void

bb.a:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i, %.noexc.i.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit.i.i.i, %bb.a
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.a ], [ %i.s, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit.i.i.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #24
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %i.a) #21, !inline_history !192
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

end_hunk_2
begin_hunk_3_@_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvEJiEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_:_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_.exit
  %i.h = icmp slt i32 %i.e, 0
  br i1 %i.h, label %.noexc.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.96) #22
          to label %.noexc unwind label %bb.a, !inline_history !195

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i.i: ; preds = %_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i.i
  %i.i = shl nuw nsw i64 %i.f, 3                  ; 4 uses
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #23
          to label %.noexc9 unwind label %bb.a, !inline_history !195 ; 5 uses

.noexc9:                                          ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i
  store ptr %i.j, ptr %i.g, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.f
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.j, i8 0, i64 %i.i, i1 false)
  %scevgep.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.j, i64 %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.k, ptr %i.m, align 8, !tbaa !54
  store ptr %scevgep.i.i.i.i.i.i.i.i, ptr %i.l, align 8, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.o = shl nuw nsw i64 %i.f, 2                  ; 3 uses
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #23
          to label %.noexc9.i.i.i unwind label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit.i.i.i, !inline_history !196 ; 4 uses

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i.i.i: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit

.noexc9.i.i.i:                                    ; preds = %.noexc9
  store ptr %i.p, ptr %i.n, align 8, !tbaa !56
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.q, ptr %i.r, align 8, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.p, i8 0, i64 %i.o, i1 false), !tbaa !60
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit.i.i.i: ; preds = %.noexc9
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.i) #24, !inline_history !196
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit: ; preds = %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i.i.i, %.noexc9.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i.i.i ], [ %i.s, %.noexc9.i.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %.0.i.i.i.i.i.i.i.i.i.i, ptr %i.u, align 8, !tbaa !62
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 0, ptr %i.v, align 8, !tbaa !63
  store ptr %i.a, ptr %0, align 8, !tbaa !19
  store ptr %i.d, ptr %1, align 8, !tbaa !191
  ret void

bb.a:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i, %.noexc.i.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_523GradingBSplineCurveImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit.i.i.i, %bb.a
  %eh.lpad-body = phi { ptr, i32 } [ %i.w, %bb.a ], [ %i.t, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EED2Ev.exit.i.i.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #24
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62   ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load float, ptr %3, align 4, !tbaa !60   ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !84

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !62
  br label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load float, ptr %i.o, align 4, !tbaa !60
  store float %i.s, ptr %i.d, align 4, !tbaa !60
  br label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !62
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !84

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load float, ptr %1, align 4, !tbaa !60
  store float %i.ac, ptr %i.ab, align 4, !tbaa !60
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec128 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec128, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert129 = insertelement <4 x float> poison, float %i.i, i64 0
  %broadcast.splat130 = shufflevector <4 x float> %broadcast.splatinsert129, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 2
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <4 x float> %broadcast.splat130, ptr %next.gep133, align 4, !tbaa !60
  store <4 x float> %broadcast.splat130, ptr %i.ak, align 4, !tbaa !60
  %index.next134 = add nuw i64 %index132, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !197

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.07.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store float %i.i, ptr %.07.i.i.i, align 4, !tbaa !60
  %i.am = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !198

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %4 = sub i64 %i.aq, %i.k
  %5 = add i64 %4, -4                             ; 2 uses
  %i.ar = lshr i64 %5, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2
  %i.au = getelementptr i8, ptr %i.d, i64 %i.at
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %broadcast.splat, ptr %next.gep, align 4, !tbaa !60
  store <4 x float> %broadcast.splat, ptr %i.aw, align 4, !tbaa !60
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !199

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.07.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store float %i.i, ptr %.07.i.i.i.i.i.i.i, align 4, !tbaa !60
  %i.ay = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !200

_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !62
  %i.az = icmp sgt i64 %i.k, 4
  br i1 %i.az, label %bb.n, label %bb.o, !prof !84

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !62
  br label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit
  %i.ba = icmp eq i64 %i.k, 4
  br i1 %i.ba, label %bb.p, label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bb = load float, ptr %1, align 4, !tbaa !60
  store float %i.bb, ptr %.0.i.i.i.i.i, align 4, !tbaa !60
  br label %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.bc = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.k
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !62
  %.not6.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not6.i.i.i70, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69
  %6 = sub i64 %i.f, %i.j
  %7 = add i64 %6, -4                             ; 2 uses
  %i.be = lshr i64 %7, 2
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %7, 28
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader151, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bf, 9223372036854775800  ; 3 uses
  %i.bg = shl i64 %n.vec115, 2
  %i.bh = getelementptr i8, ptr %1, i64 %i.bg
  %broadcast.splatinsert116 = insertelement <4 x float> poison, float %i.i, i64 0
  %broadcast.splat117 = shufflevector <4 x float> %broadcast.splatinsert116, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bi = shl i64 %index119, 2
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep120, i64 16
  store <4 x float> %broadcast.splat117, ptr %next.gep120, align 4, !tbaa !60
  store <4 x float> %broadcast.splat117, ptr %i.bj, align 4, !tbaa !60
  %index.next121 = add nuw i64 %index119, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bk, label %middle.block122, label %vector.body118, !llvm.loop !201

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bf, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader151

.lr.ph.i.i.i71.preheader151:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.07.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bh, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader151, %.lr.ph.i.i.i71
  %.07.i.i.i72 = phi ptr [ %i.bl, %.lr.ph.i.i.i71 ], [ %.07.i.i.i72.ph, %.lr.ph.i.i.i71.preheader151 ] ; 2 uses
  store float %i.i, ptr %.07.i.i.i72, align 4, !tbaa !60
  %i.bl = getelementptr inbounds nuw i8, ptr %.07.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bl, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !202

bb.q:                                             ; preds = %bb.b
  %i.bm = load ptr, ptr %0, align 8, !tbaa !56    ; 5 uses
  %i.bn = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bo = sub i64 %i.f, %i.bn
  %i.bp = ashr exact i64 %i.bo, 2                 ; 4 uses
  %i.bq = sub nsw i64 2305843009213693951, %i.bp
  %i.br = icmp ult i64 %i.bq, %2
  br i1 %i.br, label %bb.r, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.98) #22
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 %2)
  %i.bs = add nsw i64 %.sroa.speculated.i, %i.bp  ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.bp
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 2305843009213693951)
  %i.bv = select i1 %i.bt, i64 2305843009213693951, i64 %i.bu ; 3 uses
  %i.bw = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bx = sub i64 %i.bw, %i.bn                    ; 4 uses
  %.not.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.by = shl nuw nsw i64 %i.bv, 2
  %i.bz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #23
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ca = phi ptr [ %i.bz, %bb.s ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bx ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx.i.i.i.i.i75
  %i.cd = load float, ptr %3, align 4, !tbaa !60  ; 2 uses
  %i.ce = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.cf = lshr exact i64 %i.ce, 2
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check139 = icmp ult i64 %i.ce, 28
  br i1 %min.iters.check139, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %bb.t
  %n.vec141 = and i64 %i.cg, 9223372036854775800  ; 3 uses
  %i.ch = shl i64 %n.vec141, 2
  %i.ci = getelementptr i8, ptr %i.cb, i64 %i.ch
  %broadcast.splatinsert142 = insertelement <4 x float> poison, float %i.cd, i64 0
  %broadcast.splat143 = shufflevector <4 x float> %broadcast.splatinsert142, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph140
  %index145 = phi i64 [ 0, %vector.ph140 ], [ %index.next147, %vector.body144 ] ; 2 uses
  %i.cj = shl i64 %index145, 2
  %next.gep146 = getelementptr i8, ptr %i.cb, i64 %i.cj ; 2 uses
  %i.ck = getelementptr i8, ptr %next.gep146, i64 16
  store <4 x float> %broadcast.splat143, ptr %next.gep146, align 4, !tbaa !60
  store <4 x float> %broadcast.splat143, ptr %i.ck, align 4, !tbaa !60
  %index.next147 = add nuw i64 %index145, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.cl, label %middle.block148, label %vector.body144, !llvm.loop !203

middle.block148:                                  ; preds = %vector.body144
  %cmp.n149 = icmp eq i64 %i.cg, %n.vec141
  br i1 %cmp.n149, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block148
  %.07.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cb, %bb.t ], [ %i.ci, %middle.block148 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.07.i.i.i.i.i.i.i77 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.07.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store float %i.cd, ptr %.07.i.i.i.i.i.i.i77, align 4, !tbaa !60
  %i.cm = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cm, %i.cc
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !204

_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block148
  %i.cn = icmp sgt i64 %i.bx, 4
  br i1 %i.cn, label %bb.u, label %bb.v, !prof !84

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ca, ptr align 4 %i.bm, i64 %i.bx, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.co = icmp eq i64 %i.bx, 4
  br i1 %i.co, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.cp = load float, ptr %i.bm, align 4, !tbaa !60
  store float %i.cp, ptr %i.ca, align 4, !tbaa !60
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %2 ; 3 uses
  %i.cr = sub i64 %i.f, %i.bw                     ; 4 uses
  %i.cs = icmp sgt i64 %i.cr, 4
  br i1 %i.cs, label %bb.x, label %bb.y, !prof !84

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cq, ptr align 4 %1, i64 %i.cr, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  %i.ct = icmp eq i64 %i.cr, 4
  br i1 %i.ct, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cu = load float, ptr %1, align 4, !tbaa !60
  store float %i.cu, ptr %i.cq, align 4, !tbaa !60
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cv = getelementptr inbounds i8, ptr %i.cq, i64 %i.cr
  %.not.i82 = icmp eq ptr %i.bm, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cw = sub i64 %i.e, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.cw) #24
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ca, ptr %0, align 8, !tbaa !56
  store ptr %i.cv, ptr %i.c, align 8, !tbaa !62
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.bv
  store ptr %i.cx, ptr %i.a, align 8, !tbaa !59
  br label %_ZSt4fillIPffEvT_S1_RKT0_.exit

_ZSt4fillIPffEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block135, %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !109    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !168
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
end_hunk_3
