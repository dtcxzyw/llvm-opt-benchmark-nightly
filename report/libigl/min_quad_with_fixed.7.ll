inline.NumInlined: 12514
inline.NumDeleted: 4719
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 222
begin_hunk_0_@_ZN5Eigen8SparseQRINS_12SparseMatrixIdLi0EiEENS_14COLAMDOrderingIiEEE14analyzePatternERKS2_:bb.a
  br i1 %i.jf, label %middle.block182, label %vector.body175, !llvm.loop !300

middle.block182:                                  ; preds = %vector.body175
  %bin.rdx183 = add <4 x i32> %i.je, %i.jd
  %i.jg = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx183) ; 2 uses
  %cmp.n184 = icmp eq i64 %.0.i.i.i.i.i.i.i.i12, %n.vec174
  br i1 %cmp.n184, label %.preheader.i.i.i.i18, label %.lr.ph85.i.i.i.i26.preheader231

.lr.ph85.i.i.i.i26.preheader231:                  ; preds = %.lr.ph85.i.i.i.i26.preheader, %middle.block182
  %.05683.i.i.i.i27.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i26.preheader ], [ %n.vec174, %middle.block182 ]
  %.07582.i.i.i.i28.ph = phi i32 [ %i.iy, %.lr.ph85.i.i.i.i26.preheader ], [ %i.jg, %middle.block182 ]
  br label %.lr.ph85.i.i.i.i26

.preheader.i.i.i.i18:                             ; preds = %.lr.ph85.i.i.i.i26, %middle.block182, %bb.aa
  %.075.lcssa.i.i.i.i19 = phi i32 [ %i.iy, %bb.aa ], [ %i.jg, %middle.block182 ], [ %i.jw, %.lr.ph85.i.i.i.i26 ] ; 3 uses
  %i.jh = icmp slt i64 %i.hw, %i.hi
  br i1 %i.jh, label %.lr.ph89.i.i.i.i23.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i20

.lr.ph89.i.i.i.i23.preheader:                     ; preds = %.preheader.i.i.i.i18
  %i.ji = shl nsw i64 %i.ht, 2
  %i.jj = add i64 %.0.i.i.i.i.i.i.i.i12, %i.ji
  %i.jk = sub i64 %i.hi, %i.jj                    ; 3 uses
  %min.iters.check188 = icmp ult i64 %i.jk, 8
  br i1 %min.iters.check188, label %.lr.ph89.i.i.i.i23.preheader226, label %vector.ph189

vector.ph189:                                     ; preds = %.lr.ph89.i.i.i.i23.preheader
  %n.vec190 = and i64 %i.jk, -8                   ; 3 uses
  %i.jl = add i64 %i.hw, %n.vec190
  %i.jm = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i19, i64 0
  %i.jn = getelementptr [4 x i8], ptr %i.gy, i64 %i.hw
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph189
  %index192 = phi i64 [ 0, %vector.ph189 ], [ %index.next197, %vector.body191 ] ; 2 uses
  %vec.phi193 = phi <4 x i32> [ %i.jm, %vector.ph189 ], [ %i.jq, %vector.body191 ]
  %vec.phi194 = phi <4 x i32> [ zeroinitializer, %vector.ph189 ], [ %i.jr, %vector.body191 ]
  %i.jo = getelementptr [4 x i8], ptr %i.jn, i64 %index192 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %wide.load195 = load <4 x i32>, ptr %i.jo, align 4, !tbaa !104
  %wide.load196 = load <4 x i32>, ptr %i.jp, align 4, !tbaa !104
  %i.jq = add <4 x i32> %wide.load195, %vec.phi193 ; 2 uses
  %i.jr = add <4 x i32> %wide.load196, %vec.phi194 ; 2 uses
  %index.next197 = add nuw i64 %index192, 8       ; 2 uses
  %i.js = icmp eq i64 %index.next197, %n.vec190
  br i1 %i.js, label %middle.block198, label %vector.body191, !llvm.loop !301

middle.block198:                                  ; preds = %vector.body191
  %bin.rdx199 = add <4 x i32> %i.jr, %i.jq
  %i.jt = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx199) ; 2 uses
  %cmp.n200 = icmp eq i64 %i.jk, %n.vec190
  br i1 %cmp.n200, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i20, label %.lr.ph89.i.i.i.i23.preheader226

.lr.ph89.i.i.i.i23.preheader226:                  ; preds = %.lr.ph89.i.i.i.i23.preheader, %middle.block198
  %.05588.i.i.i.i24.ph = phi i64 [ %i.hw, %.lr.ph89.i.i.i.i23.preheader ], [ %i.jl, %middle.block198 ]
  %.187.i.i.i.i25.ph = phi i32 [ %.075.lcssa.i.i.i.i19, %.lr.ph89.i.i.i.i23.preheader ], [ %i.jt, %middle.block198 ]
  br label %.lr.ph89.i.i.i.i23

.lr.ph85.i.i.i.i26:                               ; preds = %.lr.ph85.i.i.i.i26.preheader231, %.lr.ph85.i.i.i.i26
  %.05683.i.i.i.i27 = phi i64 [ %i.jx, %.lr.ph85.i.i.i.i26 ], [ %.05683.i.i.i.i27.ph, %.lr.ph85.i.i.i.i26.preheader231 ] ; 2 uses
  %.07582.i.i.i.i28 = phi i32 [ %i.jw, %.lr.ph85.i.i.i.i26 ], [ %.07582.i.i.i.i28.ph, %.lr.ph85.i.i.i.i26.preheader231 ]
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %.05683.i.i.i.i27
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !104
  %i.jw = add nsw i32 %i.jv, %.07582.i.i.i.i28    ; 2 uses
  %i.jx = add nuw nsw i64 %.05683.i.i.i.i27, 1    ; 2 uses
  %exitcond.not.i.i.i.i29 = icmp eq i64 %i.jx, %.0.i.i.i.i.i.i.i.i12
  br i1 %exitcond.not.i.i.i.i29, label %.preheader.i.i.i.i18, label %.lr.ph85.i.i.i.i26, !llvm.loop !302

