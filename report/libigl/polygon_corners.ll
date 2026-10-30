Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/polygon_corners?download=true
inline.NumInlined: 244
inline.NumDeleted: 155
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3igl15polygon_cornersIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES4_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EE:bb.a
bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !16
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #15
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.c
  %i.l = shl nuw i64 %i.e, 2
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #16 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %.sink.split.i.i

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !16
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #15
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.b
  %.sink.i.i = phi ptr [ %i.m, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ], [ null, %bb.b ]
  store ptr %.sink.i.i, ptr %1, align 8, !tbaa !14
  %.pre = load i64, ptr %i.a, align 8, !tbaa !26
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %bb.a, %.sink.split.i.i
  %i.p = phi i64 [ %i.b, %bb.a ], [ %.pre, %.sink.split.i.i ] ; 4 uses
  store i64 %i.e, ptr %i.f, align 8, !tbaa !13
  %i.q = add nsw i64 %i.p, 1                      ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !13
  %.not.i.i29 = icmp eq i64 %i.q, %i.s
  %.pre49 = load ptr, ptr %2, align 8, !tbaa !14  ; 2 uses
  br i1 %.not.i.i29, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit33, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  tail call void @free(ptr noundef %.pre49) #14
  %i.t = icmp sgt i64 %i.p, -1
  br i1 %i.t, label %bb.g, label %.sink.split.i.i30

bb.g:                                             ; preds = %bb.f
  %i.u = icmp samesign ugt i64 %i.p, 4611686018427387902
  br i1 %i.u, label %bb.h, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i32

bb.h:                                             ; preds = %bb.g
  %i.v = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.v, align 8, !tbaa !16
  tail call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #15
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i32: ; preds = %bb.g
  %i.w = shl nuw i64 %i.q, 2
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #16 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.i, label %.sink.split.i.i30

bb.i:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i32
  %i.z = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.z, align 8, !tbaa !16
  tail call void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #15
  unreachable

.sink.split.i.i30:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i32, %bb.f
  %.sink.i.i31 = phi ptr [ %i.x, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i32 ], [ null, %bb.f ] ; 2 uses
  store ptr %.sink.i.i31, ptr %2, align 8, !tbaa !14
  %.pre50 = load i64, ptr %i.a, align 8, !tbaa !26
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit33

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit33: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, %.sink.split.i.i30
  %i.aa = phi i64 [ %i.p, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit ], [ %.pre50, %.sink.split.i.i30 ] ; 7 uses
  %i.ab = phi ptr [ %.pre49, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit ], [ %.sink.i.i31, %.sink.split.i.i30 ] ; 5 uses
  store i64 %i.q, ptr %i.r, align 8, !tbaa !13
  store i32 0, ptr %i.ab, align 4, !tbaa !17
  %i.ac = icmp sgt i64 %i.aa, 0
  br i1 %i.ac, label %.preheader.lr.ph, label %._crit_edge43

.preheader.lr.ph:                                 ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit33
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !27  ; 3 uses
  %i.ae = icmp sgt i64 %i.ad, 0
  br i1 %i.ae, label %.preheader.lr.ph.split.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %min.iters.check = icmp ult i64 %i.aa, 8
  br i1 %min.iters.check, label %.preheader.preheader62, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %i.aa, 9223372036854775800     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  store <4 x i32> zeroinitializer, ptr %i.ag, align 4, !tbaa !17
  store <4 x i32> zeroinitializer, ptr %i.ah, align 4, !tbaa !17
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %._crit_edge43, label %.preheader.preheader62

.preheader.preheader62:                           ; preds = %.preheader.preheader, %middle.block
  %.02742.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.aj = load ptr, ptr %0, align 8, !tbaa !28
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %.02742.us = phi i64 [ 0, %.preheader.lr.ph.split.us ], [ %i.aw, %._crit_edge.us ] ; 3 uses
  %.02841.us = phi i64 [ 0, %.preheader.lr.ph.split.us ], [ %.1.lcssa.us, %._crit_edge.us ]
  %i.ak = getelementptr [4 x i8], ptr %i.aj, i64 %.02742.us
  br label %bb.j

