Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/fit_rotations?download=true
inline.NumInlined: 1689
inline.NumDeleted: 1101
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN3igl17fit_rotations_SSEERKN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEERS2_:bb.a
  %i.bt = load float, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.1, align 4, !tbaa !17
  store float %i.bt, ptr %i.bs, align 4, !tbaa !17
  %i.bu = getelementptr i8, ptr %i.bs, i64 4
  %gep.i.i.i.i.i.i.i.i.i.i.1.1 = getelementptr i8, ptr %i.bk, i64 52
  %i.bv = load float, ptr %gep.i.i.i.i.i.i.i.i.i.i.1.1, align 4, !tbaa !17
  store float %i.bv, ptr %i.bu, align 4, !tbaa !17
  %i.bw = getelementptr i8, ptr %i.bs, i64 8
  %gep.i.i.i.i.i.i.i.i.i.i.2.1 = getelementptr i8, ptr %i.bk, i64 100
  %i.bx = load float, ptr %gep.i.i.i.i.i.i.i.i.i.i.2.1, align 4, !tbaa !17
  store float %i.bx, ptr %i.bw, align 4, !tbaa !17
  %i.by = getelementptr i8, ptr %i.bm, i64 %.idx72 ; 3 uses
  %invariant.gep.i.i.i.i.i.i.i.i.i.i.2 = getelementptr i8, ptr %i.bk, i64 8
  %i.bz = load float, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.2, align 4, !tbaa !17
  store float %i.bz, ptr %i.by, align 4, !tbaa !17
  %i.ca = getelementptr i8, ptr %i.by, i64 4
  %gep.i.i.i.i.i.i.i.i.i.i.1.2 = getelementptr i8, ptr %i.bk, i64 56
  %i.cb = load float, ptr %gep.i.i.i.i.i.i.i.i.i.i.1.2, align 4, !tbaa !17
  store float %i.cb, ptr %i.ca, align 4, !tbaa !17
  %i.cc = getelementptr i8, ptr %i.by, i64 8
  %gep.i.i.i.i.i.i.i.i.i.i.2.2 = getelementptr i8, ptr %i.bk, i64 104
  %i.cd = load float, ptr %gep.i.i.i.i.i.i.i.i.i.i.2.2, align 4, !tbaa !17
  store float %i.cd, ptr %i.cc, align 4, !tbaa !17
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %i.ce = icmp samesign ult i64 %indvars.iv.next65, %i.bj
  br i1 %i.ce, label %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i, label %._crit_edge58, !llvm.loop !25

._crit_edge60:                                    ; preds = %._crit_edge58, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN3igl16polar_svd3x3_sseIfEEvRKN5Eigen6MatrixIT_Li12ELi3ELi0ELi12ELi3EEERS4_(ptr noundef nonnull align 16 dereferenceable(144), ptr noundef nonnull align 16 dereferenceable(144)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl17fit_rotations_SSEERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix", align 8     ; 7 uses
  %3 = alloca %"class.Eigen::CwiseUnaryOp", align 8 ; 4 uses
  %4 = alloca %"class.Eigen::Matrix", align 8     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr %0, ptr %3, align 8, !tbaa !26, !alias.scope !28
  call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEC2INS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS1_IdLin1ELin1ELi0ELin1ELin1EEEEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl17fit_rotations_SSEERKN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEERS2_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %4, align 8, !tbaa !16     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !9    ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !31   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !32
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.g, %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.i, %i.e
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i64 %i.c, 0
  %i.k = icmp eq i64 %i.e, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i = or i1 %i.j, %i.k
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = sdiv i64 9223372036854775807, %i.e
  %i.m = icmp sgt i64 %i.c, %i.l
  br i1 %i.m, label %.noexc.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.d
  %i.n = call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !14
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %.noexc.i.i.i.i.i.i.i
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.o = mul nsw i64 %i.e, %i.c
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.o, i64 noundef %i.c, i64 noundef %i.e)
          to label %.noexc7 unwind label %bb.g

.noexc7:                                          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !32
  %.pre15.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !35
  br label %bb.e

bb.e:                                             ; preds = %.noexc7, %bb.b
  %i.p = phi i64 [ %.pre15.i.i.i.i.i.i.i, %.noexc7 ], [ %i.e, %bb.b ]
  %i.q = phi i64 [ %.pre.i.i.i.i.i.i.i, %.noexc7 ], [ %i.c, %bb.b ]
  %i.r = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.s = mul nsw i64 %i.q, %i.p                   ; 5 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIfdEEKNS0_IfLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.s, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.s, 9223372036854775804      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %wide.load = load <2 x float>, ptr %i.v, align 4, !tbaa !17
  %wide.load11 = load <2 x float>, ptr %i.w, align 4, !tbaa !17
  %i.x = fpext <2 x float> %wide.load to <2 x double>
  %i.y = fpext <2 x float> %wide.load11 to <2 x double>
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <2 x double> %i.x, ptr %i.u, align 8, !tbaa !37
  store <2 x double> %i.y, ptr %i.z, align 8, !tbaa !37
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIfdEEKNS0_IfLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.i.i.i.preheader12:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader12 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.05.i.i.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.05.i.i.i.i.i.i.i.i
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !17
  %i.ae = fpext float %i.ad to double
  store double %i.ae, ptr %i.ab, align 8, !tbaa !37
  %i.af = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.af, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIfdEEKNS0_IfLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !42

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIfdEEKNS0_IfLin1ELin1ELi0ELin1ELin1EEEEEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %bb.e
  %i.ag = load ptr, ptr %4, align 8, !tbaa !16
  call void @free(ptr noundef %i.ag) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.ah = load ptr, ptr %2, align 8, !tbaa !16
  call void @free(ptr noundef %i.ah) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void

bb.f:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.g ], [ %i.ai, %bb.f ]
  %i.ak = load ptr, ptr %4, align 8, !tbaa !16
  call void @free(ptr noundef %i.ak) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.al = load ptr, ptr %2, align 8, !tbaa !16
  call void @free(ptr noundef %i.al) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl13fit_rotationsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EEbRNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.56", align 8  ; 9 uses
  %4 = alloca %"class.Eigen::Matrix.56", align 8  ; 17 uses
  %5 = alloca %"class.Eigen::Matrix.56", align 8  ; 9 uses
  %6 = alloca %"class.Eigen::Matrix.56", align 8  ; 9 uses
  %7 = alloca %"class.Eigen::Matrix.56", align 8  ; 9 uses
  %8 = alloca %"class.Eigen::Matrix.66", align 8  ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !35
  %.fr = freeze i64 %i.b                          ; 7 uses
  %i.c = trunc i64 %.fr to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !32
  %sext = shl i64 %.fr, 32                        ; 4 uses
  %i.f = ashr exact i64 %sext, 32                 ; 10 uses
  %i.g = sdiv i64 %i.e, %i.f                      ; 3 uses
  %i.h = trunc i64 %i.g to i32                    ; 3 uses
  %sext34 = mul i64 %sext, %i.g                   ; 2 uses
  %i.i = ashr exact i64 %sext34, 32               ; 3 uses
  %i.j = icmp eq i64 %sext34, 0
  br i1 %i.j, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sdiv i64 9223372036854775807, %i.i
  %i.l = icmp sgt i64 %i.f, %i.k
  br i1 %i.l, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %bb.a, %bb.b
  %i.n = mul nsw i64 %i.i, %i.f
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.n, i64 noundef %i.f, i64 noundef %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.o = icmp sgt i32 %i.h, 0
  br i1 %i.o, label %.preheader47.lr.ph, label %._crit_edge52

.preheader47.lr.ph:                               ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.p = icmp sgt i32 %i.c, 0
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = icmp sgt i64 %i.f, 0                     ; 2 uses
  br i1 %i.p, label %.preheader47.us.preheader, label %.preheader47.lr.ph.split

.preheader47.us.preheader:                        ; preds = %.preheader47.lr.ph
  %i.s = and i64 %i.g, 2147483647                 ; 2 uses
  %i.t = and i64 %.fr, 2147483647                 ; 4 uses
  %i.u = lshr exact i64 %sext, 29                 ; 2 uses
  %i.v = add nsw i64 %i.u, -8
  %i.w = shl nuw nsw i64 %i.t, 3
  %i.x = lshr exact i64 %sext, 27
  %i.y = getelementptr i8, ptr %4, i64 %i.x
  %scevgep99 = getelementptr i8, ptr %i.y, i64 -24
  %i.z = add nsw i64 %i.t, -1
  %xtraiter = and i64 %.fr, 3                     ; 3 uses
  %i.aa = icmp ult i64 %i.z, 3
  %unroll_iter = and i64 %.fr, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod102 = icmp ne i64 %xtraiter, 0
  %min.iters.check = icmp ult i64 %i.f, 5
  %i.ab = and i64 %.fr, 3                         ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  %i.ad = select i1 %i.ac, i64 4, i64 %i.ab
  %n.vec = sub nsw i64 %i.f, %i.ad                ; 2 uses
  br label %.preheader47.us