.lr.ph89.i.i.i.i23:                               ; preds = %.lr.ph89.i.i.i.i23.preheader226, %.lr.ph89.i.i.i.i23
  %.05588.i.i.i.i24 = phi i64 [ %i.kb, %.lr.ph89.i.i.i.i23 ], [ %.05588.i.i.i.i24.ph, %.lr.ph89.i.i.i.i23.preheader226 ] ; 2 uses
  %.187.i.i.i.i25 = phi i32 [ %i.ka, %.lr.ph89.i.i.i.i23 ], [ %.187.i.i.i.i25.ph, %.lr.ph89.i.i.i.i23.preheader226 ]
  %i.jy = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %.05588.i.i.i.i24
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !104
  %i.ka = add nsw i32 %i.jz, %.187.i.i.i.i25      ; 2 uses
  %i.kb = add nsw i64 %.05588.i.i.i.i24, 1        ; 2 uses
  %i.kc = icmp slt i64 %i.kb, %i.hi
  br i1 %i.kc, label %.lr.ph89.i.i.i.i23, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i20, !llvm.loop !303

bb.ab:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i11
  %i.kd = load i32, ptr %i.gy, align 4, !tbaa !104 ; 3 uses
  %i.ke = icmp sgt i64 %i.hi, 1
  br i1 %i.ke, label %.lr.ph94.i.i.i.i40.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i20

.lr.ph94.i.i.i.i40.preheader:                     ; preds = %bb.ab
  %i.kf = add nsw i64 %i.hi, -1                   ; 2 uses
  %min.iters.check204 = icmp ult i64 %i.hi, 9
  br i1 %min.iters.check204, label %.lr.ph94.i.i.i.i40.preheader223, label %vector.ph205

vector.ph205:                                     ; preds = %.lr.ph94.i.i.i.i40.preheader
  %n.vec206 = and i64 %i.kf, -8                   ; 3 uses
  %i.kg = or disjoint i64 %n.vec206, 1
  %i.kh = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.kd, i64 0
  br label %vector.body207

vector.body207:                                   ; preds = %vector.body207, %vector.ph205
  %index208 = phi i64 [ 0, %vector.ph205 ], [ %index.next213, %vector.body207 ] ; 2 uses
  %vec.phi209 = phi <4 x i32> [ %i.kh, %vector.ph205 ], [ %i.kl, %vector.body207 ]
  %vec.phi210 = phi <4 x i32> [ zeroinitializer, %vector.ph205 ], [ %i.km, %vector.body207 ]
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %index208 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 4
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 20
  %wide.load211 = load <4 x i32>, ptr %i.kj, align 4, !tbaa !104
  %wide.load212 = load <4 x i32>, ptr %i.kk, align 4, !tbaa !104
  %i.kl = add <4 x i32> %wide.load211, %vec.phi209 ; 2 uses
  %i.km = add <4 x i32> %wide.load212, %vec.phi210 ; 2 uses
  %index.next213 = add nuw i64 %index208, 8       ; 2 uses
  %i.kn = icmp eq i64 %index.next213, %n.vec206
  br i1 %i.kn, label %middle.block214, label %vector.body207, !llvm.loop !304

middle.block214:                                  ; preds = %vector.body207
  %bin.rdx215 = add <4 x i32> %i.km, %i.kl
  %i.ko = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx215) ; 2 uses
  %cmp.n216 = icmp eq i64 %i.kf, %n.vec206
  br i1 %cmp.n216, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i20, label %.lr.ph94.i.i.i.i40.preheader223

.lr.ph94.i.i.i.i40.preheader223:                  ; preds = %.lr.ph94.i.i.i.i40.preheader, %middle.block214
  %.092.i.i.i.i41.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i40.preheader ], [ %i.kg, %middle.block214 ]
  %.291.i.i.i.i42.ph = phi i32 [ %i.kd, %.lr.ph94.i.i.i.i40.preheader ], [ %i.ko, %middle.block214 ]
  br label %.lr.ph94.i.i.i.i40