bb.j:                                             ; preds = %.preheader.us, %bb.k
  %.036.us = phi i64 [ 0, %.preheader.us ], [ %i.as, %bb.k ] ; 3 uses
  %.134.us = phi i64 [ %.02841.us, %.preheader.us ], [ %i.ap, %bb.k ] ; 3 uses
  %i.al = mul nuw nsw i64 %.036.us, %i.aa
  %i.am = getelementptr [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !17 ; 2 uses
  %i.ao = icmp eq i32 %i.an, -1
  br i1 %i.ao, label %._crit_edge.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = add nsw i64 %.134.us, 1                 ; 2 uses
  %i.aq = load ptr, ptr %1, align 8, !tbaa !14
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.134.us
  store i32 %i.an, ptr %i.ar, align 4, !tbaa !17
  %i.as = add nuw nsw i64 %.036.us, 1             ; 2 uses
  %exitcond47.not = icmp eq i64 %i.as, %i.ad
  br i1 %exitcond47.not, label %._crit_edge.us, label %bb.j, !llvm.loop !22

._crit_edge.us:                                   ; preds = %bb.k, %bb.j
  %.1.lcssa.us = phi i64 [ %.134.us, %bb.j ], [ %i.ap, %bb.k ] ; 2 uses
  %.026.lcssa.us.in = phi i64 [ %.036.us, %bb.j ], [ %i.ad, %bb.k ]
  %.026.lcssa.us = trunc i64 %.026.lcssa.us.in to i32
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.02742.us
  %i.au = load i32, ptr %i.at, align 4, !tbaa !17
  %i.av = add i32 %i.au, %.026.lcssa.us
  %i.aw = add nuw nsw i64 %.02742.us, 1           ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.aw
  store i32 %i.av, ptr %i.ax, align 4, !tbaa !17
  %exitcond48.not = icmp eq i64 %i.aw, %i.aa
  br i1 %exitcond48.not, label %._crit_edge43, label %.preheader.us, !llvm.loop !23

.preheader:                                       ; preds = %.preheader.preheader62, %.preheader
  %.02742 = phi i64 [ %i.ay, %.preheader ], [ %.02742.ph, %.preheader.preheader62 ]
  %i.ay = add nuw nsw i64 %.02742, 1              ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ay
  store i32 0, ptr %i.az, align 4, !tbaa !17
  %exitcond.not = icmp eq i64 %i.ay, %i.aa
  br i1 %exitcond.not, label %._crit_edge43, label %.preheader, !llvm.loop !24

._crit_edge43:                                    ; preds = %.preheader, %._crit_edge.us, %middle.block, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit33
  %.028.lcssa = phi i64 [ 0, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit33 ], [ 0, %middle.block ], [ %.1.lcssa.us, %._crit_edge.us ], [ 0, %.preheader ] ; 2 uses
  tail call void @_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE18conservativeResizeElll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.028.lcssa, i64 noundef %.028.lcssa, i64 noundef 1)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl15polygon_cornersIiN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_EEvRKSt6vectorIS4_IT_SaIS5_EESaIS7_EERNS1_15PlainObjectBaseIT0_EERNSC_IT1_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !38     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24                  ; 2 uses
  %i.h = shl nsw i64 %i.g, 2                      ; 2 uses
  %i.i = icmp ugt i64 %i.h, 2305843009213693951
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #15
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.j = shl nuw nsw i64 %i.g, 4
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #17
          to label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i unwind label %.loopexit.split-lp ; 2 uses

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.h
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  %.pre90 = load ptr, ptr %0, align 8, !tbaa !38  ; 2 uses
  %.pre96 = ptrtoint ptr %.pre to i64
  %.pre97 = ptrtoint ptr %.pre90 to i64
  %.pre99 = sub i64 %.pre96, %.pre97              ; 2 uses
  %.pre101 = sdiv exact i64 %.pre99, 24
  %i.m = add nsw i64 %.pre101, 1                  ; 2 uses
  %i.n = icmp sgt i64 %.pre99, -24
  %3 = shl nuw nsw i64 %i.m, 2
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, %bb.c
  %.pre-phi102 = phi i64 [ %3, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ 4, %bb.c ]
  %.pre-phi102.a = phi i64 [ %i.m, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ 1, %bb.c ] ; 2 uses
  %.pre-phi100 = phi i1 [ %i.n, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ true, %bb.c ]
  %i.o = phi ptr [ %.pre90, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.c, %bb.c ]
  %i.p = phi ptr [ %.pre, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.b, %bb.c ]
  %.sroa.20.4 = phi ptr [ %i.l, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ null, %bb.c ] ; 3 uses
  %.sroa.13.2 = phi ptr [ %i.k, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ null, %bb.c ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !13
  %.not.i.i = icmp eq i64 %.pre-phi102.a, %i.r
  %.pre91 = load ptr, ptr %2, align 8, !tbaa !14  ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  tail call void @free(ptr noundef %.pre91) #14
  br i1 %.pre-phi100, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, label %.sink.split.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.d
  %i.s = tail call noalias ptr @malloc(i64 noundef %.pre-phi102) #16 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.e, label %.sink.split.i.i

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.u, align 8, !tbaa !16
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #15
          to label %.noexc30 unwind label %.loopexit.split-lp

.noexc30:                                         ; preds = %bb.e
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.d
  %.sink.i.i = phi ptr [ %i.s, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ], [ null, %bb.d ] ; 2 uses
  store ptr %.sink.i.i, ptr %2, align 8, !tbaa !14
  %.pre92 = load ptr, ptr %i.a, align 8, !tbaa !37
  %.pre93 = load ptr, ptr %0, align 8, !tbaa !38
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %.sink.split.i.i
  %i.v = phi ptr [ %i.o, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.pre93, %.sink.split.i.i ] ; 2 uses
  %i.w = phi ptr [ %i.p, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.pre92, %.sink.split.i.i ] ; 2 uses
  %i.x = phi ptr [ %.pre91, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sink.i.i, %.sink.split.i.i ]
  store i64 %.pre-phi102.a, ptr %i.q, align 8, !tbaa !13
  store i32 0, ptr %i.x, align 4, !tbaa !17
  %.not83 = icmp eq ptr %i.w, %i.v
  br i1 %.not83, label %._crit_edge, label %.lr.ph79

.loopexit.loopexit:                               ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.pre95 = load ptr, ptr %i.a, align 8, !tbaa !37
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.lr.ph79
  %i.y = phi ptr [ %i.af, %.lr.ph79 ], [ %i.bq, %.loopexit.loopexit ] ; 2 uses
  %i.z = phi ptr [ %i.ag, %.lr.ph79 ], [ %.pre95, %.loopexit.loopexit ] ; 2 uses
  %.sroa.20.1.lcssa = phi ptr [ %.sroa.20.075, %.lr.ph79 ], [ %.sroa.20.5, %.loopexit.loopexit ] ; 2 uses
  %.sroa.13.1.lcssa = phi ptr [ %.sroa.13.076, %.lr.ph79 ], [ %.sroa.13.3, %.loopexit.loopexit ] ; 2 uses
  %.sroa.040.1.lcssa = phi ptr [ %.sroa.040.077, %.lr.ph79 ], [ %.sroa.040.5, %.loopexit.loopexit ] ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = sdiv exact i64 %i.ac, 24
  %i.ae = icmp ult i64 %i.as, %i.ad
  br i1 %i.ae, label %.lr.ph79, label %._crit_edge, !llvm.loop !29

.lr.ph79:                                         ; preds = %bb.f, %.loopexit
  %i.af = phi ptr [ %i.y, %.loopexit ], [ %i.v, %bb.f ] ; 4 uses
  %i.ag = phi ptr [ %i.z, %.loopexit ], [ %i.w, %bb.f ]
  %.02278 = phi i64 [ %i.as, %.loopexit ], [ 0, %bb.f ] ; 4 uses
  %.sroa.040.077 = phi ptr [ %.sroa.040.1.lcssa, %.loopexit ], [ %.sroa.13.2, %bb.f ] ; 2 uses
  %.sroa.13.076 = phi ptr [ %.sroa.13.1.lcssa, %.loopexit ], [ %.sroa.13.2, %bb.f ] ; 2 uses
  %.sroa.20.075 = phi ptr [ %.sroa.20.1.lcssa, %.loopexit ], [ %.sroa.20.4, %bb.f ] ; 2 uses
  %i.ah = load ptr, ptr %2, align 8, !tbaa !14    ; 2 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %.02278
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !17
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %.02278 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !40 ; 2 uses
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !41 ; 3 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = lshr exact i64 %i.aq, 2
  %i.as = add nuw i64 %.02278, 1                  ; 3 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.as
  %i.au = trunc i64 %i.ar to i32
  %i.av = add i32 %i.aj, %i.au
  store i32 %i.av, ptr %i.at, align 4, !tbaa !17
  %.not84 = icmp eq ptr %i.am, %i.an
  br i1 %.not84, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph79, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.aw = phi ptr [ %i.bq, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.af, %.lr.ph79 ]
  %i.ax = phi ptr [ %i.br, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.af, %.lr.ph79 ]
  %i.ay = phi ptr [ %i.bw, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.an, %.lr.ph79 ]
  %.072 = phi i64 [ %i.bs, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ 0, %.lr.ph79 ] ; 2 uses
  %.sroa.040.171 = phi ptr [ %.sroa.040.5, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.sroa.040.077, %.lr.ph79 ] ; 7 uses
  %.sroa.13.170 = phi ptr [ %.sroa.13.3, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.sroa.13.076, %.lr.ph79 ] ; 6 uses
  %.sroa.20.169 = phi ptr [ %.sroa.20.5, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.sroa.20.075, %.lr.ph79 ] ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.072 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.13.170, %.sroa.20.169
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !17
  store i32 %i.ba, ptr %.sroa.13.170, align 4, !tbaa !17
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.h:                                             ; preds = %.lr.ph
  %i.bb = ptrtoint ptr %.sroa.13.170 to i64
  %i.bc = ptrtoint ptr %.sroa.040.171 to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 6 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775804
  br i1 %i.be, label %bb.i, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #15
          to label %.noexc31 unwind label %.loopexit.split-lp

.noexc31:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.bf = ashr exact i64 %i.bd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 2305843009213693951)
  %i.bj = select i1 %i.bh, i64 2305843009213693951, i64 %i.bi ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bk = shl nuw nsw i64 %i.bj, 2
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #17
          to label %.noexc32 unwind label %.loopexit56 ; 4 uses