.preheader47.us:                                  ; preds = %.preheader47.us.preheader, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS0_INS1_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.us
  %indvars.iv85 = phi i64 [ 0, %.preheader47.us.preheader ], [ %indvars.iv.next86, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS0_INS1_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.us ] ; 4 uses
  %i.ae = mul i64 %i.w, %indvars.iv85
  %i.af = add i64 %i.v, %i.ae
  %i.ag = load ptr, ptr %0, align 8, !tbaa !36
  %i.ah = load i64, ptr %i.d, align 8, !tbaa !32  ; 5 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.ag, i64 %indvars.iv85
  br label %.preheader.us

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv76 = phi i64 [ %indvars.iv.next77.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.ai = mul nsw i64 %i.ah, %indvars.iv76
  %i.aj = getelementptr [8 x i8], ptr %gep, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !37
  %.idx.i.i.i.us = mul nuw nsw i64 %indvars.iv76, 24
  %i.al = getelementptr i8, ptr %i.cx, i64 %.idx.i.i.i.us
  store double %i.ak, ptr %i.al, align 8, !tbaa !37
  %indvars.iv.next77 = or disjoint i64 %indvars.iv76, 1 ; 2 uses
  %i.am = mul nsw i64 %i.ah, %indvars.iv.next77
  %i.an = getelementptr [8 x i8], ptr %gep, i64 %i.am
  %i.ao = load double, ptr %i.an, align 8, !tbaa !37
  %.idx.i.i.i.us.1 = mul nuw nsw i64 %indvars.iv.next77, 24
  %i.ap = getelementptr i8, ptr %i.cx, i64 %.idx.i.i.i.us.1
  store double %i.ao, ptr %i.ap, align 8, !tbaa !37
  %indvars.iv.next77.1 = or disjoint i64 %indvars.iv76, 2 ; 2 uses
  %i.aq = mul nsw i64 %i.ah, %indvars.iv.next77.1
  %i.ar = getelementptr [8 x i8], ptr %gep, i64 %i.aq
  %i.as = load double, ptr %i.ar, align 8, !tbaa !37
  %.idx.i.i.i.us.2 = mul nuw nsw i64 %indvars.iv.next77.1, 24
  %i.at = getelementptr i8, ptr %i.cx, i64 %.idx.i.i.i.us.2
  store double %i.as, ptr %i.at, align 8, !tbaa !37
  %indvars.iv.next77.2 = or disjoint i64 %indvars.iv76, 3 ; 2 uses
  %i.au = mul nsw i64 %i.ah, %indvars.iv.next77.2
  %i.av = getelementptr [8 x i8], ptr %gep, i64 %i.au
  %i.aw = load double, ptr %i.av, align 8, !tbaa !37
  %.idx.i.i.i.us.3 = mul nuw nsw i64 %indvars.iv.next77.2, 24
  %i.ax = getelementptr i8, ptr %i.cx, i64 %.idx.i.i.i.us.3
  store double %i.aw, ptr %i.ax, align 8, !tbaa !37
  %indvars.iv.next77.3 = add nuw nsw i64 %indvars.iv76, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !43

bb.d:                                             ; preds = %._crit_edge50.us
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @_ZN3igl9polar_svdIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEES3_S3_S3_NS2_IdLi3ELi1ELi0ELi3ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EERNSA_IT3_EERNSA_IT4_EE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(72) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge50.us
  call void @_ZN3igl12polar_svd3x3IN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEEvRKT_RS4_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %4)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ay = mul i64 %indvars.iv85, %i.t
  %i.az = load ptr, ptr %2, align 8, !tbaa !36, !noalias !44 ; 2 uses
  %i.ba = load i64, ptr %i.q, align 8, !tbaa !32, !noalias !44 ; 4 uses
  %i.bb = mul i64 %i.ba, %i.ay
  %i.bc = getelementptr [8 x i8], ptr %i.az, i64 %i.bb ; 2 uses
  br i1 %i.r, label %.preheader.i.i.i.i.i.i.i.i.i.i.us.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS0_INS1_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.us

.preheader.i.i.i.i.i.i.i.i.i.i.us.preheader:      ; preds = %bb.f
  %scevgep = getelementptr i8, ptr %i.az, i64 %i.u
  %i.bd = mul i64 %i.ba, %i.af
  %scevgep98 = getelementptr i8, ptr %scevgep, i64 %i.bd
  %bound0 = icmp ult ptr %i.bc, %scevgep99
  %bound1 = icmp ult ptr %4, %scevgep98
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %i.ba, 1152921504606846976
  %stride.check = icmp ne i64 %.mask, 0
  %i.be = or i1 %found.conflict, %stride.check
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.us

.preheader.i.i.i.i.i.i.i.i.i.i.us:                ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.us.preheader, %._crit_edge.i.i.i.i.i.i.i.i.i.i.us
  %.0810.i.i.i.i.i.i.i.i.i.i.us = phi i64 [ %i.cv, %._crit_edge.i.i.i.i.i.i.i.i.i.i.us ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.us.preheader ] ; 3 uses
  %i.bf = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.us, %i.ba
  %i.bg = getelementptr [8 x i8], ptr %i.bc, i64 %i.bf ; 6 uses
  %invariant.gep.i.i.i.i.i.i.i.i.i.i.us = getelementptr [8 x i8], ptr %4, i64 %.0810.i.i.i.i.i.i.i.i.i.i.us ; 9 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.be
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.us ] ; 6 uses
  %i.bh = getelementptr [8 x i8], ptr %i.bg, i64 %index ; 2 uses
  %i.bi = mul nuw nsw i64 %index, 24
  %i.bj = mul nuw i64 %index, 24
  %i.bk = mul nuw i64 %index, 24
  %i.bl = mul nuw i64 %index, 24
  %i.bm = getelementptr i8, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.us, i64 %i.bi
  %i.bn = getelementptr i8, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.us, i64 %i.bj
  %i.bo = getelementptr i8, ptr %i.bn, i64 24
  %i.bp = getelementptr i8, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.us, i64 %i.bk
  %i.bq = getelementptr i8, ptr %i.bp, i64 48
  %i.br = getelementptr i8, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.us, i64 %i.bl
  %i.bs = getelementptr i8, ptr %i.br, i64 72
  %i.bt = load double, ptr %i.bm, align 8, !tbaa !37, !alias.scope !47
  %i.bu = load double, ptr %i.bo, align 8, !tbaa !37, !alias.scope !47
  %i.bv = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bw = insertelement <2 x double> %i.bv, double %i.bu, i64 1
  %i.bx = load double, ptr %i.bq, align 8, !tbaa !37, !alias.scope !47
  %i.by = load double, ptr %i.bs, align 8, !tbaa !37, !alias.scope !47
  %i.bz = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.ca = insertelement <2 x double> %i.bz, double %i.by, i64 1
  %i.cb = getelementptr i8, ptr %i.bh, i64 16
  store <2 x double> %i.bw, ptr %i.bh, align 8, !tbaa !37, !alias.scope !50, !noalias !47
  store <2 x double> %i.ca, ptr %i.cb, align 8, !tbaa !37, !alias.scope !50, !noalias !47
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %scalar.ph.preheader, label %vector.body, !llvm.loop !52