.lr.ph94.i.i.i.i40:                               ; preds = %.lr.ph94.i.i.i.i40.preheader223, %.lr.ph94.i.i.i.i40
  %.092.i.i.i.i41 = phi i64 [ %i.ks, %.lr.ph94.i.i.i.i40 ], [ %.092.i.i.i.i41.ph, %.lr.ph94.i.i.i.i40.preheader223 ] ; 2 uses
  %.291.i.i.i.i42 = phi i32 [ %i.kr, %.lr.ph94.i.i.i.i40 ], [ %.291.i.i.i.i42.ph, %.lr.ph94.i.i.i.i40.preheader223 ]
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %.092.i.i.i.i41
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !104
  %i.kr = add nsw i32 %i.kq, %.291.i.i.i.i42      ; 2 uses
  %i.ks = add nuw nsw i64 %.092.i.i.i.i41, 1      ; 2 uses
  %exitcond102.not.i.i.i.i43 = icmp eq i64 %i.ks, %i.hi
  br i1 %exitcond102.not.i.i.i.i43, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i20, label %.lr.ph94.i.i.i.i40, !llvm.loop !305

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i20: ; preds = %.lr.ph89.i.i.i.i23, %.lr.ph94.i.i.i.i40, %middle.block198, %middle.block214, %bb.ab, %.preheader.i.i.i.i18
  %.0.i.i21 = phi i32 [ %i.kr, %.lr.ph94.i.i.i.i40 ], [ %.075.lcssa.i.i.i.i19, %.preheader.i.i.i.i18 ], [ %i.kd, %bb.ab ], [ %i.ko, %middle.block214 ], [ %i.jt, %middle.block198 ], [ %i.ka, %.lr.ph89.i.i.i.i23 ]
  %i.kt = sext i32 %.0.i.i21 to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit44

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit44: ; preds = %bb.t, %bb.u, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i20
  %.0.i22 = phi i64 [ %i.hh, %bb.t ], [ %i.kt, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i20 ], [ 0, %bb.u ]
  %i.ku = shl nsw i64 %.0.i22, 1
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.kv, i64 noundef %i.ku)
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !306
  %.not.i.i = icmp eq i64 %.sroa.speculated, %i.ky
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit44
  %i.kz = load ptr, ptr %i.kw, align 8, !tbaa !232
  call void @free(ptr noundef %i.kz) #33
  %i.la = icmp sgt i64 %.sroa.speculated, 0
  br i1 %i.la, label %bb.ad, label %.sink.split.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.lb = icmp samesign ugt i64 %.sroa.speculated, 2305843009213693951
  br i1 %i.lb, label %bb.ae, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.lc = call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.lc, align 8, !tbaa !113
  call void @__cxa_throw(ptr nonnull %i.lc, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i: ; preds = %bb.ad
  %i.ld = shl nuw i64 %.sroa.speculated, 3
  %i.le = call noalias ptr @malloc(i64 noundef %i.ld) #35 ; 2 uses
  %i.lf = icmp eq ptr %i.le, null
  br i1 %i.lf, label %bb.af, label %.sink.split.i.i

bb.af:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i
  %i.lg = call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.lg, align 8, !tbaa !113
  call void @__cxa_throw(ptr nonnull %i.lg, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.ac
  %.sink.i.i = phi ptr [ %i.le, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i ], [ null, %bb.ac ]
  store ptr %.sink.i.i, ptr %i.kw, align 8, !tbaa !232
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit44, %.sink.split.i.i
  store i64 %.sroa.speculated, ptr %i.kx, align 8, !tbaa !306
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.lh, align 1, !tbaa !230
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8SparseQRINS_12SparseMatrixIdLi0EiEENS_14COLAMDOrderingIiEEE9factorizeERKS2_(ptr noundef nonnull align 8 dereferenceable(378) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::SparseMatrix", align 8 ; 13 uses
  %3 = alloca %"class.Eigen::Product.201", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %i.c = trunc i64 %i.b to i32                    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14   ; 8 uses
  %i.f = trunc i64 %i.e to i32                    ; 5 uses
  %.sroa.speculated430 = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %i.c) ; 3 uses
  %.sroa.speculated427 = tail call i32 @llvm.smax.i32(i32 %i.c, i32 %i.f) ; 2 uses
  %i.g = sext i32 %.sroa.speculated427 to i64     ; 2 uses
  %i.h = icmp slt i32 %.sroa.speculated427, 1     ; 2 uses
  br i1 %i.h, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = shl nuw nsw i64 %i.g, 2                  ; 2 uses
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #35 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.noexc.i, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit

.noexc.i:                                         ; preds = %bb.b
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !113
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit: ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.j, i8 -1, i64 %i.i, i1 false), !tbaa !104
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit: ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit, %bb.a
  %.sroa.0403.0453 = phi ptr [ null, %bb.a ], [ %i.j, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit ] ; 10 uses
  %sext505 = shl i64 %i.e, 32                     ; 3 uses
  %i.m = ashr exact i64 %sext505, 32
  %i.n = icmp sgt i32 %i.f, 0                     ; 3 uses
  br i1 %i.n, label %bb.c, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit252

bb.c:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit
  %i.o = lshr exact i64 %sext505, 30
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #35 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.d, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit252

bb.d:                                             ; preds = %bb.c
  %i.r = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.r, align 8, !tbaa !113
  invoke void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.noexc.i251 unwind label %bb.e

.noexc.i251:                                      ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit252: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit, %bb.c
  %.sroa.0392.0 = phi ptr [ null, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit ], [ %i.p, %bb.c ] ; 7 uses
  %sext506 = shl i64 %i.b, 32                     ; 4 uses
  %i.t = icmp sgt i32 %i.c, 0
  br i1 %i.t, label %bb.f, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit

bb.f:                                             ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit252
  %i.u = lshr exact i64 %sext506, 30
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.u) #35 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.x, align 8, !tbaa !113
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.noexc.i256 unwind label %bb.h

.noexc.i256:                                      ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body257

bb.i:                                             ; preds = %bb.f
  %i.z = lshr exact i64 %sext506, 29
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.z) #35 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.j, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit

bb.j:                                             ; preds = %bb.i
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ac, align 8, !tbaa !113
  invoke void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.noexc.i263 unwind label %bb.k

.noexc.i263:                                      ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body264

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit: ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit252, %bb.i
  %.sroa.0380.0470 = phi ptr [ null, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit252 ], [ %i.v, %bb.i ] ; 21 uses
  %.sroa.0363.0 = phi ptr [ null, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit252 ], [ %i.aa, %bb.i ] ; 27 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.af = load double, ptr %i.ae, align 8, !tbaa !307 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  store i64 0, ptr %i.ah, align 8, !tbaa !233
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !145
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !14
  %i.am = shl i64 %i.al, 2
  %i.an = add i64 %i.am, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aj, i8 0, i64 %i.an, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !160 ; 2 uses
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit
  %i.aq = load i64, ptr %i.ak, align 8, !tbaa !14
  %i.ar = shl i64 %i.aq, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ap, i8 0, i64 %i.ar, i1 false)
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit

_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit:   ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit, %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  store i64 0, ptr %i.at, align 8, !tbaa !233
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !145
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !14
  %i.ay = shl i64 %i.ax, 2
  %i.az = add i64 %i.ay, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.av, i8 0, i64 %i.az, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !160 ; 2 uses
  %.not.i266 = icmp eq ptr %i.bb, null
  br i1 %.not.i266, label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit267, label %bb.m

bb.m:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !14
  %i.bd = shl i64 %i.bc, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bb, i8 0, i64 %i.bd, i1 false)
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit267

_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit267: ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit, %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bf = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.be, ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %bb.n unwind label %bb.v       ; 0 uses

bb.n:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit267
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 377 ; 3 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !292, !range !170, !noundef !171
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !103 ; 9 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit520, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %bb.q, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.i

bb.q:                                             ; preds = %bb.p
  %i.bn = icmp samesign ugt i64 %i.bl, 4611686018427387903
  br i1 %i.bn, label %.invoke.i.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i: ; preds = %bb.q
  %i.bo = shl nuw i64 %i.bl, 2
  %i.bp = tail call noalias ptr @malloc(i64 noundef %i.bo) #35 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %.invoke.i.i, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.i