.noexc32:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.bd ; 2 uses
  %i.bn = load i32, ptr %i.az, align 4, !tbaa !17
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !17
  %i.bo = icmp sgt i64 %i.bd, 0
  br i1 %i.bo, label %bb.j, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.j:                                             ; preds = %.noexc32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bl, ptr align 4 %.sroa.040.171, i64 %i.bd, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.j, %.noexc32
  %.not.i17.i.i = icmp eq ptr %.sroa.040.171, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.040.171, i64 noundef %i.bd) #18
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bj
  %.pre94 = load ptr, ptr %0, align 8, !tbaa !38  ; 2 uses
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.g
  %i.bq = phi ptr [ %.pre94, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.aw, %bb.g ] ; 2 uses
  %i.br = phi ptr [ %.pre94, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ax, %bb.g ] ; 2 uses
  %.sroa.20.5 = phi ptr [ %i.bp, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.20.169, %bb.g ] ; 2 uses
  %.pn = phi ptr [ %i.bm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.13.170, %bb.g ]
  %.sroa.040.5 = phi ptr [ %i.bl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.040.171, %bb.g ] ; 2 uses
  %.sroa.13.3 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.bs = add nuw i64 %.072, 1                    ; 2 uses
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %.02278 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !40
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !41 ; 2 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 2
  %i.cb = icmp ult i64 %i.bs, %i.ca
  br i1 %i.cb, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !30