scalar.ph.preheader:                              ; preds = %vector.body, %.preheader.i.i.i.i.i.i.i.i.i.i.us
  %.09.i.i.i.i.i.i.i.i.i.i.us.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.us ], [ %n.vec, %vector.body ] ; 4 uses
  %i.cd = sub i64 %.fr, %.09.i.i.i.i.i.i.i.i.i.i.us.ph
  %xtraiter103 = and i64 %i.cd, 3                 ; 2 uses
  %lcmp.mod104.not = icmp eq i64 %xtraiter103, 0
  br i1 %lcmp.mod104.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.09.i.i.i.i.i.i.i.i.i.i.us.prol = phi i64 [ %i.cg, %scalar.ph.prol ], [ %.09.i.i.i.i.i.i.i.i.i.i.us.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ce = getelementptr [8 x i8], ptr %i.bg, i64 %.09.i.i.i.i.i.i.i.i.i.i.us.prol
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.prol = mul nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.us.prol, 24
  %gep.i.i.i.i.i.i.i.i.i.i.us.prol = getelementptr i8, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.us, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.prol
  %i.cf = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i.us.prol, align 8, !tbaa !37
  store double %i.cf, ptr %i.ce, align 8, !tbaa !37
  %i.cg = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.us.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter103
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !53

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.i.i.i.i.i.i.i.i.i.us.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i.us.ph, %scalar.ph.preheader ], [ %i.cg, %scalar.ph.prol ]
  %i.ch = sub nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.us.ph, %i.f
  %i.ci = icmp ugt i64 %i.ch, -4
  br i1 %i.ci, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i.i.i.i.i.i.i.i.i.i.us = phi i64 [ %i.cu, %scalar.ph ], [ %.09.i.i.i.i.i.i.i.i.i.i.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cj = getelementptr [8 x i8], ptr %i.bg, i64 %.09.i.i.i.i.i.i.i.i.i.i.us
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us = mul nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.us, 24
  %gep.i.i.i.i.i.i.i.i.i.i.us = getelementptr i8, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.us, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us
  %i.ck = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i.us, align 8, !tbaa !37
  store double %i.ck, ptr %i.cj, align 8, !tbaa !37
  %i.cl = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.us, 1 ; 2 uses
  %i.cm = getelementptr [8 x i8], ptr %i.bg, i64 %i.cl
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.1 = mul nuw nsw i64 %i.cl, 24
  %gep.i.i.i.i.i.i.i.i.i.i.us.1 = getelementptr i8, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.us, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.1
  %i.cn = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i.us.1, align 8, !tbaa !37
  store double %i.cn, ptr %i.cm, align 8, !tbaa !37
  %i.co = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.us, 2 ; 2 uses
  %i.cp = getelementptr [8 x i8], ptr %i.bg, i64 %i.co
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.2 = mul nuw nsw i64 %i.co, 24
  %gep.i.i.i.i.i.i.i.i.i.i.us.2 = getelementptr i8, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.us, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.2
  %i.cq = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i.us.2, align 8, !tbaa !37
  store double %i.cq, ptr %i.cp, align 8, !tbaa !37
  %i.cr = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.us, 3 ; 2 uses
  %i.cs = getelementptr [8 x i8], ptr %i.bg, i64 %i.cr
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.3 = mul nuw nsw i64 %i.cr, 24
  %gep.i.i.i.i.i.i.i.i.i.i.us.3 = getelementptr i8, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.us, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.3
  %i.ct = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i.us.3, align 8, !tbaa !37
  store double %i.ct, ptr %i.cs, align 8, !tbaa !37
  %i.cu = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.us, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.3 = icmp eq i64 %i.cu, %i.f
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.3, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.us, label %scalar.ph, !llvm.loop !55

._crit_edge.i.i.i.i.i.i.i.i.i.i.us:               ; preds = %scalar.ph, %scalar.ph.prol.loopexit
  %i.cv = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.us, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i.i.i.us = icmp eq i64 %i.cv, %i.f
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i.i.i.us, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS0_INS1_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.us, label %.preheader.i.i.i.i.i.i.i.i.i.i.us, !llvm.loop !56

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS0_INS1_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.us: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.us, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next86, %i.s
  br i1 %exitcond89.not, label %._crit_edge52, label %.preheader47.us, !llvm.loop !57

.preheader.us:                                    ; preds = %.preheader47.us, %._crit_edge.us
  %indvars.iv80 = phi i64 [ 0, %.preheader47.us ], [ %indvars.iv.next81, %._crit_edge.us ] ; 3 uses
  %i.cw = mul nuw nsw i64 %indvars.iv80, %i.s
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cw ; 5 uses
  %i.cx = getelementptr [8 x i8], ptr %3, i64 %indvars.iv80 ; 5 uses
  br i1 %i.aa, label %.epil.preheader, label %.preheader.us.new

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv76.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next77.3, %._crit_edge.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod102)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv76.epil = phi i64 [ %indvars.iv76.epil.init, %.epil.preheader ], [ %indvars.iv.next77.epil, %bb.g ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.cy = mul nsw i64 %i.ah, %indvars.iv76.epil
  %i.cz = getelementptr [8 x i8], ptr %gep, i64 %i.cy
  %i.da = load double, ptr %i.cz, align 8, !tbaa !37
  %.idx.i.i.i.us.epil = mul nuw nsw i64 %indvars.iv76.epil, 24
  %i.db = getelementptr i8, ptr %i.cx, i64 %.idx.i.i.i.us.epil
  store double %i.da, ptr %i.db, align 8, !tbaa !37
  %indvars.iv.next77.epil = add nuw nsw i64 %indvars.iv76.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.g, !llvm.loop !58

._crit_edge.us:                                   ; preds = %bb.g, %._crit_edge.us.unr-lcssa
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %i.t
  br i1 %exitcond84.not, label %._crit_edge50.us, label %.preheader.us, !llvm.loop !59

._crit_edge50.us:                                 ; preds = %._crit_edge.us
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  br i1 %1, label %bb.e, label %bb.d

.preheader47.lr.ph.split:                         ; preds = %.preheader47.lr.ph
  br i1 %i.r, label %.preheader47.us53, label %.preheader47.lr.ph.split.split

.preheader47.us53:                                ; preds = %.preheader47.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  br i1 %1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader47.us53
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @_ZN3igl9polar_svdIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEES3_S3_S3_NS2_IdLi3ELi1ELi0ELi3ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EERNSA_IT3_EERNSA_IT4_EE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(72) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.us55

bb.i:                                             ; preds = %.preheader47.us53
  call void @_ZN3igl12polar_svd3x3IN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEEvRKT_RS4_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %4)
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.us55

.preheader.i.i.i.i.i.i.i.i.i.i.us55:              ; preds = %bb.h, %bb.i
  %i.dc = load ptr, ptr %2, align 8, !tbaa !36, !noalias !44
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.preheader.i.i.i.i.i.i.i.i.i.i.us55
  %.09.i.i.i.i.i.i.i.i.i.i.us58 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.us55 ], [ %i.df, %bb.j ] ; 3 uses
  %i.dd = getelementptr [8 x i8], ptr %i.dc, i64 %.09.i.i.i.i.i.i.i.i.i.i.us58
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us59 = mul nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.us58, 24
  %gep.i.i.i.i.i.i.i.i.i.i.us60 = getelementptr i8, ptr %4, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us59
  %i.de = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i.us60, align 8, !tbaa !37
  store double %i.de, ptr %i.dd, align 8, !tbaa !37
  %i.df = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.us58, 1
  br label %bb.j

.preheader47.lr.ph.split.split:                   ; preds = %.preheader47.lr.ph.split
  br i1 %1, label %.preheader47.us67, label %.preheader47