.invoke.i.i:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i, %bb.q
  %i.br = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.br, align 8, !tbaa !113
  invoke void @__cxa_throw(ptr nonnull %i.br, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.cont.i.i unwind label %bb.r

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.r:                                             ; preds = %.invoke.i.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body268

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i, %bb.p
  %.sink.i.i.i.i.i = phi ptr [ %i.bp, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i ], [ null, %bb.p ] ; 8 uses
  %i.bt = trunc i64 %i.bl to i32
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph.i, label %.loopexit520

.lr.ph.i:                                         ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.i
  %i.bv = load ptr, ptr %i.bj, align 8, !tbaa !78 ; 5 uses
  %wide.trip.count.i = and i64 %i.bl, 2147483647
  %i.bw = add nsw i64 %wide.trip.count.i, -1
  %xtraiter = and i64 %i.bl, 3                    ; 3 uses
  %i.bx = icmp ult i64 %i.bw, 3
  br i1 %i.bx, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
end_hunk_0
begin_hunk_1_@_ZN5Eigen8SparseQRINS_12SparseMatrixIdLi0EiEENS_14COLAMDOrderingIiEEE9factorizeERKS2_:bb.a
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv613
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !104 ; 3 uses
  %.0.i.i.i.us.i.i.i.us = zext i32 %i.gt to i64   ; 2 uses
  %i.gu = icmp sgt i32 %i.gt, 0
  br i1 %i.gu, label %.lr.ph.us.i.i.i.us.preheader, label %.loopexit516.us

.lr.ph.us.i.i.i.us.preheader:                     ; preds = %.split.us.split.i.i.i.us
  %xtraiter775 = and i64 %.0.i.i.i.us.i.i.i.us, 3 ; 3 uses
  %i.gv = icmp ult i32 %i.gt, 4
  br i1 %i.gv, label %.lr.ph.us.i.i.i.us.epil.preheader, label %.lr.ph.us.i.i.i.us.preheader.new

.lr.ph.us.i.i.i.us.preheader.new:                 ; preds = %.lr.ph.us.i.i.i.us.preheader
  %unroll_iter780 = and i64 %.0.i.i.i.us.i.i.i.us, 2147483644
  br label %.lr.ph.us.i.i.i.us

.lr.ph.us.i.i.i.us:                               ; preds = %.lr.ph.us.i.i.i.us, %.lr.ph.us.i.i.i.us.preheader.new
  %.117.us.i.i.i.us = phi double [ 0.000000e+00, %.lr.ph.us.i.i.i.us.preheader.new ], [ %i.ho, %.lr.ph.us.i.i.i.us ]
  %.sroa.611.016.us.i.i.i.us = phi i64 [ 0, %.lr.ph.us.i.i.i.us.preheader.new ], [ %i.hp, %.lr.ph.us.i.i.i.us ] ; 5 uses
  %niter781 = phi i64 [ 0, %.lr.ph.us.i.i.i.us.preheader.new ], [ %niter781.next.3, %.lr.ph.us.i.i.i.us ]
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %.sroa.611.016.us.i.i.i.us
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !152 ; 2 uses
  %i.gy = fmul double %i.gx, %i.gx
  %i.gz = fadd double %.117.us.i.i.i.us, %i.gy
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %.sroa.611.016.us.i.i.i.us
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !152 ; 2 uses
  %i.hd = fmul double %i.hc, %i.hc
  %i.he = fadd double %i.gz, %i.hd
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %.sroa.611.016.us.i.i.i.us
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !152 ; 2 uses
  %i.hi = fmul double %i.hh, %i.hh
  %i.hj = fadd double %i.he, %i.hi
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %.sroa.611.016.us.i.i.i.us
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !152 ; 2 uses
  %i.hn = fmul double %i.hm, %i.hm
  %i.ho = fadd double %i.hj, %i.hn                ; 3 uses
  %i.hp = add nuw nsw i64 %.sroa.611.016.us.i.i.i.us, 4 ; 2 uses
  %niter781.next.3 = add i64 %niter781, 4         ; 2 uses
  %niter781.ncmp.3 = icmp eq i64 %niter781.next.3, %unroll_iter780
  br i1 %niter781.ncmp.3, label %.loopexit516.us.loopexit.unr-lcssa, label %.lr.ph.us.i.i.i.us

.loopexit516.us.loopexit.unr-lcssa:               ; preds = %.lr.ph.us.i.i.i.us
  %lcmp.mod777.not = icmp eq i64 %xtraiter775, 0
  br i1 %lcmp.mod777.not, label %.loopexit516.us, label %.lr.ph.us.i.i.i.us.epil.preheader

.lr.ph.us.i.i.i.us.epil.preheader:                ; preds = %.loopexit516.us.loopexit.unr-lcssa, %.lr.ph.us.i.i.i.us.preheader
  %.117.us.i.i.i.us.epil.init = phi double [ 0.000000e+00, %.lr.ph.us.i.i.i.us.preheader ], [ %i.ho, %.loopexit516.us.loopexit.unr-lcssa ]
  %.sroa.611.016.us.i.i.i.us.epil.init = phi i64 [ 0, %.lr.ph.us.i.i.i.us.preheader ], [ %i.hp, %.loopexit516.us.loopexit.unr-lcssa ]
  %lcmp.mod779 = icmp ne i64 %xtraiter775, 0
  tail call void @llvm.assume(i1 %lcmp.mod779)
  br label %.lr.ph.us.i.i.i.us.epil

.lr.ph.us.i.i.i.us.epil:                          ; preds = %.lr.ph.us.i.i.i.us.epil, %.lr.ph.us.i.i.i.us.epil.preheader
  %.117.us.i.i.i.us.epil = phi double [ %i.ht, %.lr.ph.us.i.i.i.us.epil ], [ %.117.us.i.i.i.us.epil.init, %.lr.ph.us.i.i.i.us.epil.preheader ]
  %.sroa.611.016.us.i.i.i.us.epil = phi i64 [ %i.hu, %.lr.ph.us.i.i.i.us.epil ], [ %.sroa.611.016.us.i.i.i.us.epil.init, %.lr.ph.us.i.i.i.us.epil.preheader ] ; 2 uses
  %epil.iter776 = phi i64 [ %epil.iter776.next, %.lr.ph.us.i.i.i.us.epil ], [ 0, %.lr.ph.us.i.i.i.us.epil.preheader ]
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %.sroa.611.016.us.i.i.i.us.epil
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !152 ; 2 uses
  %i.hs = fmul double %i.hr, %i.hr
  %i.ht = fadd double %.117.us.i.i.i.us.epil, %i.hs ; 2 uses
  %i.hu = add nuw nsw i64 %.sroa.611.016.us.i.i.i.us.epil, 1
  %epil.iter776.next = add i64 %epil.iter776, 1   ; 2 uses
  %epil.iter776.cmp.not = icmp eq i64 %epil.iter776.next, %xtraiter775
  br i1 %epil.iter776.cmp.not, label %.loopexit516.us, label %.lr.ph.us.i.i.i.us.epil, !llvm.loop !317

.loopexit516.us:                                  ; preds = %.loopexit516.us.loopexit.unr-lcssa, %.lr.ph.us.i.i.i.us.epil, %.split.us.split.i.i.i.us
  %.us-phi.i.i.i.us = phi double [ 0.000000e+00, %.split.us.split.i.i.i.us ], [ %i.ho, %.loopexit516.us.loopexit.unr-lcssa ], [ %i.ht, %.lr.ph.us.i.i.i.us.epil ]
  %i.hv = tail call noundef double @sqrt(double noundef %.us-phi.i.i.i.us) #33 ; 2 uses
  %i.hw = fcmp olt double %.0451536.us, %i.hv
  %.sroa.speculated.us = select i1 %i.hw, double %i.hv, double %.0451536.us ; 2 uses
  %indvars.iv.next614 = add nuw nsw i64 %indvars.iv613, 1 ; 2 uses
  %exitcond617.not = icmp eq i64 %indvars.iv.next614, %wide.trip.count616
  br i1 %exitcond617.not, label %._crit_edge539, label %.split.us.split.i.i.i.us, !llvm.loop !318

bb.z:                                             ; preds = %bb.ad, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.ad ] ; 5 uses
  %niter774 = phi i64 [ 0, %.lr.ph.new ], [ %niter774.next.1, %bb.ad ]
  br i1 %.not239, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hx = load ptr, ptr %i.fq, align 8, !tbaa !78
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !104
  %i.ia = sext i32 %i.hz to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.ib = phi i64 [ %i.ia, %bb.aa ], [ %indvars.iv, %bb.z ] ; 2 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !104 ; 2 uses
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %i.ib
  store i32 %i.id, ptr %i.ie, align 4, !tbaa !104
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.next
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !104
  %i.ih = sub nsw i32 %i.ig, %i.id
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.ib
  store i32 %i.ih, ptr %i.ii, align 4, !tbaa !104
  br i1 %.not239, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ij = load ptr, ptr %i.fq, align 8, !tbaa !78
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv.next
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !104
  %i.im = sext i32 %i.il to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.in = phi i64 [ %i.im, %bb.ac ], [ %indvars.iv.next, %bb.ab ] ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.next
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !104 ; 2 uses
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %i.in
  store i32 %i.ip, ptr %i.iq, align 4, !tbaa !104
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.next.1
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !104
  %i.it = sub nsw i32 %i.is, %i.ip
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.in
  store i32 %i.it, ptr %i.iu, align 4, !tbaa !104
  %niter774.next.1 = add i64 %niter774, 2         ; 2 uses
  %niter774.ncmp.1 = icmp eq i64 %niter774.next.1, %unroll_iter773
  br i1 %niter774.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.z, !llvm.loop !319