.loopexit56:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.b, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %bb.e, %bb.i
  %.sroa.20.2.ph = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ], [ %.sroa.20.4, %bb.e ], [ %.sroa.13.170, %bb.i ], [ null, %bb.b ]
  %.sroa.040.2.ph = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ], [ %.sroa.13.2, %bb.e ], [ %.sroa.040.171, %bb.i ], [ null, %bb.b ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

._crit_edge:                                      ; preds = %.loopexit, %bb.f
  %.sroa.20.0.lcssa = phi ptr [ %.sroa.20.4, %bb.f ], [ %.sroa.20.1.lcssa, %.loopexit ] ; 2 uses
  %.sroa.13.0.lcssa = phi ptr [ %.sroa.13.2, %bb.f ], [ %.sroa.13.1.lcssa, %.loopexit ]
  %.sroa.040.0.lcssa = phi ptr [ %.sroa.13.2, %bb.f ], [ %.sroa.040.1.lcssa, %.loopexit ] ; 11 uses
  %i.cc = ptrtoint ptr %.sroa.13.0.lcssa to i64
  %i.cd = ptrtoint ptr %.sroa.040.0.lcssa to i64  ; 3 uses
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 2                 ; 4 uses
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.cf, i64 noundef 1)
          to label %.noexc33 unwind label %bb.m

.noexc33:                                         ; preds = %._crit_edge
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !13
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ch, %i.cf
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.l, label %thread-pre-split.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %.noexc33
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.cf, i64 noundef 1)
          to label %.noexc34 unwind label %bb.m

.noexc34:                                         ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.cg, align 8, !tbaa !13
  br label %bb.l

bb.l:                                             ; preds = %.noexc34, %.noexc33
  %i.ci = phi i64 [ %.pr.i.i.i.i.i.i.i, %.noexc34 ], [ %i.cf, %.noexc33 ] ; 7 uses
  %i.cj = load ptr, ptr %1, align 8, !tbaa !14    ; 8 uses
  %i.ck = ptrtoaddr ptr %i.cj to i64
  %i.cl = sdiv i64 %i.ci, 4
end_hunk_0