.preheader47.us67:                                ; preds = %.preheader47.lr.ph.split.split, %.preheader47.us67
  %.03151.us68 = phi i32 [ %i.dg, %.preheader47.us67 ], [ 0, %.preheader47.lr.ph.split.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @_ZN3igl12polar_svd3x3IN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEEvRKT_RS4_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.dg = add nuw nsw i32 %.03151.us68, 1         ; 2 uses
  %exitcond74.not = icmp eq i32 %i.dg, %i.h
  br i1 %exitcond74.not, label %._crit_edge52, label %.preheader47.us67, !llvm.loop !57

.preheader47:                                     ; preds = %.preheader47.lr.ph.split.split, %.preheader47
  %.03151 = phi i32 [ %i.dh, %.preheader47 ], [ 0, %.preheader47.lr.ph.split.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @_ZN3igl9polar_svdIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEES3_S3_S3_NS2_IdLi3ELi1ELi0ELi3ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EERNSA_IT3_EERNSA_IT4_EE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(72) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.dh = add nuw nsw i32 %.03151, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.dh, %i.h
  br i1 %exitcond.not, label %._crit_edge52, label %.preheader47, !llvm.loop !57

._crit_edge52:                                    ; preds = %.preheader47, %.preheader47.us67, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS0_INS1_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.us, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void
}

declare void @_ZN3igl12polar_svd3x3IN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEEvRKT_RS4_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

declare void @_ZN3igl9polar_svdIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEES3_S3_S3_NS2_IdLi3ELi1ELi0ELi3ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EERNSA_IT3_EERNSA_IT4_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl20fit_rotations_planarIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix.106", align 16 ; 7 uses
  %3 = alloca %"class.Eigen::Matrix.106", align 16 ; 10 uses
  %4 = alloca %"class.Eigen::Matrix.106", align 16 ; 3 uses
  %5 = alloca %"class.Eigen::Matrix.106", align 16 ; 5 uses
  %6 = alloca %"class.Eigen::Matrix.106", align 16 ; 6 uses
  %7 = alloca %"class.Eigen::Matrix.116", align 16 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !32
  %sext = shl i64 %i.b, 32                        ; 2 uses
  %i.e = ashr exact i64 %sext, 32                 ; 9 uses
  %i.f = sdiv i64 %i.d, %i.e                      ; 3 uses
  %i.g = trunc i64 %i.f to i32
  %sext31 = mul i64 %sext, %i.f                   ; 2 uses
  %i.h = ashr exact i64 %sext31, 32               ; 3 uses
  %i.i = icmp eq i64 %sext31, 0
  br i1 %i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = sdiv i64 9223372036854775807, %i.h
  %i.k = icmp sgt i64 %i.e, %i.j
  br i1 %i.k, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %bb.a, %bb.b
  %i.m = mul nsw i64 %i.h, %i.e
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.m, i64 noundef %i.e, i64 noundef %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.n = icmp sgt i32 %i.g, 0
  br i1 %i.n, label %.preheader48.lr.ph, label %._crit_edge

.preheader48.lr.ph:                               ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = icmp sgt i64 %i.e, 0
  %i.w = and i64 %i.f, 2147483647                 ; 2 uses
  %sext57 = shl i64 %i.b, 32
  %i.x = ashr exact i64 %sext57, 32
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24
  %min.iters.check = icmp ult i64 %i.e, 4
  %i.ac = and i64 %i.b, 3                         ; 2 uses
  %n.vec = sub nuw nsw i64 %i.e, %i.ac            ; 2 uses
  %cmp.n = icmp eq i64 %i.ac, 0
  br label %.preheader48

.preheader48:                                     ; preds = %.preheader48.lr.ph, %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i
  %indvars.iv = phi i64 [ 0, %.preheader48.lr.ph ], [ %indvars.iv.next, %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !36    ; 2 uses
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %i.af = getelementptr [8 x i8], ptr %i.ad, i64 %indvars.iv ; 2 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !37
  store double %i.ag, ptr %2, align 16, !tbaa !37
  %i.ah = getelementptr [8 x i8], ptr %i.af, i64 %i.ae
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !37
  store double %i.ai, ptr %i.y, align 16, !tbaa !37
  %i.aj = getelementptr [8 x i8], ptr %i.ad, i64 %i.w
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %indvars.iv ; 2 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !37
  store double %i.al, ptr %i.z, align 8, !tbaa !37
  %i.am = getelementptr [8 x i8], ptr %i.ak, i64 %i.ae
  %i.an = load double, ptr %i.am, align 8, !tbaa !37
  store double %i.an, ptr %i.aa, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @_ZN3igl9polar_svdIN5Eigen6MatrixIdLi2ELi2ELi0ELi2ELi2EEES3_S3_S3_NS2_IdLi2ELi1ELi0ELi2ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EERNSA_IT3_EERNSA_IT4_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(32) %6)
  %i.ao = load double, ptr %3, align 16, !tbaa !37 ; 2 uses
  %i.ap = load double, ptr %i.p, align 8, !tbaa !37
  %i.aq = load double, ptr %i.o, align 8, !tbaa !37
  %i.ar = load double, ptr %i.q, align 16, !tbaa !37
  %i.as = fneg double %i.ar
  %i.at = fmul double %i.aq, %i.as
  %i.au = call noundef double @llvm.fmuladd.f64(double %i.ao, double %i.ap, double %i.at)
  %i.av = fcmp olt double %i.au, 0.000000e+00
  br i1 %i.av, label %bb.d, label %bb.e

._crit_edge:                                      ; preds = %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void

bb.d:                                             ; preds = %.preheader48
  %i.aw = load <2 x double>, ptr %i.r, align 16, !tbaa !60
  %i.ax = fneg <2 x double> %i.aw                 ; 3 uses
  store <2 x double> %i.ax, ptr %i.r, align 16, !tbaa !60
  %i.ay = load <2 x double>, ptr %5, align 16, !tbaa !60 ; 2 uses
  %i.az = load <1 x double>, ptr %6, align 16
  %i.ba = shufflevector <1 x double> %i.az, <1 x double> poison, <2 x i32> zeroinitializer
  %i.bb = fmul <2 x double> %i.ay, %i.ba
  %i.bc = load <2 x double>, ptr %i.s, align 16, !tbaa !60 ; 2 uses
  %i.bd = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = fmul <2 x double> %i.bc, %i.bd
  %i.bf = fadd <2 x double> %i.bb, %i.be          ; 2 uses
  %i.bg = load <1 x double>, ptr %i.t, align 8
  %i.bh = shufflevector <1 x double> %i.bg, <1 x double> poison, <2 x i32> zeroinitializer
  %i.bi = fmul <2 x double> %i.ay, %i.bh
  %i.bj = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bk = fmul <2 x double> %i.bc, %i.bj
  %i.bl = fadd <2 x double> %i.bi, %i.bk
  store <2 x double> %i.bf, ptr %3, align 16, !tbaa !60
  store <2 x double> %i.bl, ptr %i.q, align 16, !tbaa !60
  %i.bm = extractelement <2 x double> %i.bf, i64 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader48
  %i.bn = phi double [ %i.bm, %bb.d ], [ %i.ao, %.preheader48 ]
  %i.bo = mul nsw i64 %indvars.iv, %i.x
  %i.bp = load ptr, ptr %1, align 8, !tbaa !36, !noalias !61
  %i.bq = load i64, ptr %i.u, align 8, !tbaa !32, !noalias !61 ; 3 uses
  %i.br = mul nsw i64 %i.bq, %i.bo
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.br ; 4 uses
  br i1 %i.v, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.e, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %.0810.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cc, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.e ] ; 4 uses
  %i.bt = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i, %i.bq
  %i.bu = getelementptr [8 x i8], ptr %i.bs, i64 %i.bt ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.bv = getelementptr [8 x i8], ptr %i.bu, i64 %index ; 2 uses
  %i.bw = icmp eq <2 x i64> %vec.ind, %broadcast.splat
  %i.bx = icmp eq <2 x i64> %step.add, %broadcast.splat
  %i.by = select <2 x i1> %i.bw, <2 x double> splat (double 1.000000e+00), <2 x double> zeroinitializer
  %i.bz = select <2 x i1> %i.bx, <2 x double> splat (double 1.000000e+00), <2 x double> zeroinitializer
  %i.ca = getelementptr i8, ptr %i.bv, i64 16
  store <2 x double> %i.by, ptr %i.bv, align 8, !tbaa !37
  store <2 x double> %i.bz, ptr %i.ca, align 8, !tbaa !37
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block
  %.09.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %scalar.ph, %middle.block
  %i.cc = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cc, %i.e
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !65

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cg, %scalar.ph ], [ %.09.i.i.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cd = getelementptr [8 x i8], ptr %i.bu, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ce = icmp eq i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i, %.0810.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cf = select i1 %i.ce, double 1.000000e+00, double 0.000000e+00
  store double %i.cf, ptr %i.cd, align 8, !tbaa !37
  %i.cg = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cg, %i.e
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, label %scalar.ph, !llvm.loop !66

.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.loopexit:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre = load double, ptr %3, align 16, !tbaa !37
  br label %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i

.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i:             ; preds = %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.loopexit, %bb.e
  %i.ch = phi double [ %.pre, %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.loopexit ], [ %i.bn, %bb.e ]
  store double %i.ch, ptr %i.bs, align 8, !tbaa !37
  %i.ci = getelementptr i8, ptr %i.bs, i64 8
  %i.cj = load double, ptr %i.q, align 16, !tbaa !37
  store double %i.cj, ptr %i.ci, align 8, !tbaa !37
  %i.ck = getelementptr [8 x i8], ptr %i.bs, i64 %i.bq ; 2 uses
  %i.cl = load double, ptr %i.o, align 8, !tbaa !37
  store double %i.cl, ptr %i.ck, align 8, !tbaa !37
  %i.cm = getelementptr i8, ptr %i.ck, i64 8
  %i.cn = load double, ptr %i.ab, align 8, !tbaa !37
  store double %i.cn, ptr %i.cm, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.w
  br i1 %exitcond.not, label %._crit_edge, label %.preheader48, !llvm.loop !67
}

declare void @_ZN3igl9polar_svdIN5Eigen6MatrixIdLi2ELi2ELi0ELi2ELi2EEES3_S3_S3_NS2_IdLi2ELi1ELi0ELi2ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EERNSA_IT3_EERNSA_IT4_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 16 dereferenceable(32), ptr noundef nonnull align 16 dereferenceable(32), ptr noundef nonnull align 16 dereferenceable(32), ptr noundef nonnull align 16 dereferenceable(16), ptr noundef nonnull align 16 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl20fit_rotations_planarIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix.150", align 16 ; 7 uses
  %3 = alloca %"class.Eigen::Matrix.150", align 16 ; 10 uses
  %4 = alloca %"class.Eigen::Matrix.150", align 16 ; 3 uses
  %5 = alloca %"class.Eigen::Matrix.150", align 16 ; 5 uses
  %6 = alloca %"class.Eigen::Matrix.150", align 16 ; 5 uses
  %7 = alloca %"class.Eigen::Matrix.160", align 4 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9
  %sext = shl i64 %i.b, 32                        ; 2 uses
  %i.e = ashr exact i64 %sext, 32                 ; 9 uses
  %i.f = sdiv i64 %i.d, %i.e                      ; 3 uses
  %i.g = trunc i64 %i.f to i32
  %sext31 = mul i64 %sext, %i.f                   ; 2 uses
  %i.h = ashr exact i64 %sext31, 32               ; 3 uses
  %i.i = icmp eq i64 %sext31, 0
  br i1 %i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = sdiv i64 9223372036854775807, %i.h
  %i.k = icmp sgt i64 %i.e, %i.j
  br i1 %i.k, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %bb.a, %bb.b
  %i.m = mul nsw i64 %i.h, %i.e
  tail call void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.m, i64 noundef %i.e, i64 noundef %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.n = icmp sgt i32 %i.g, 0
  br i1 %i.n, label %.preheader48.lr.ph, label %._crit_edge