._crit_edge539:                                   ; preds = %.loopexit517, %.loopexit516.us, %._crit_edge.thread
  %.0451.lcssa = phi double [ %.sroa.speculated.us, %.loopexit516.us ], [ 0.000000e+00, %._crit_edge.thread ], [ %.sroa.speculated, %.loopexit517 ] ; 2 uses
  %i.iv = fcmp oeq double %.0451.lcssa, 0.000000e+00
  %.1 = select i1 %i.iv, double 1.000000e+00, double %.0451.lcssa
  %i.iw = add nsw i32 %i.f, %i.c
  %i.ix = mul nsw i32 %i.iw, 20
  %i.iy = sitofp i32 %i.ix to double
  %i.iz = fmul double %.1, %i.iy
  %i.ja = fmul double %i.iz, f0x3CB0000000000000
  br label %bb.ae

.split.i.i.i:                                     ; preds = %.lr.ph538, %.loopexit517
  %indvars.iv608 = phi i64 [ %indvars.iv.next609, %.loopexit517 ], [ 0, %.lr.ph538 ] ; 3 uses
  %.0451536 = phi double [ %.sroa.speculated, %.loopexit517 ], [ 0.000000e+00, %.lr.ph538 ] ; 2 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv608
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !104
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv608
  %i.je = sext i32 %i.jc to i64                   ; 2 uses
  %i.jf = load i32, ptr %i.jd, align 4, !tbaa !104 ; 2 uses
  %i.jg = zext nneg i32 %i.jf to i64
  %i.jh = add nsw i64 %i.jg, %i.je
  %i.ji = icmp sgt i32 %i.jf, 0
  br i1 %i.ji, label %.lr.ph.i.i.i, label %.loopexit517

.lr.ph.i.i.i:                                     ; preds = %.split.i.i.i, %.lr.ph.i.i.i
  %.117.i.i.i = phi double [ %i.jm, %.lr.ph.i.i.i ], [ 0.000000e+00, %.split.i.i.i ]
  %.sroa.611.016.i.i.i = phi i64 [ %i.jn, %.lr.ph.i.i.i ], [ %i.je, %.split.i.i.i ] ; 2 uses
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.go, i64 %.sroa.611.016.i.i.i
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !152 ; 2 uses
  %i.jl = fmul double %i.jk, %i.jk
  %i.jm = fadd double %.117.i.i.i, %i.jl          ; 2 uses
  %i.jn = add nsw i64 %.sroa.611.016.i.i.i, 1     ; 2 uses
  %i.jo = icmp slt i64 %i.jn, %i.jh
  br i1 %i.jo, label %.lr.ph.i.i.i, label %.loopexit517

