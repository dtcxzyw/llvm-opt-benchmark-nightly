Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/readPLY?download=true
inline.NumInlined: 12185
inline.NumDeleted: 3089
loop-unroll.NumCompletelyUnrolled: 257
loop-unroll.NumRuntimeUnrolled: 145
loop-unroll.NumUnrolled: 402
begin_hunk_0_@_ZN3igl25_tinyply_buffer_to_matrixIjN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl25_tinyply_buffer_to_matrixIfN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #22 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129  ; 8 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = icmp eq i64 %2, 0
  %i.e = icmp eq i64 %3, 0
  %or.cond.i.i.i.i = or i1 %i.d, %i.e
  br i1 %or.cond.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_3MapINS1_IfLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sdiv i64 9223372036854775807, %3
  %i.g = icmp sgt i64 %2, %i.f
  br i1 %i.g, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_3MapINS1_IfLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !53
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_3MapINS1_IfLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i: ; preds = %bb.b, %bb.a
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !170
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.j, %2
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %3, 3
  %or.cond.i.i.i.i.i.i.i.i = and i1 %.not8.i.i.i.i.i.i.i.i, %.not.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.d, label %thread-pre-split.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_3MapINS1_IfLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !170
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_3MapINS1_IfLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i
  %i.k = phi i64 [ %.pr.i.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i.i ], [ %2, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_3MapINS1_IfLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEvRKNS_9EigenBaseIT_EE.exit.i ] ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !171    ; 8 uses
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = mul i64 %i.k, 3                          ; 6 uses
  %i.o = sdiv i64 %i.n, 4
  %i.p = shl nsw i64 %i.o, 2                      ; 6 uses
  %i.q = icmp sgt i64 %i.k, 1
  br i1 %i.q, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.d
  %i.r = icmp slt i64 %i.p, %i.n
  br i1 %i.r, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEEaSINS_3MapINS1_IfLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEERS2_RKNS_9EigenBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.s = sub i64 %i.n, %i.p                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.s, 8
  %i.t = sub i64 %i.c, %i.m
  %diff.check = icmp ugt i64 %i.t, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.s, -8                       ; 3 uses
  %i.u = add i64 %i.p, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = add i64 %i.p, %index                     ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.v ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <4 x float>, ptr %i.x, align 4, !tbaa !147
  %wide.load10 = load <4 x float>, ptr %i.y, align 4, !tbaa !147
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x float> %wide.load, ptr %i.w, align 4, !tbaa !147
  store <4 x float> %wide.load10, ptr %i.z, align 4, !tbaa !147
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !422

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEEaSINS_3MapINS1_IfLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEERS2_RKNS_9EigenBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.i.i.i.i.preheader11:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.u, %middle.block ] ; 4 uses
  %i.ab = sub i64 %i.n, %.05.i.i.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.ab, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader11 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader11 ]
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !147
  store float %i.ae, ptr %i.ac, align 4, !tbaa !147
  %i.af = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !423

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader11
  %.05.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader11 ], [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.ag = sub i64 %.05.i.i.i.i.i.i.i.i.i.ph, %i.n
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEEaSINS_3MapINS1_IfLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEERS2_RKNS_9EigenBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !147
  store float %i.ak, ptr %i.ai, align 4, !tbaa !147
  %i.al = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.al
  %i.an = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.al
  %i.ao = load float, ptr %i.an, align 4, !tbaa !147
  store float %i.ao, ptr %i.am, align 4, !tbaa !147
  %i.ap = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 2   ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.ap
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ap
  %i.as = load float, ptr %i.ar, align 4, !tbaa !147
  store float %i.as, ptr %i.aq, align 4, !tbaa !147
  %i.at = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 3   ; 2 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.at
  %i.av = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.at
  %i.aw = load float, ptr %i.av, align 4, !tbaa !147
  store float %i.aw, ptr %i.au, align 4, !tbaa !147
  %i.ax = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ax, %i.n
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEEaSINS_3MapINS1_IfLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEERS2_RKNS_9EigenBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !424

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.d ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.011.i.i.i.i.i.i.i.i
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.011.i.i.i.i.i.i.i.i
  %i.ba = load <4 x float>, ptr %i.az, align 1, !tbaa !41
  store <4 x float> %i.ba, ptr %i.ay, align 16, !tbaa !41
  %i.bb = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.bc = icmp slt i64 %i.bb, %i.p
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !425

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEEaSINS_3MapINS1_IfLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEERS2_RKNS_9EigenBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl25_tinyply_buffer_to_matrixIdN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEEEEbRNS_7tinyply7PlyDataERNS1_15PlainObjectBaseIT0_EEmm(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129  ; 2 uses
  %i.c = icmp eq i64 %2, 0
  %i.d = icmp eq i64 %3, 0
  %or.cond.i.i.i.i = or i1 %i.c, %i.d
  br i1 %or.cond.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_3MapINS1_IdLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sdiv i64 9223372036854775807, %3
  %i.f = icmp sgt i64 %2, %i.e
  br i1 %i.f, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_3MapINS1_IdLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.g, align 8, !tbaa !53
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_3MapINS1_IdLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i: ; preds = %bb.b, %bb.a
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !170
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.i, %2
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %3, 3
  %or.cond.i.i.i.i.i.i.i.i = and i1 %.not8.i.i.i.i.i.i.i.i, %.not.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.d, label %thread-pre-split.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_3MapINS1_IdLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3)
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !170
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_3MapINS1_IdLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i
  %i.j = phi i64 [ %.pr.i.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i.i ], [ %2, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_3MapINS1_IdLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEEvRKNS_9EigenBaseIT_EE.exit.i ] ; 2 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !171    ; 2 uses
  %i.l = icmp sgt i64 %i.j, 0
  br i1 %i.l, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_3MapINS1_IdLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEERS2_RKNS_9EigenBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d
  %i.m = mul i64 %i.j, 3                          ; 2 uses
  %smax.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 1) ; 3 uses
  %min.iters.check = icmp slt i64 %i.m, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %n.vec = and i64 %smax.i.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <2 x double>, ptr %i.o, align 8, !tbaa !140
  %wide.load12 = load <2 x double>, ptr %i.p, align 8, !tbaa !140
  %4 = fptrunc <2 x double> %wide.load to <2 x float>
  %5 = fptrunc <2 x double> %wide.load12 to <2 x float>
  %6 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store <2 x float> %4, ptr %i.n, align 4, !tbaa !147
  store <2 x float> %5, ptr %6, align 4, !tbaa !147
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !426

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %smax.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_3MapINS1_IdLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEERS2_RKNS_9EigenBaseIT_EE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.v, %scalar.ph ], [ %.05.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.05.i.i.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.05.i.i.i.i.i.i.i.i
  %i.t = load double, ptr %i.s, align 8, !tbaa !140
  %i.u = fptrunc double %i.t to float
  store float %i.u, ptr %i.r, align 4, !tbaa !147
  %i.v = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.v, %smax.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_3MapINS1_IdLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEERS2_RKNS_9EigenBaseIT_EE.exit, label %scalar.ph, !llvm.loop !427

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEEaSINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS_3MapINS1_IdLin1ELin1ELi1ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEEEERS2_RKNS_9EigenBaseIT_EE.exit: ; preds = %scalar.ph, %middle.block, %bb.d
  ret i1 true
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !53
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !170
  %i.i = mul nsw i64 %i.h, 3
  %.not.i = icmp eq i64 %i.f, %i.i
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIfLin1ELin1ELi3ELi1EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !171
  tail call void @free(ptr noundef %i.j) #32
  %i.k = icmp sgt i64 %i.f, 0
  br i1 %i.k, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i64 %i.f, 4611686018427387903
  br i1 %i.l, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !53
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i: ; preds = %bb.e
  %i.n = shl nuw i64 %i.f, 2
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #36 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !53
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.o, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !171
  br label %_ZN5Eigen12DenseStorageIfLin1ELin1ELi3ELi1EE6resizeElll.exit

_ZN5Eigen12DenseStorageIfLin1ELin1ELi3ELi1EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !170
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl7readPLYIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEES6_S6_S6_S6_EEbRSiRNS1_15PlainObjectBaseIT_EERNS8_IT0_EERNS8_IT1_EERNS8_IT2_EERNS8_IT3_EERNS8_IT4_EERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISX_EERNS8_IT5_EES10_RNS8_IT6_EES10_S10_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %13 = alloca %"class.std::tuple.471", align 8   ; 4 uses
  %14 = alloca %"class.std::tuple.474", align 1   ; 3 uses
  %15 = alloca %"class.std::tuple.471", align 8   ; 4 uses
  %16 = alloca %"class.std::tuple.474", align 1   ; 3 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %17 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 5 uses
  %18 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 5 uses
  %19 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 15 uses
  %20 = alloca %"struct.igl::tinyply::PlyFile", align 8 ; 23 uses
  %21 = alloca %"class.std::set", align 8         ; 24 uses
  %22 = alloca [12 x %"class.std::__cxx11::basic_string"], align 8 ; 100 uses
  %23 = alloca %"class.std::set", align 8         ; 14 uses
  %24 = alloca [2 x %"class.std::__cxx11::basic_string"], align 8 ; 20 uses
  %25 = alloca %"class.std::set", align 8         ; 14 uses
  %26 = alloca [2 x %"class.std::__cxx11::basic_string"], align 8 ; 20 uses
  %27 = alloca %"class.std::shared_ptr", align 16 ; 8 uses
  %28 = alloca %"class.std::shared_ptr", align 16 ; 9 uses
  %29 = alloca %"class.std::shared_ptr", align 16 ; 13 uses
  %30 = alloca %"class.std::shared_ptr", align 16 ; 15 uses
  %31 = alloca %"class.std::shared_ptr", align 16 ; 9 uses
  %32 = alloca %"class.std::shared_ptr", align 16 ; 12 uses
  %33 = alloca %"class.std::shared_ptr", align 16 ; 9 uses
  %34 = alloca %"class.std::vector", align 8      ; 17 uses
  %35 = alloca %"class.std::shared_ptr", align 16 ; 9 uses
  %36 = alloca %"class.std::vector", align 8      ; 17 uses
  %37 = alloca %"class.std::shared_ptr", align 16 ; 9 uses
  %38 = alloca %"class.std::vector", align 8      ; 17 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %40 = alloca %"class.std::vector.112", align 8  ; 8 uses
  %41 = alloca %"struct.igl::tinyply::PlyElement", align 8 ; 13 uses
  %42 = alloca %"struct.igl::tinyply::PlyProperty", align 8 ; 15 uses
  %43 = alloca %"struct.igl::tinyply::PlyProperty", align 8 ; 15 uses
  %44 = alloca %"struct.igl::tinyply::PlyProperty", align 8 ; 15 uses
  %45 = alloca %"class.std::shared_ptr", align 16 ; 6 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %47 = alloca %"class.std::vector", align 8      ; 10 uses
  %48 = alloca [3 x %"class.std::__cxx11::basic_string"], align 8 ; 29 uses
  %49 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %51 = alloca %"class.std::vector", align 8      ; 10 uses
  %52 = alloca [3 x %"class.std::__cxx11::basic_string"], align 8 ; 29 uses
  %53 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %55 = alloca %"class.std::vector", align 8      ; 10 uses
  %56 = alloca [2 x %"class.std::__cxx11::basic_string"], align 8 ; 21 uses
  %57 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %59 = alloca %"class.std::vector", align 8      ; 10 uses
  %60 = alloca [2 x %"class.std::__cxx11::basic_string"], align 8 ; 21 uses
  %61 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %63 = alloca %"class.std::vector", align 8      ; 10 uses
  %64 = alloca [2 x %"class.std::__cxx11::basic_string"], align 8 ; 21 uses
  %65 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %66 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %67 = alloca %"class.std::vector", align 8      ; 10 uses
  %68 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 13 uses
  %69 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %70 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %71 = alloca %"class.std::vector", align 8      ; 10 uses
  %72 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 13 uses
  %73 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %75 = alloca %"class.std::vector", align 8      ; 10 uses
  %76 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 13 uses
  %77 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %78 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %79 = alloca %"class.std::vector", align 8      ; 10 uses
  %80 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 13 uses
  %81 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %82 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %83 = alloca %"class.std::vector", align 8      ; 10 uses
  %84 = alloca [2 x %"class.std::__cxx11::basic_string"], align 8 ; 21 uses
  %85 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %86 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %87 = alloca %"class.std::vector", align 8      ; 9 uses
  %88 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %89 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %90 = alloca %"class.std::vector", align 8      ; 9 uses
  %91 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %92 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %93 = alloca %"class.std::vector", align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #32
  call void @_ZN3igl7tinyply7PlyFileC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20)
  %i.i = invoke noundef zeroext i1 @_ZN3igl7tinyply7PlyFile12parse_headerERSi(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %._crit_edge.i.i unwind label %bb.c ; 0 uses

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #32
  %i.j = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  store ptr %i.j, ptr %22, align 8, !tbaa !81
  store i8 120, ptr %i.j, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 1, ptr %i.k, align 8, !tbaa !67
  %i.l = getelementptr inbounds nuw i8, ptr %22, i64 17
  store i8 0, ptr %i.l, align 1, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 2 uses
end_hunk_0