.preheader48.lr.ph:                               ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = icmp sgt i64 %i.e, 0
  %i.v = and i64 %i.f, 2147483647                 ; 2 uses
  %sext57 = shl i64 %i.b, 32
  %i.w = ashr exact i64 %sext57, 32
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 12
  %min.iters.check = icmp ult i64 %i.e, 8
  %i.ab = and i64 %i.b, 7                         ; 2 uses
  %n.vec = sub nuw nsw i64 %i.e, %i.ab            ; 2 uses
  %cmp.n = icmp eq i64 %i.ab, 0
  br label %.preheader48

.preheader48:                                     ; preds = %.preheader48.lr.ph, %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i
  %indvars.iv = phi i64 [ 0, %.preheader48.lr.ph ], [ %indvars.iv.next, %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !9   ; 2 uses
  %i.ae = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !17
  store float %i.af, ptr %2, align 16, !tbaa !17
  %i.ag = getelementptr [4 x i8], ptr %i.ae, i64 %i.ad
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !17
  store float %i.ah, ptr %i.x, align 8, !tbaa !17
  %i.ai = getelementptr [4 x i8], ptr %i.ac, i64 %i.v
  %i.aj = getelementptr [4 x i8], ptr %i.ai, i64 %indvars.iv ; 2 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !17
  store float %i.ak, ptr %i.y, align 4, !tbaa !17
  %i.al = getelementptr [4 x i8], ptr %i.aj, i64 %i.ad
  %i.am = load float, ptr %i.al, align 4, !tbaa !17
  store float %i.am, ptr %i.z, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @_ZN3igl9polar_svdIN5Eigen6MatrixIfLi2ELi2ELi0ELi2ELi2EEES3_S3_S3_NS2_IfLi2ELi1ELi0ELi2ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EERNSA_IT3_EERNSA_IT4_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 16 dereferenceable(16) %6)
  %i.an = load float, ptr %3, align 16, !tbaa !17 ; 2 uses
  %i.ao = load float, ptr %i.p, align 4, !tbaa !17
  %i.ap = load float, ptr %i.o, align 4, !tbaa !17
  %i.aq = load float, ptr %i.q, align 8, !tbaa !17
  %i.ar = fneg float %i.aq
  %i.as = fmul float %i.ap, %i.ar
  %i.at = call noundef float @llvm.fmuladd.f32(float %i.an, float %i.ao, float %i.as)
  %i.au = fcmp olt float %i.at, 0.000000e+00
  br i1 %i.au, label %bb.d, label %bb.e

._crit_edge:                                      ; preds = %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void

bb.d:                                             ; preds = %.preheader48
  %i.av = load <2 x float>, ptr %i.r, align 8, !tbaa !17 ; 2 uses
  %i.aw = fneg <2 x float> %i.av
  store <2 x float> %i.aw, ptr %i.r, align 8, !tbaa !17
  %i.ax = shufflevector <2 x float> %i.av, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ay = load <2 x float>, ptr %5, align 16, !tbaa !17
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ba = load <2 x float>, ptr %i.s, align 8, !tbaa !17
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bc = load <2 x float>, ptr %6, align 16, !tbaa !17
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.be = fmul <4 x float> %i.az, %i.bd
  %i.bf = fmul <4 x float> %i.ax, %i.bb
  %i.bg = fsub <4 x float> %i.be, %i.bf           ; 2 uses
  store <4 x float> %i.bg, ptr %3, align 16, !tbaa !60
  %i.bh = extractelement <4 x float> %i.bg, i64 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.preheader48
  %i.bi = phi float [ %i.bh, %bb.d ], [ %i.an, %.preheader48 ]
  %i.bj = mul nsw i64 %indvars.iv, %i.w
  %i.bk = load ptr, ptr %1, align 8, !tbaa !16, !noalias !68
  %i.bl = load i64, ptr %i.t, align 8, !tbaa !9, !noalias !68 ; 3 uses
  %i.bm = mul nsw i64 %i.bl, %i.bj
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bm ; 4 uses
  br i1 %i.u, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.e, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %.0810.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bx, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.e ] ; 4 uses
  %i.bo = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i, %i.bl
  %i.bp = getelementptr [4 x i8], ptr %i.bn, i64 %i.bo ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %i.bq = getelementptr [4 x i8], ptr %i.bp, i64 %index ; 2 uses
  %i.br = icmp eq <4 x i64> %vec.ind, %broadcast.splat
  %i.bs = icmp eq <4 x i64> %step.add, %broadcast.splat
  %i.bt = select <4 x i1> %i.br, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.bu = select <4 x i1> %i.bs, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.bv = getelementptr i8, ptr %i.bq, i64 16
  store <4 x float> %i.bt, ptr %i.bq, align 4, !tbaa !17
  store <4 x float> %i.bu, ptr %i.bv, align 4, !tbaa !17
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block
  %.09.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %scalar.ph, %middle.block
  %i.bx = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bx, %i.e
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !72

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cb, %scalar.ph ], [ %.09.i.i.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.by = getelementptr [4 x i8], ptr %i.bp, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bz = icmp eq i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i, %.0810.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ca = select i1 %i.bz, float 1.000000e+00, float 0.000000e+00
  store float %i.ca, ptr %i.by, align 4, !tbaa !17
  %i.cb = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cb, %i.e
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, label %scalar.ph, !llvm.loop !73

.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.loopexit:    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre = load float, ptr %3, align 16, !tbaa !17
  br label %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i

.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i:             ; preds = %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.loopexit, %bb.e
  %i.cc = phi float [ %.pre, %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.loopexit ], [ %i.bi, %bb.e ]
  store float %i.cc, ptr %i.bn, align 4, !tbaa !17
  %i.cd = getelementptr i8, ptr %i.bn, i64 4
  %i.ce = load float, ptr %i.q, align 8, !tbaa !17
  store float %i.ce, ptr %i.cd, align 4, !tbaa !17
  %i.cf = getelementptr [4 x i8], ptr %i.bn, i64 %i.bl ; 2 uses
  %i.cg = load float, ptr %i.o, align 4, !tbaa !17
  store float %i.cg, ptr %i.cf, align 4, !tbaa !17
  %i.ch = getelementptr i8, ptr %i.cf, i64 4
  %i.ci = load float, ptr %i.aa, align 4, !tbaa !17
  store float %i.ci, ptr %i.ch, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.v
  br i1 %exitcond.not, label %._crit_edge, label %.preheader48, !llvm.loop !74
}

declare void @_ZN3igl9polar_svdIN5Eigen6MatrixIfLi2ELi2ELi0ELi2ELi2EEES3_S3_S3_NS2_IfLi2ELi1ELi0ELi2ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EERNSA_IT3_EERNSA_IT4_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 16 dereferenceable(16), ptr noundef nonnull align 16 dereferenceable(16), ptr noundef nonnull align 16 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 16 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl13fit_rotationsIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EEbRNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.198", align 4 ; 9 uses
  %4 = alloca %"class.Eigen::Matrix.198", align 4 ; 17 uses
  %5 = alloca %"class.Eigen::Matrix.198", align 4 ; 9 uses
  %6 = alloca %"class.Eigen::Matrix.198", align 4 ; 9 uses
  %7 = alloca %"class.Eigen::Matrix.198", align 4 ; 9 uses
  %8 = alloca %"class.Eigen::Matrix.208", align 4 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !31
  %.fr = freeze i64 %i.b                          ; 7 uses
  %i.c = trunc i64 %.fr to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !9
  %sext = shl i64 %.fr, 32                        ; 4 uses
  %i.f = ashr exact i64 %sext, 32                 ; 10 uses
  %i.g = sdiv i64 %i.e, %i.f                      ; 3 uses
  %i.h = trunc i64 %i.g to i32                    ; 3 uses
  %sext34 = mul i64 %sext, %i.g                   ; 2 uses
  %i.i = ashr exact i64 %sext34, 32               ; 3 uses
  %i.j = icmp eq i64 %sext34, 0
  br i1 %i.j, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sdiv i64 9223372036854775807, %i.i
  %i.l = icmp sgt i64 %i.f, %i.k
  br i1 %i.l, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %bb.a, %bb.b
  %i.n = mul nsw i64 %i.i, %i.f
  tail call void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.n, i64 noundef %i.f, i64 noundef %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.o = icmp sgt i32 %i.h, 0
  br i1 %i.o, label %.preheader47.lr.ph, label %._crit_edge52

.preheader47.lr.ph:                               ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.p = icmp sgt i32 %i.c, 0
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = icmp sgt i64 %i.f, 0                     ; 2 uses
  br i1 %i.p, label %.preheader47.us.preheader, label %.preheader47.lr.ph.split