.loopexit517:                                     ; preds = %.lr.ph.i.i.i, %.split.i.i.i
  %.us-phi.i.i.i = phi double [ 0.000000e+00, %.split.i.i.i ], [ %i.jm, %.lr.ph.i.i.i ]
  %i.jp = tail call noundef double @sqrt(double noundef %.us-phi.i.i.i) #33 ; 2 uses
  %i.jq = fcmp olt double %.0451536, %i.jp
  %.sroa.speculated = select i1 %i.jq, double %i.jp, double %.0451536 ; 2 uses
  %indvars.iv.next609 = add nuw nsw i64 %indvars.iv608, 1 ; 2 uses
  %exitcond612.not = icmp eq i64 %indvars.iv.next609, %wide.trip.count616
  br i1 %exitcond612.not, label %._crit_edge539, label %.split.i.i.i, !llvm.loop !318

bb.ae:                                            ; preds = %._crit_edge.thread, %._crit_edge539, %._crit_edge
  %.0193 = phi double [ %i.ja, %._crit_edge539 ], [ %i.af, %._crit_edge ], [ %i.af, %._crit_edge.thread ]
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  invoke void @_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEl(ptr noundef nonnull align 1 dereferenceable(1) %i.jr, i64 noundef %i.m)
          to label %bb.af unwind label %bb.v

bb.af:                                            ; preds = %bb.ae
  %i.js = load ptr, ptr %i.au, align 8, !tbaa !145 ; 2 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !104
  %i.ju = getelementptr i8, ptr %i.js, i64 4
  store i32 %i.jt, ptr %i.ju, align 4, !tbaa !104
  br i1 %i.n, label %.lr.ph596, label %.thread496

.lr.ph596:                                        ; preds = %bb.af
  %.idx.i.i.i.i.i.i.i.i.i.i274 = shl nuw nsw i64 %i.g, 2
  %i.jv = icmp slt i64 %sext506, 4294967296
  %.idx.i.i.i.i.i.i.i.i.i.i.i = lshr exact i64 %sext506, 29
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %sext509 = add nsw i64 %sext505, -4294967296
  %i.kg = ashr exact i64 %sext509, 32             ; 4 uses
  %wide.trip.count629 = and i64 %i.e, 2147483647
  br label %4

bb.ag:                                            ; preds = %._crit_edge588, %bb.cc, %bb.cd
  %.2206 = phi i32 [ %.0204593, %bb.cd ], [ %i.aan, %bb.cc ], [ %i.aan, %._crit_edge588 ] ; 2 uses
  %indvars.iv.next627 = add nuw nsw i64 %indvars.iv626, 1 ; 2 uses
  %exitcond630.not = icmp eq i64 %indvars.iv.next627, %wide.trip.count629
  br i1 %exitcond630.not, label %.thread496, label %4, !llvm.loop !320

4:                                                ; preds = %.lr.ph596, %bb.ag
  %indvars.iv626 = phi i64 [ 0, %.lr.ph596 ], [ %indvars.iv.next627, %bb.ag ] ; 13 uses
  %.0204593 = phi i32 [ 0, %.lr.ph596 ], [ %.2206, %bb.ag ] ; 12 uses
  br i1 %i.h, label %.loopexit515, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i275.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i275.preheader:      ; preds = %4
  tail call void @llvm.memset.p0.i64(ptr align 4 %.sroa.0403.0453, i8 -1, i64 %.idx.i.i.i.i.i.i.i.i.i.i274, i1 false), !tbaa !104
  br label %.loopexit515

.loopexit515:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i275.preheader, %4
  %i.kh = load ptr, ptr %i.ai, align 8, !tbaa !145
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %indvars.iv626 ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !104
  %i.kk = getelementptr i8, ptr %i.ki, i64 4
  store i32 %i.kj, ptr %i.kk, align 4, !tbaa !104
  %i.kl = sext i32 %.0204593 to i64               ; 10 uses
  %i.km = getelementptr inbounds [4 x i8], ptr %.sroa.0403.0453, i64 %i.kl
  %i.kn = trunc nuw nsw i64 %indvars.iv626 to i32 ; 6 uses
  store i32 %i.kn, ptr %i.km, align 4, !tbaa !104
  store i32 %.0204593, ptr %.sroa.0380.0470, align 4, !tbaa !104
  br i1 %i.jv, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i: ; preds = %.loopexit515
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sroa.0363.0, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !152
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i, %.loopexit515
  %i.ko = icmp sge i32 %.0204593, %i.c            ; 2 uses
  %i.kp = load ptr, ptr %i.jw, align 8, !tbaa !161
  %i.kq = load ptr, ptr %i.jx, align 8, !tbaa !162
  %i.kr = load ptr, ptr %i.jy, align 8, !tbaa !145
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %indvars.iv626 ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !104
  %i.ku = sext i32 %i.kt to i64                   ; 3 uses
  %i.kv = load ptr, ptr %i.df, align 8, !tbaa !160 ; 2 uses
  %i.kw = icmp eq ptr %i.kv, null
  br i1 %i.kw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit
  %i.kx = getelementptr i8, ptr %i.ks, i64 4
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !104
  %i.kz = sext i32 %i.ky to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.ai:                                            ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv626
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !104
  %i.lc = sext i32 %i.lb to i64
  %i.ld = add nsw i64 %i.lc, %i.ku
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.ah, %bb.ai
  %.sink.i = phi i64 [ %i.kz, %bb.ah ], [ %i.ld, %bb.ai ] ; 2 uses
  %i.le = icmp sle i64 %.sink.i, %i.ku            ; 2 uses
  %.not508550 = select i1 %i.le, i1 %i.ko, i1 false
  br i1 %.not508550, label %.preheader513, label %.lr.ph555