.preheader47.us.preheader:                        ; preds = %.preheader47.lr.ph
  %i.s = and i64 %i.g, 2147483647                 ; 2 uses
  %i.t = and i64 %.fr, 2147483647                 ; 4 uses
  %i.u = lshr exact i64 %sext, 30                 ; 2 uses
  %i.v = add nsw i64 %i.u, -4
  %i.w = shl nuw nsw i64 %i.t, 2
  %i.x = lshr exact i64 %sext, 28
  %i.y = getelementptr i8, ptr %4, i64 %i.x
  %scevgep99 = getelementptr i8, ptr %i.y, i64 -12
  %i.z = add nsw i64 %i.t, -1
  %xtraiter = and i64 %.fr, 3                     ; 3 uses
  %i.aa = icmp ult i64 %i.z, 3
  %unroll_iter = and i64 %.fr, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod102 = icmp ne i64 %xtraiter, 0
  %min.iters.check = icmp ult i64 %i.f, 9
  %i.ab = and i64 %.fr, 7                         ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  %i.ad = select i1 %i.ac, i64 8, i64 %i.ab
  %n.vec = sub nsw i64 %i.f, %i.ad                ; 2 uses
  br label %.preheader47.us

.preheader47.us:                                  ; preds = %.preheader47.us.preheader, %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS0_INS1_IfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.us
  %indvars.iv85 = phi i64 [ 0, %.preheader47.us.preheader ], [ %indvars.iv.next86, %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS0_INS1_IfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.us ] ; 4 uses
  %i.ae = mul i64 %i.w, %indvars.iv85
  %i.af = add i64 %i.v, %i.ae
  %i.ag = load ptr, ptr %0, align 8, !tbaa !16
  %i.ah = load i64, ptr %i.d, align 8, !tbaa !9   ; 5 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ag, i64 %indvars.iv85
  br label %.preheader.us

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv76 = phi i64 [ %indvars.iv.next77.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.ai = mul nsw i64 %i.ah, %indvars.iv76
  %i.aj = getelementptr [4 x i8], ptr %gep, i64 %i.ai
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !17
  %.idx.i.i.i.us = mul nuw nsw i64 %indvars.iv76, 12
  %i.al = getelementptr i8, ptr %i.dr, i64 %.idx.i.i.i.us
  store float %i.ak, ptr %i.al, align 4, !tbaa !17
  %indvars.iv.next77 = or disjoint i64 %indvars.iv76, 1 ; 2 uses
  %i.am = mul nsw i64 %i.ah, %indvars.iv.next77
  %i.an = getelementptr [4 x i8], ptr %gep, i64 %i.am
  %i.ao = load float, ptr %i.an, align 4, !tbaa !17
  %.idx.i.i.i.us.1 = mul nuw nsw i64 %indvars.iv.next77, 12
  %i.ap = getelementptr i8, ptr %i.dr, i64 %.idx.i.i.i.us.1
  store float %i.ao, ptr %i.ap, align 4, !tbaa !17
  %indvars.iv.next77.1 = or disjoint i64 %indvars.iv76, 2 ; 2 uses
  %i.aq = mul nsw i64 %i.ah, %indvars.iv.next77.1
  %i.ar = getelementptr [4 x i8], ptr %gep, i64 %i.aq
  %i.as = load float, ptr %i.ar, align 4, !tbaa !17
  %.idx.i.i.i.us.2 = mul nuw nsw i64 %indvars.iv.next77.1, 12
  %i.at = getelementptr i8, ptr %i.dr, i64 %.idx.i.i.i.us.2
  store float %i.as, ptr %i.at, align 4, !tbaa !17
  %indvars.iv.next77.2 = or disjoint i64 %indvars.iv76, 3 ; 2 uses
  %i.au = mul nsw i64 %i.ah, %indvars.iv.next77.2
  %i.av = getelementptr [4 x i8], ptr %gep, i64 %i.au
  %i.aw = load float, ptr %i.av, align 4, !tbaa !17
  %.idx.i.i.i.us.3 = mul nuw nsw i64 %indvars.iv.next77.2, 12
  %i.ax = getelementptr i8, ptr %i.dr, i64 %.idx.i.i.i.us.3
  store float %i.aw, ptr %i.ax, align 4, !tbaa !17
  %indvars.iv.next77.3 = add nuw nsw i64 %indvars.iv76, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !75

bb.d:                                             ; preds = %._crit_edge50.us
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @_ZN3igl9polar_svdIN5Eigen6MatrixIfLi3ELi3ELi0ELi3ELi3EEES3_S3_S3_NS2_IfLi3ELi1ELi0ELi3ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EERNSA_IT3_EERNSA_IT4_EE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(36) %4, ptr noundef nonnull align 4 dereferenceable(36) %5, ptr noundef nonnull align 4 dereferenceable(36) %6, ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(36) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge50.us
  call void @_ZN3igl12polar_svd3x3IN5Eigen6MatrixIfLi3ELi3ELi0ELi3ELi3EEEEEvRKT_RS4_(ptr noundef nonnull align 4 dereferenceable(36) %3, ptr noundef nonnull align 4 dereferenceable(36) %4)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ay = mul i64 %indvars.iv85, %i.t
  %i.az = load ptr, ptr %2, align 8, !tbaa !16, !noalias !76 ; 2 uses
  %i.ba = load i64, ptr %i.q, align 8, !tbaa !9, !noalias !76 ; 4 uses
  %i.bb = mul i64 %i.ba, %i.ay
  %i.bc = getelementptr [4 x i8], ptr %i.az, i64 %i.bb ; 2 uses
  br i1 %i.r, label %.preheader.i.i.i.i.i.i.i.i.i.i.us.preheader, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS0_INS1_IfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.us

.preheader.i.i.i.i.i.i.i.i.i.i.us.preheader:      ; preds = %bb.f
  %scevgep = getelementptr i8, ptr %i.az, i64 %i.u
  %i.bd = mul i64 %i.ba, %i.af
  %scevgep98 = getelementptr i8, ptr %scevgep, i64 %i.bd
  %bound0 = icmp ult ptr %i.bc, %scevgep99
  %bound1 = icmp ult ptr %4, %scevgep98
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %i.ba, 2305843009213693952
  %stride.check = icmp ne i64 %.mask, 0
  %i.be = or i1 %found.conflict, %stride.check
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.us

.preheader.i.i.i.i.i.i.i.i.i.i.us:                ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.us.preheader, %._crit_edge.i.i.i.i.i.i.i.i.i.i.us
  %.0810.i.i.i.i.i.i.i.i.i.i.us = phi i64 [ %i.dp, %._crit_edge.i.i.i.i.i.i.i.i.i.i.us ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.us.preheader ] ; 3 uses
  %i.bf = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.us, %i.ba
  %i.bg = getelementptr [4 x i8], ptr %i.bc, i64 %i.bf ; 6 uses
  %invariant.gep.i.i.i.i.i.i.i.i.i.i.us = getelementptr [4 x i8], ptr %4, i64 %.0810.i.i.i.i.i.i.i.i.i.i.us ; 13 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.be
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.us ] ; 10 uses
  %i.bh = getelementptr [4 x i8], ptr %i.bg, i64 %index ; 2 uses
  %i.bi = mul nuw nsw i64 %index, 12
  %i.bj = mul nuw i64 %index, 12
  %i.bk = mul nuw i64 %index, 12
  %i.bl = mul nuw i64 %index, 12
  %i.bm = mul nuw i64 %index, 12
  %i.bn = mul nuw i64 %index, 12
  %i.bo = mul nuw i64 %index, 12
  %i.bp = mul nuw i64 %index, 12
  %i.bq = getelementptr i8, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.us, i64 %i.bi
  %i.br = getelementptr i8, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.us, i64 %i.bj
  %i.bs = getelementptr i8, ptr %i.br, i64 12
  %i.bt = getelementptr i8, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.us, i64 %i.bk
  %i.bu = getelementptr i8, ptr %i.bt, i64 24
  %i.bv = getelementptr i8, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.us, i64 %i.bl
  %i.bw = getelementptr i8, ptr %i.bv, i64 36
  %i.bx = getelementptr i8, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.us, i64 %i.bm
  %i.by = getelementptr i8, ptr %i.bx, i64 48
  %i.bz = getelementptr i8, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.us, i64 %i.bn
  %i.ca = getelementptr i8, ptr %i.bz, i64 60
  %i.cb = getelementptr i8, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.us, i64 %i.bo
  %i.cc = getelementptr i8, ptr %i.cb, i64 72
  %i.cd = getelementptr i8, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.us, i64 %i.bp
  %i.ce = getelementptr i8, ptr %i.cd, i64 84
  %i.cf = load float, ptr %i.bq, align 4, !tbaa !17, !alias.scope !79
  %i.cg = load float, ptr %i.bs, align 4, !tbaa !17, !alias.scope !79
  %i.ch = load float, ptr %i.bu, align 4, !tbaa !17, !alias.scope !79
  %i.ci = load float, ptr %i.bw, align 4, !tbaa !17, !alias.scope !79
  %i.cj = insertelement <4 x float> poison, float %i.cf, i64 0
  %i.ck = insertelement <4 x float> %i.cj, float %i.cg, i64 1
  %i.cl = insertelement <4 x float> %i.ck, float %i.ch, i64 2
  %i.cm = insertelement <4 x float> %i.cl, float %i.ci, i64 3
  %i.cn = load float, ptr %i.by, align 4, !tbaa !17, !alias.scope !79
  %i.co = load float, ptr %i.ca, align 4, !tbaa !17, !alias.scope !79
  %i.cp = load float, ptr %i.cc, align 4, !tbaa !17, !alias.scope !79
  %i.cq = load float, ptr %i.ce, align 4, !tbaa !17, !alias.scope !79
  %i.cr = insertelement <4 x float> poison, float %i.cn, i64 0
  %i.cs = insertelement <4 x float> %i.cr, float %i.co, i64 1
  %i.ct = insertelement <4 x float> %i.cs, float %i.cp, i64 2
  %i.cu = insertelement <4 x float> %i.ct, float %i.cq, i64 3
  %i.cv = getelementptr i8, ptr %i.bh, i64 16
  store <4 x float> %i.cm, ptr %i.bh, align 4, !tbaa !17, !alias.scope !82, !noalias !79
  store <4 x float> %i.cu, ptr %i.cv, align 4, !tbaa !17, !alias.scope !82, !noalias !79
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %scalar.ph.preheader, label %vector.body, !llvm.loop !84

scalar.ph.preheader:                              ; preds = %vector.body, %.preheader.i.i.i.i.i.i.i.i.i.i.us
  %.09.i.i.i.i.i.i.i.i.i.i.us.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.us ], [ %n.vec, %vector.body ] ; 4 uses
  %i.cx = sub i64 %.fr, %.09.i.i.i.i.i.i.i.i.i.i.us.ph
  %xtraiter103 = and i64 %i.cx, 3                 ; 2 uses
  %lcmp.mod104.not = icmp eq i64 %xtraiter103, 0
  br i1 %lcmp.mod104.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.09.i.i.i.i.i.i.i.i.i.i.us.prol = phi i64 [ %i.da, %scalar.ph.prol ], [ %.09.i.i.i.i.i.i.i.i.i.i.us.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cy = getelementptr [4 x i8], ptr %i.bg, i64 %.09.i.i.i.i.i.i.i.i.i.i.us.prol
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.prol = mul nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.us.prol, 12
  %gep.i.i.i.i.i.i.i.i.i.i.us.prol = getelementptr i8, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.us, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.prol
  %i.cz = load float, ptr %gep.i.i.i.i.i.i.i.i.i.i.us.prol, align 4, !tbaa !17
  store float %i.cz, ptr %i.cy, align 4, !tbaa !17
  %i.da = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.us.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter103
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !85

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.i.i.i.i.i.i.i.i.i.us.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i.us.ph, %scalar.ph.preheader ], [ %i.da, %scalar.ph.prol ]
  %i.db = sub nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.us.ph, %i.f
  %i.dc = icmp ugt i64 %i.db, -4
  br i1 %i.dc, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i.i.i.i.i.i.i.i.i.i.us = phi i64 [ %i.do, %scalar.ph ], [ %.09.i.i.i.i.i.i.i.i.i.i.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dd = getelementptr [4 x i8], ptr %i.bg, i64 %.09.i.i.i.i.i.i.i.i.i.i.us
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us = mul nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.us, 12
  %gep.i.i.i.i.i.i.i.i.i.i.us = getelementptr i8, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.us, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us
  %i.de = load float, ptr %gep.i.i.i.i.i.i.i.i.i.i.us, align 4, !tbaa !17
  store float %i.de, ptr %i.dd, align 4, !tbaa !17
  %i.df = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.us, 1 ; 2 uses
  %i.dg = getelementptr [4 x i8], ptr %i.bg, i64 %i.df
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.1 = mul nuw nsw i64 %i.df, 12
  %gep.i.i.i.i.i.i.i.i.i.i.us.1 = getelementptr i8, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.us, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.1
  %i.dh = load float, ptr %gep.i.i.i.i.i.i.i.i.i.i.us.1, align 4, !tbaa !17
  store float %i.dh, ptr %i.dg, align 4, !tbaa !17
  %i.di = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.us, 2 ; 2 uses
  %i.dj = getelementptr [4 x i8], ptr %i.bg, i64 %i.di
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.2 = mul nuw nsw i64 %i.di, 12
  %gep.i.i.i.i.i.i.i.i.i.i.us.2 = getelementptr i8, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.us, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.2
  %i.dk = load float, ptr %gep.i.i.i.i.i.i.i.i.i.i.us.2, align 4, !tbaa !17
  store float %i.dk, ptr %i.dj, align 4, !tbaa !17
  %i.dl = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.us, 3 ; 2 uses
  %i.dm = getelementptr [4 x i8], ptr %i.bg, i64 %i.dl
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.3 = mul nuw nsw i64 %i.dl, 12
  %gep.i.i.i.i.i.i.i.i.i.i.us.3 = getelementptr i8, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.us, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.3
  %i.dn = load float, ptr %gep.i.i.i.i.i.i.i.i.i.i.us.3, align 4, !tbaa !17
  store float %i.dn, ptr %i.dm, align 4, !tbaa !17
  %i.do = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.us, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.3 = icmp eq i64 %i.do, %i.f
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.3, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.us, label %scalar.ph, !llvm.loop !86

._crit_edge.i.i.i.i.i.i.i.i.i.i.us:               ; preds = %scalar.ph, %scalar.ph.prol.loopexit
  %i.dp = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.us, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i.i.i.us = icmp eq i64 %i.dp, %i.f
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i.i.i.us, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS0_INS1_IfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.us, label %.preheader.i.i.i.i.i.i.i.i.i.i.us, !llvm.loop !87

_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS0_INS1_IfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.us: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.us, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next86, %i.s
  br i1 %exitcond89.not, label %._crit_edge52, label %.preheader47.us, !llvm.loop !88

.preheader.us:                                    ; preds = %.preheader47.us, %._crit_edge.us
  %indvars.iv80 = phi i64 [ 0, %.preheader47.us ], [ %indvars.iv.next81, %._crit_edge.us ] ; 3 uses
  %i.dq = mul nuw nsw i64 %indvars.iv80, %i.s
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dq ; 5 uses
  %i.dr = getelementptr [4 x i8], ptr %3, i64 %indvars.iv80 ; 5 uses
  br i1 %i.aa, label %.epil.preheader, label %.preheader.us.new

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv76.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next77.3, %._crit_edge.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod102)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv76.epil = phi i64 [ %indvars.iv76.epil.init, %.epil.preheader ], [ %indvars.iv.next77.epil, %bb.g ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.ds = mul nsw i64 %i.ah, %indvars.iv76.epil
  %i.dt = getelementptr [4 x i8], ptr %gep, i64 %i.ds
  %i.du = load float, ptr %i.dt, align 4, !tbaa !17
  %.idx.i.i.i.us.epil = mul nuw nsw i64 %indvars.iv76.epil, 12
  %i.dv = getelementptr i8, ptr %i.dr, i64 %.idx.i.i.i.us.epil
  store float %i.du, ptr %i.dv, align 4, !tbaa !17
  %indvars.iv.next77.epil = add nuw nsw i64 %indvars.iv76.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.g, !llvm.loop !89

._crit_edge.us:                                   ; preds = %bb.g, %._crit_edge.us.unr-lcssa
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %i.t
  br i1 %exitcond84.not, label %._crit_edge50.us, label %.preheader.us, !llvm.loop !90

._crit_edge50.us:                                 ; preds = %._crit_edge.us
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  br i1 %1, label %bb.e, label %bb.d

.preheader47.lr.ph.split:                         ; preds = %.preheader47.lr.ph
  br i1 %i.r, label %.preheader47.us53, label %.preheader47.lr.ph.split.split

.preheader47.us53:                                ; preds = %.preheader47.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  br i1 %1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader47.us53
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @_ZN3igl9polar_svdIN5Eigen6MatrixIfLi3ELi3ELi0ELi3ELi3EEES3_S3_S3_NS2_IfLi3ELi1ELi0ELi3ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EERNSA_IT3_EERNSA_IT4_EE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(36) %4, ptr noundef nonnull align 4 dereferenceable(36) %5, ptr noundef nonnull align 4 dereferenceable(36) %6, ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(36) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.us55

bb.i:                                             ; preds = %.preheader47.us53
  call void @_ZN3igl12polar_svd3x3IN5Eigen6MatrixIfLi3ELi3ELi0ELi3ELi3EEEEEvRKT_RS4_(ptr noundef nonnull align 4 dereferenceable(36) %3, ptr noundef nonnull align 4 dereferenceable(36) %4)
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.us55

.preheader.i.i.i.i.i.i.i.i.i.i.us55:              ; preds = %bb.h, %bb.i
  %i.dw = load ptr, ptr %2, align 8, !tbaa !16, !noalias !76
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.preheader.i.i.i.i.i.i.i.i.i.i.us55
  %.09.i.i.i.i.i.i.i.i.i.i.us58 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.us55 ], [ %i.dz, %bb.j ] ; 3 uses
  %i.dx = getelementptr [4 x i8], ptr %i.dw, i64 %.09.i.i.i.i.i.i.i.i.i.i.us58
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us59 = mul nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.us58, 12
  %gep.i.i.i.i.i.i.i.i.i.i.us60 = getelementptr i8, ptr %4, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us59
  %i.dy = load float, ptr %gep.i.i.i.i.i.i.i.i.i.i.us60, align 4, !tbaa !17
  store float %i.dy, ptr %i.dx, align 4, !tbaa !17
  %i.dz = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.us58, 1
  br label %bb.j