.lr.ph555:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.lf = load ptr, ptr %i.jz, align 8, !tbaa !78
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph555, %bb.au
  %i.lg = phi i1 [ %i.le, %.lr.ph555 ], [ %i.np, %bb.au ] ; 2 uses
  %.0179554 = phi i64 [ 0, %.lr.ph555 ], [ %.1180.lcssa, %bb.au ] ; 4 uses
  %.0183553 = phi i64 [ 1, %.lr.ph555 ], [ %.2185, %bb.au ] ; 4 uses
  %.0197552 = phi i1 [ %i.ko, %.lr.ph555 ], [ %spec.select, %bb.au ]
  %.sroa.8337.0551 = phi i64 [ %i.ku, %.lr.ph555 ], [ %i.no, %bb.au ] ; 3 uses
  br i1 %i.lg, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.kq, i64 %.sroa.8337.0551
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !104 ; 2 uses
  %.pre = sext i32 %i.li to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %.pre-phi = phi i64 [ %i.kl, %bb.aj ], [ %.pre, %bb.ak ] ; 3 uses
  %.0196 = phi i32 [ %.0204593, %bb.aj ], [ %i.li, %bb.ak ] ; 3 uses
  %i.lj = icmp eq i32 %.0196, %.0204593
  %spec.select = select i1 %i.lj, i1 true, i1 %.0197552 ; 2 uses
  %i.lk = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %.pre-phi
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !104 ; 3 uses
  %i.lm = icmp sgt i32 %i.ll, -1
  br i1 %i.lm, label %.preheader, label %bb.am

.preheader:                                       ; preds = %bb.al
  %i.ln = zext nneg i32 %i.ll to i64              ; 2 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0403.0453, i64 %i.ln ; 2 uses
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !104
  %i.lq = zext i32 %i.lp to i64
  %.not540 = icmp eq i64 %indvars.iv626, %i.lq
  br i1 %.not540, label %._crit_edge544, label %.lr.ph543

.lr.ph543:                                        ; preds = %.preheader
  %i.lr = load ptr, ptr %i.ka, align 8, !tbaa !78
  br label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !50
  %i.lv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ls, i64 noundef 0, i64 noundef %i.lu, ptr noundef nonnull @.str.9, i64 noundef 46)
          to label %.thread494 unwind label %bb.an ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %.body268

bb.ao:                                            ; preds = %.lr.ph543, %bb.ao
  %i.lx = phi ptr [ %i.lo, %.lr.ph543 ], [ %i.me, %bb.ao ]
  %i.ly = phi i64 [ %i.ln, %.lr.ph543 ], [ %i.md, %bb.ao ]
  %.1180542 = phi i64 [ %.0179554, %.lr.ph543 ], [ %i.mb, %bb.ao ] ; 2 uses
  %.0195541 = phi i32 [ %i.ll, %.lr.ph543 ], [ %i.mc, %bb.ao ]
  %i.lz = getelementptr inbounds [4 x i8], ptr %.sroa.0392.0, i64 %.1180542
  store i32 %.0195541, ptr %i.lz, align 4, !tbaa !104
  store i32 %i.kn, ptr %i.lx, align 4, !tbaa !104
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %i.ly
  %i.mb = add nsw i64 %.1180542, 1                ; 2 uses
  %i.mc = load i32, ptr %i.ma, align 4, !tbaa !104 ; 2 uses
  %i.md = sext i32 %i.mc to i64                   ; 2 uses
  %i.me = getelementptr inbounds [4 x i8], ptr %.sroa.0403.0453, i64 %i.md ; 2 uses
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !104
  %i.mg = zext i32 %i.mf to i64
  %.not = icmp eq i64 %indvars.iv626, %i.mg
  br i1 %.not, label %._crit_edge544, label %bb.ao, !llvm.loop !321

._crit_edge544:                                   ; preds = %bb.ao, %.preheader
  %.1180.lcssa = phi i64 [ %.0179554, %.preheader ], [ %i.mb, %bb.ao ] ; 5 uses
  %i.mh = sub nsw i64 %.1180.lcssa, %.0179554     ; 3 uses
  %i.mi = lshr i64 %i.mh, 1                       ; 3 uses
  %i.mj = icmp sgt i64 %i.mh, 1
  br i1 %i.mj, label %.lr.ph548, label %._crit_edge549

.lr.ph548:                                        ; preds = %._crit_edge544
  %i.mk = getelementptr [4 x i8], ptr %.sroa.0392.0, i64 %.0179554 ; 3 uses
  %i.ml = getelementptr [4 x i8], ptr %.sroa.0392.0, i64 %.1180.lcssa ; 3 uses
  %i.mm = icmp eq i64 %i.mi, 1
  br i1 %i.mm, label %.epil.preheader782, label %.lr.ph548.new

.lr.ph548.new:                                    ; preds = %.lr.ph548
  %unroll_iter787 = and i64 %i.mi, 4611686018427387902
  br label %bb.ap

._crit_edge549.loopexit.unr-lcssa:                ; preds = %bb.ap
  %i.mn = and i64 %i.mh, 2
  %lcmp.mod785.not = icmp eq i64 %i.mn, 0
  br i1 %lcmp.mod785.not, label %._crit_edge549, label %.epil.preheader782

.epil.preheader782:                               ; preds = %._crit_edge549.loopexit.unr-lcssa, %.lr.ph548
  %.0192546.epil.init = phi i64 [ 0, %.lr.ph548 ], [ %i.ne, %._crit_edge549.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod786 = trunc i64 %i.mi to i1
  tail call void @llvm.assume(i1 %lcmp.mod786)
  %i.mo = getelementptr [4 x i8], ptr %i.mk, i64 %.0192546.epil.init ; 2 uses
  %i.mp = xor i64 %.0192546.epil.init, -1
  %i.mq = getelementptr [4 x i8], ptr %i.ml, i64 %i.mp ; 2 uses
  %i.mr = load i32, ptr %i.mo, align 4, !tbaa !104
  %i.ms = load i32, ptr %i.mq, align 4, !tbaa !104
  store i32 %i.ms, ptr %i.mo, align 4, !tbaa !104
  store i32 %i.mr, ptr %i.mq, align 4, !tbaa !104
  br label %._crit_edge549

._crit_edge549:                                   ; preds = %.epil.preheader782, %._crit_edge549.loopexit.unr-lcssa, %._crit_edge544
  br i1 %i.lg, label %bb.ar, label %bb.aq

bb.ap:                                            ; preds = %bb.ap, %.lr.ph548.new
  %.0192546 = phi i64 [ 0, %.lr.ph548.new ], [ %i.ne, %bb.ap ] ; 5 uses
  %niter788 = phi i64 [ 0, %.lr.ph548.new ], [ %niter788.next.1, %bb.ap ]
  %i.mt = getelementptr [4 x i8], ptr %i.mk, i64 %.0192546 ; 2 uses
  %i.mu = xor i64 %.0192546, -1
  %i.mv = getelementptr [4 x i8], ptr %i.ml, i64 %i.mu ; 2 uses
  %i.mw = load i32, ptr %i.mt, align 4, !tbaa !104
  %i.mx = load i32, ptr %i.mv, align 4, !tbaa !104
  store i32 %i.mx, ptr %i.mt, align 4, !tbaa !104
  store i32 %i.mw, ptr %i.mv, align 4, !tbaa !104
  %i.my = getelementptr [4 x i8], ptr %i.mk, i64 %.0192546
  %i.mz = getelementptr i8, ptr %i.my, i64 4      ; 2 uses
  %i.na = xor i64 %.0192546, -2
  %i.nb = getelementptr [4 x i8], ptr %i.ml, i64 %i.na ; 2 uses
  %i.nc = load i32, ptr %i.mz, align 4, !tbaa !104
  %i.nd = load i32, ptr %i.nb, align 4, !tbaa !104
  store i32 %i.nd, ptr %i.mz, align 4, !tbaa !104
  store i32 %i.nc, ptr %i.nb, align 4, !tbaa !104
  %i.ne = add nuw nsw i64 %.0192546, 2            ; 2 uses
  %niter788.next.1 = add i64 %niter788, 2         ; 2 uses
  %niter788.ncmp.1 = icmp eq i64 %niter788.next.1, %unroll_iter787
  br i1 %niter788.ncmp.1, label %._crit_edge549.loopexit.unr-lcssa, label %bb.ap, !llvm.loop !322

bb.aq:                                            ; preds = %._crit_edge549
  %i.nf = getelementptr inbounds [8 x i8], ptr %i.kp, i64 %.sroa.8337.0551
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !152
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge549, %bb.aq
  %.sink = phi double [ %i.ng, %bb.aq ], [ 0.000000e+00, %._crit_edge549 ]
  %i.nh = getelementptr inbounds [8 x i8], ptr %.sroa.0363.0, i64 %.pre-phi
  store double %.sink, ptr %i.nh, align 8, !tbaa !152
  %i.ni = icmp sgt i32 %.0196, %.0204593
  br i1 %i.ni, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.nj = getelementptr inbounds [4 x i8], ptr %.sroa.0403.0453, i64 %.pre-phi ; 2 uses
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !104
  %i.nl = zext i32 %i.nk to i64
  %.not214 = icmp eq i64 %indvars.iv626, %i.nl
  br i1 %.not214, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.nm = getelementptr inbounds [4 x i8], ptr %.sroa.0380.0470, i64 %.0183553
  store i32 %.0196, ptr %i.nm, align 4, !tbaa !104
  store i32 %i.kn, ptr %i.nj, align 4, !tbaa !104
  %i.nn = add nsw i64 %.0183553, 1
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %.2185 = phi i64 [ %.0183553, %bb.ar ], [ %i.nn, %bb.at ], [ %.0183553, %bb.as ] ; 3 uses
  %i.no = add nsw i64 %.sroa.8337.0551, 1         ; 2 uses
  %i.np = icmp sge i64 %i.no, %.sink.i            ; 2 uses
  %.not508 = select i1 %i.np, i1 %spec.select, i1 false
  br i1 %.not508, label %.thread489, label %bb.aj, !llvm.loop !323

.thread489:                                       ; preds = %bb.au
  %i.nq = add nsw i64 %.1180.lcssa, -1            ; 2 uses
  %i.nr = icmp sgt i64 %.1180.lcssa, 0            ; 4 uses
  br i1 %i.nr, label %.lr.ph568, label %._crit_edge569

.lr.ph568:                                        ; preds = %.thread489
  %i.ns = load ptr, ptr %i.kb, align 8, !tbaa !161 ; 8 uses
  %i.nt = load ptr, ptr %i.kc, align 8, !tbaa !162 ; 11 uses
  %i.nu = load ptr, ptr %i.au, align 8, !tbaa !145 ; 2 uses
  %i.nv = icmp eq ptr %i.nu, null
  %i.nw = load ptr, ptr %i.kd, align 8, !tbaa !232
  %i.nx = load ptr, ptr %i.ba, align 8, !tbaa !160 ; 6 uses
  %i.ny = icmp eq ptr %i.nx, null                 ; 3 uses
  %i.nz = load ptr, ptr %i.ka, align 8, !tbaa !78
  br label %bb.av

._crit_edge569:                                   ; preds = %.loopexit, %.thread489
  %.4187.lcssa = phi i64 [ %.2185, %.thread489 ], [ %.7190, %.loopexit ] ; 9 uses
  %.not724 = icmp sge i32 %.0204593, %.sroa.speculated430 ; 2 uses
  br i1 %.not724, label %bb.bo, label %bb.bk

bb.av:                                            ; preds = %.lr.ph568, %.loopexit
  %i.oa = phi ptr [ %i.nx, %.lr.ph568 ], [ %i.ov, %.loopexit ] ; 3 uses
  %.4187567 = phi i64 [ %.2185, %.lr.ph568 ], [ %.7190, %.loopexit ] ; 6 uses
  %.0191566 = phi i64 [ %i.nq, %.lr.ph568 ], [ %i.ua, %.loopexit ] ; 3 uses
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0392.0, i64 %.0191566
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !104
  %i.od = sext i32 %i.oc to i64                   ; 7 uses
  %i.oe = getelementptr inbounds [4 x i8], ptr %i.nu, i64 %i.od ; 7 uses
  br i1 %i.nv, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  br i1 %i.ny, label %bb.ax, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i

end_hunk_1