.preheader47.lr.ph.split.split:                   ; preds = %.preheader47.lr.ph.split
  br i1 %1, label %.preheader47.us67, label %.preheader47

.preheader47.us67:                                ; preds = %.preheader47.lr.ph.split.split, %.preheader47.us67
  %.03151.us68 = phi i32 [ %i.ea, %.preheader47.us67 ], [ 0, %.preheader47.lr.ph.split.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @_ZN3igl12polar_svd3x3IN5Eigen6MatrixIfLi3ELi3ELi0ELi3ELi3EEEEEvRKT_RS4_(ptr noundef nonnull align 4 dereferenceable(36) %3, ptr noundef nonnull align 4 dereferenceable(36) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.ea = add nuw nsw i32 %.03151.us68, 1         ; 2 uses
  %exitcond74.not = icmp eq i32 %i.ea, %i.h
  br i1 %exitcond74.not, label %._crit_edge52, label %.preheader47.us67, !llvm.loop !88

.preheader47:                                     ; preds = %.preheader47.lr.ph.split.split, %.preheader47
  %.03151 = phi i32 [ %i.eb, %.preheader47 ], [ 0, %.preheader47.lr.ph.split.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @_ZN3igl9polar_svdIN5Eigen6MatrixIfLi3ELi3ELi0ELi3ELi3EEES3_S3_S3_NS2_IfLi3ELi1ELi0ELi3ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EERNSA_IT3_EERNSA_IT4_EE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(36) %4, ptr noundef nonnull align 4 dereferenceable(36) %5, ptr noundef nonnull align 4 dereferenceable(36) %6, ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(36) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.eb = add nuw nsw i32 %.03151, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.eb, %i.h
  br i1 %exitcond.not, label %._crit_edge52, label %.preheader47, !llvm.loop !88

._crit_edge52:                                    ; preds = %.preheader47, %.preheader47.us67, %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS0_INS1_IfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.us, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void
}

declare void @_ZN3igl12polar_svd3x3IN5Eigen6MatrixIfLi3ELi3ELi0ELi3ELi3EEEEEvRKT_RS4_(ptr noundef nonnull align 4 dereferenceable(36), ptr noundef nonnull align 4 dereferenceable(36)) local_unnamed_addr #2

declare void @_ZN3igl9polar_svdIN5Eigen6MatrixIfLi3ELi3ELi0ELi3ELi3EEES3_S3_S3_NS2_IfLi3ELi1ELi0ELi3ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EERNSA_IT3_EERNSA_IT4_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 4 dereferenceable(36), ptr noundef nonnull align 4 dereferenceable(36), ptr noundef nonnull align 4 dereferenceable(36), ptr noundef nonnull align 4 dereferenceable(12), ptr noundef nonnull align 4 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl20fit_rotations_planarIN5Eigen6MatrixIdLi2ELi2ELi0ELi2ELi2EEENS2_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit:
  %2 = alloca %"class.Eigen::Matrix.106", align 16 ; 5 uses
  %3 = alloca %"class.Eigen::Matrix.106", align 16 ; 10 uses
  %4 = alloca %"class.Eigen::Matrix.106", align 16 ; 3 uses
  %5 = alloca %"class.Eigen::Matrix.106", align 16 ; 5 uses
  %6 = alloca %"class.Eigen::Matrix.106", align 16 ; 6 uses
  %7 = alloca %"class.Eigen::Matrix.116", align 16 ; 3 uses
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 4, i64 noundef 2, i64 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa !37
  %scevgep = getelementptr inbounds nuw i8, ptr %2, i64 16
  %scevgep52 = getelementptr i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %scevgep, ptr noundef nonnull align 8 dereferenceable(16) %scevgep52, i64 16, i1 false), !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @_ZN3igl9polar_svdIN5Eigen6MatrixIdLi2ELi2ELi0ELi2ELi2EEES3_S3_S3_NS2_IdLi2ELi1ELi0ELi2ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EERNSA_IT3_EERNSA_IT4_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(32) %6)
  %i.d = load double, ptr %3, align 16, !tbaa !37
  %i.e = load double, ptr %i.b, align 8, !tbaa !37
  %i.f = load double, ptr %i.a, align 8, !tbaa !37
  %i.g = load double, ptr %i.c, align 16, !tbaa !37
  %i.h = fneg double %i.g
  %i.i = fmul double %i.f, %i.h
  %i.j = call noundef double @llvm.fmuladd.f64(double %i.d, double %i.e, double %i.i)
  %i.k = fcmp olt double %i.j, 0.000000e+00
  br i1 %i.k, label %bb.a, label %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

bb.a:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = load <2 x double>, ptr %i.n, align 16, !tbaa !60
  %i.p = fneg <2 x double> %i.o                   ; 3 uses
  store <2 x double> %i.p, ptr %i.n, align 16, !tbaa !60
  %i.q = load <2 x double>, ptr %5, align 16, !tbaa !60 ; 2 uses
  %i.r = load <1 x double>, ptr %6, align 16
  %i.s = shufflevector <1 x double> %i.r, <1 x double> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x double> %i.q, %i.s
  %i.u = load <2 x double>, ptr %i.m, align 16, !tbaa !60 ; 2 uses
  %i.v = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x double> %i.u, %i.v
  %i.x = fadd <2 x double> %i.t, %i.w
  %i.y = load <1 x double>, ptr %i.l, align 8
  %i.z = shufflevector <1 x double> %i.y, <1 x double> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x double> %i.q, %i.z
  %i.ab = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ac = fmul <2 x double> %i.u, %i.ab
  %i.ad = fadd <2 x double> %i.aa, %i.ac
  store <2 x double> %i.x, ptr %3, align 16, !tbaa !60
  store <2 x double> %i.ad, ptr %i.c, align 16, !tbaa !60
  br label %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %1, align 8, !tbaa !36, !noalias !91 ; 4 uses
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !32, !noalias !91
  %i.ah = getelementptr i8, ptr %i.af, i64 8
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.af, align 8, !tbaa !37
  %i.ai = getelementptr [8 x i8], ptr %i.af, i64 %i.ag ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.ai, align 8, !tbaa !37
  %i.ak = load double, ptr %3, align 16, !tbaa !37
  store double %i.ak, ptr %i.af, align 8, !tbaa !37
  %i.al = load double, ptr %i.c, align 16, !tbaa !37
  store double %i.al, ptr %i.ah, align 8, !tbaa !37
  %i.am = load double, ptr %i.a, align 8, !tbaa !37
  store double %i.am, ptr %i.ai, align 8, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ao = load double, ptr %i.an, align 8, !tbaa !37
  store double %i.ao, ptr %i.aj, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !31
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.f) #12
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #14 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !14
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !9
  store i64 %3, ptr %i.c, align 8, !tbaa !31
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEC2INS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS1_IdLin1ELin1ELi0ELin1ELin1EEEEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !94, !nonnull !97, !align !98 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !32   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !35   ; 4 uses
  %i.f = icmp eq i64 %i.c, 0
  %i.g = icmp eq i64 %i.e, 0
  %or.cond.i.i = or i1 %i.f, %i.g
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sdiv i64 9223372036854775807, %i.e
  %i.i = icmp sgt i64 %i.c, %i.h
  br i1 %i.i, label %.noexc.i.i.i.i.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.b, %bb.a
  %i.j = mul nsw i64 %i.e, %i.c
  invoke void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.j, i64 noundef %i.c, i64 noundef %i.e)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS1_IdLin1ELin1ELi0ELin1ELin1EEEEEEEvRKNS_9EigenBaseIT_EE.exit unwind label %bb.f

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS1_IdLin1ELin1ELi0ELin1ELin1EEEEEEEvRKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %i.k = load ptr, ptr %1, align 8, !tbaa !94, !nonnull !97, !align !98 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !32   ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !35   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !9
  %.not.i.i.i.i.i = icmp eq i64 %i.r, %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %.not8.i.i.i.i.i = icmp eq i64 %i.t, %i.p
end_hunk_0
