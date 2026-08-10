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
  %.sroa.speculated432 = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %i.c) ; 3 uses
  %.sroa.speculated429 = tail call i32 @llvm.smax.i32(i32 %i.c, i32 %i.f) ; 2 uses
  %i.g = sext i32 %.sroa.speculated429 to i64     ; 2 uses
  %i.h = icmp slt i32 %.sroa.speculated429, 1     ; 2 uses
  br i1 %i.h, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %bb.a
  %i.i = shl nuw nsw i64 %i.g, 2                  ; 2 uses
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #35 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.noexc3.i, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit

.noexc3.i:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !113
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
  unreachable

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.j, i8 -1, i64 %i.i, i1 false), !tbaa !104
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit: ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit, %bb.a
  %.sroa.0405.0455 = phi ptr [ null, %bb.a ], [ %i.j, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit ] ; 10 uses
  %sext507 = shl i64 %i.e, 32                     ; 3 uses
  %i.m = ashr exact i64 %sext507, 32
  %i.n = icmp sgt i32 %i.f, 0                     ; 3 uses
  br i1 %i.n, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i251, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit253

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i251: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit
  %i.o = lshr exact i64 %sext507, 30
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #35 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.b, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit253

bb.b:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i251
  %i.r = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.r, align 8, !tbaa !113
  invoke void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.noexc3.i252 unwind label %bb.c

.noexc3.i252:                                     ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit253: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i251
  %.sroa.0394.0 = phi ptr [ null, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit ], [ %i.p, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i251 ] ; 7 uses
  %sext508 = shl i64 %i.b, 32                     ; 4 uses
  %i.t = icmp sgt i32 %i.c, 0
  br i1 %i.t, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i257, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i257: ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit253
  %i.u = lshr exact i64 %sext508, 30
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.u) #35 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i

bb.d:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i257
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.x, align 8, !tbaa !113
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.noexc3.i258 unwind label %bb.e

.noexc3.i258:                                     ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body259

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i257
  %i.z = lshr exact i64 %sext508, 29
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.z) #35 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.f, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit

bb.f:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ac, align 8, !tbaa !113
  invoke void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.noexc3.i265 unwind label %bb.g

.noexc3.i265:                                     ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body266

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit: ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit253, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i
  %.sroa.0382.0472 = phi ptr [ null, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit253 ], [ %i.v, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i ] ; 21 uses
  %.sroa.0365.0 = phi ptr [ null, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit253 ], [ %i.aa, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i ] ; 27 uses
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
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit
  %i.aq = load i64, ptr %i.ak, align 8, !tbaa !14
  %i.ar = shl i64 %i.aq, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ap, i8 0, i64 %i.ar, i1 false)
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit

_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit:   ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IiEERKT_.exit, %bb.h
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
  %.not.i268 = icmp eq ptr %i.bb, null
  br i1 %.not.i268, label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit269, label %bb.i

bb.i:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !14
  %i.bd = shl i64 %i.bc, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bb, i8 0, i64 %i.bd, i1 false)
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit269

_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit269: ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit, %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bf = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.be, ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %bb.j unwind label %bb.r       ; 0 uses

bb.j:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit269
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 377 ; 3 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !292, !range !170, !noundef !171
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !103 ; 9 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit522, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %bb.m, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.i

bb.m:                                             ; preds = %bb.l
  %i.bn = icmp samesign ugt i64 %i.bl, 4611686018427387903
  br i1 %i.bn, label %.invoke.i.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i: ; preds = %bb.m
  %i.bo = shl nuw i64 %i.bl, 2
  %i.bp = tail call noalias ptr @malloc(i64 noundef %i.bo) #35 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %.invoke.i.i, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.i

.invoke.i.i:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i, %bb.m
  %i.br = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.br, align 8, !tbaa !113
  invoke void @__cxa_throw(ptr nonnull %i.br, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.cont.i.i unwind label %bb.n

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.n:                                             ; preds = %.invoke.i.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body270

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i, %bb.l
  %.sink.i.i.i.i.i = phi ptr [ %i.bp, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i ], [ null, %bb.l ] ; 8 uses
  %i.bt = trunc i64 %i.bl to i32
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph.i, label %.loopexit522

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
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv615
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !104 ; 3 uses
  %.0.i.i.i.us.i.i.i.us = zext i32 %i.gt to i64   ; 2 uses
  %i.gu = icmp sgt i32 %i.gt, 0
  br i1 %i.gu, label %.lr.ph.us.i.i.i.us.preheader, label %.loopexit518.us

.lr.ph.us.i.i.i.us.preheader:                     ; preds = %.split.us.split.i.i.i.us
  %xtraiter777 = and i64 %.0.i.i.i.us.i.i.i.us, 3 ; 3 uses
  %i.gv = icmp ult i32 %i.gt, 4
  br i1 %i.gv, label %.lr.ph.us.i.i.i.us.epil.preheader, label %.lr.ph.us.i.i.i.us.preheader.new

.lr.ph.us.i.i.i.us.preheader.new:                 ; preds = %.lr.ph.us.i.i.i.us.preheader
  %unroll_iter782 = and i64 %.0.i.i.i.us.i.i.i.us, 2147483644
  br label %.lr.ph.us.i.i.i.us

.lr.ph.us.i.i.i.us:                               ; preds = %.lr.ph.us.i.i.i.us, %.lr.ph.us.i.i.i.us.preheader.new
  %.117.us.i.i.i.us = phi double [ 0.000000e+00, %.lr.ph.us.i.i.i.us.preheader.new ], [ %i.ho, %.lr.ph.us.i.i.i.us ]
  %.sroa.611.016.us.i.i.i.us = phi i64 [ 0, %.lr.ph.us.i.i.i.us.preheader.new ], [ %i.hp, %.lr.ph.us.i.i.i.us ] ; 5 uses
  %niter783 = phi i64 [ 0, %.lr.ph.us.i.i.i.us.preheader.new ], [ %niter783.next.3, %.lr.ph.us.i.i.i.us ]
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
  %niter783.next.3 = add i64 %niter783, 4         ; 2 uses
  %niter783.ncmp.3 = icmp eq i64 %niter783.next.3, %unroll_iter782
  br i1 %niter783.ncmp.3, label %.loopexit518.us.loopexit.unr-lcssa, label %.lr.ph.us.i.i.i.us

.loopexit518.us.loopexit.unr-lcssa:               ; preds = %.lr.ph.us.i.i.i.us
  %lcmp.mod779.not = icmp eq i64 %xtraiter777, 0
  br i1 %lcmp.mod779.not, label %.loopexit518.us, label %.lr.ph.us.i.i.i.us.epil.preheader

.lr.ph.us.i.i.i.us.epil.preheader:                ; preds = %.loopexit518.us.loopexit.unr-lcssa, %.lr.ph.us.i.i.i.us.preheader
  %.117.us.i.i.i.us.epil.init = phi double [ 0.000000e+00, %.lr.ph.us.i.i.i.us.preheader ], [ %i.ho, %.loopexit518.us.loopexit.unr-lcssa ]
  %.sroa.611.016.us.i.i.i.us.epil.init = phi i64 [ 0, %.lr.ph.us.i.i.i.us.preheader ], [ %i.hp, %.loopexit518.us.loopexit.unr-lcssa ]
  %lcmp.mod781 = icmp ne i64 %xtraiter777, 0
  tail call void @llvm.assume(i1 %lcmp.mod781)
  br label %.lr.ph.us.i.i.i.us.epil

.lr.ph.us.i.i.i.us.epil:                          ; preds = %.lr.ph.us.i.i.i.us.epil, %.lr.ph.us.i.i.i.us.epil.preheader
  %.117.us.i.i.i.us.epil = phi double [ %i.ht, %.lr.ph.us.i.i.i.us.epil ], [ %.117.us.i.i.i.us.epil.init, %.lr.ph.us.i.i.i.us.epil.preheader ]
  %.sroa.611.016.us.i.i.i.us.epil = phi i64 [ %i.hu, %.lr.ph.us.i.i.i.us.epil ], [ %.sroa.611.016.us.i.i.i.us.epil.init, %.lr.ph.us.i.i.i.us.epil.preheader ] ; 2 uses
  %epil.iter778 = phi i64 [ %epil.iter778.next, %.lr.ph.us.i.i.i.us.epil ], [ 0, %.lr.ph.us.i.i.i.us.epil.preheader ]
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %.sroa.611.016.us.i.i.i.us.epil
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !152 ; 2 uses
  %i.hs = fmul double %i.hr, %i.hr
  %i.ht = fadd double %.117.us.i.i.i.us.epil, %i.hs ; 2 uses
  %i.hu = add nuw nsw i64 %.sroa.611.016.us.i.i.i.us.epil, 1
  %epil.iter778.next = add i64 %epil.iter778, 1   ; 2 uses
  %epil.iter778.cmp.not = icmp eq i64 %epil.iter778.next, %xtraiter777
  br i1 %epil.iter778.cmp.not, label %.loopexit518.us, label %.lr.ph.us.i.i.i.us.epil, !llvm.loop !317

.loopexit518.us:                                  ; preds = %.loopexit518.us.loopexit.unr-lcssa, %.lr.ph.us.i.i.i.us.epil, %.split.us.split.i.i.i.us
  %.us-phi.i.i.i.us = phi double [ 0.000000e+00, %.split.us.split.i.i.i.us ], [ %i.ho, %.loopexit518.us.loopexit.unr-lcssa ], [ %i.ht, %.lr.ph.us.i.i.i.us.epil ]
  %i.hv = tail call noundef double @sqrt(double noundef %.us-phi.i.i.i.us) #33 ; 2 uses
  %i.hw = fcmp olt double %.0453538.us, %i.hv
  %.sroa.speculated.us = select i1 %i.hw, double %i.hv, double %.0453538.us ; 2 uses
  %indvars.iv.next616 = add nuw nsw i64 %indvars.iv615, 1 ; 2 uses
  %exitcond619.not = icmp eq i64 %indvars.iv.next616, %wide.trip.count618
  br i1 %exitcond619.not, label %._crit_edge541, label %.split.us.split.i.i.i.us, !llvm.loop !318

bb.v:                                             ; preds = %bb.z, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.z ] ; 5 uses
  %niter776 = phi i64 [ 0, %.lr.ph.new ], [ %niter776.next.1, %bb.z ]
  br i1 %.not239, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hx = load ptr, ptr %i.fq, align 8, !tbaa !78
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !104
  %i.ia = sext i32 %i.hz to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.ib = phi i64 [ %i.ia, %bb.w ], [ %indvars.iv, %bb.v ] ; 2 uses
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
  br i1 %.not239, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ij = load ptr, ptr %i.fq, align 8, !tbaa !78
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv.next
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !104
  %i.im = sext i32 %i.il to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.in = phi i64 [ %i.im, %bb.y ], [ %indvars.iv.next, %bb.x ] ; 2 uses
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
  %niter776.next.1 = add i64 %niter776, 2         ; 2 uses
  %niter776.ncmp.1 = icmp eq i64 %niter776.next.1, %unroll_iter775
  br i1 %niter776.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.v, !llvm.loop !319

._crit_edge541:                                   ; preds = %.loopexit519, %.loopexit518.us, %._crit_edge.thread
  %.0453.lcssa = phi double [ %.sroa.speculated.us, %.loopexit518.us ], [ 0.000000e+00, %._crit_edge.thread ], [ %.sroa.speculated, %.loopexit519 ] ; 2 uses
  %i.iv = fcmp oeq double %.0453.lcssa, 0.000000e+00
  %.1 = select i1 %i.iv, double 1.000000e+00, double %.0453.lcssa
  %i.iw = add nsw i32 %i.f, %i.c
  %i.ix = mul nsw i32 %i.iw, 20
  %i.iy = sitofp i32 %i.ix to double
  %i.iz = fmul double %.1, %i.iy
  %i.ja = fmul double %i.iz, f0x3CB0000000000000
  br label %bb.aa

.split.i.i.i:                                     ; preds = %.lr.ph540, %.loopexit519
  %indvars.iv610 = phi i64 [ %indvars.iv.next611, %.loopexit519 ], [ 0, %.lr.ph540 ] ; 3 uses
  %.0453538 = phi double [ %.sroa.speculated, %.loopexit519 ], [ 0.000000e+00, %.lr.ph540 ] ; 2 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv610
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !104
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv610
  %i.je = sext i32 %i.jc to i64                   ; 2 uses
  %i.jf = load i32, ptr %i.jd, align 4, !tbaa !104 ; 2 uses
  %i.jg = sext i32 %i.jf to i64
  %i.jh = add nsw i64 %i.jg, %i.je
  %i.ji = icmp sgt i32 %i.jf, 0
  br i1 %i.ji, label %.lr.ph.i.i.i, label %.loopexit519

.lr.ph.i.i.i:                                     ; preds = %.split.i.i.i, %.lr.ph.i.i.i
  %.117.i.i.i = phi double [ %i.jm, %.lr.ph.i.i.i ], [ 0.000000e+00, %.split.i.i.i ]
  %.sroa.611.016.i.i.i = phi i64 [ %i.jn, %.lr.ph.i.i.i ], [ %i.je, %.split.i.i.i ] ; 2 uses
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.go, i64 %.sroa.611.016.i.i.i
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !152 ; 2 uses
  %i.jl = fmul double %i.jk, %i.jk
  %i.jm = fadd double %.117.i.i.i, %i.jl          ; 2 uses
  %i.jn = add nsw i64 %.sroa.611.016.i.i.i, 1     ; 2 uses
  %i.jo = icmp slt i64 %i.jn, %i.jh
  br i1 %i.jo, label %.lr.ph.i.i.i, label %.loopexit519

.loopexit519:                                     ; preds = %.lr.ph.i.i.i, %.split.i.i.i
  %.us-phi.i.i.i = phi double [ 0.000000e+00, %.split.i.i.i ], [ %i.jm, %.lr.ph.i.i.i ]
  %i.jp = tail call noundef double @sqrt(double noundef %.us-phi.i.i.i) #33 ; 2 uses
  %i.jq = fcmp olt double %.0453538, %i.jp
  %.sroa.speculated = select i1 %i.jq, double %i.jp, double %.0453538 ; 2 uses
  %indvars.iv.next611 = add nuw nsw i64 %indvars.iv610, 1 ; 2 uses
  %exitcond614.not = icmp eq i64 %indvars.iv.next611, %wide.trip.count618
  br i1 %exitcond614.not, label %._crit_edge541, label %.split.i.i.i, !llvm.loop !318

bb.aa:                                            ; preds = %._crit_edge.thread, %._crit_edge541, %._crit_edge
  %.0193 = phi double [ %i.ja, %._crit_edge541 ], [ %i.af, %._crit_edge ], [ %i.af, %._crit_edge.thread ]
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  invoke void @_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEl(ptr noundef nonnull align 1 dereferenceable(1) %i.jr, i64 noundef %i.m)
          to label %bb.ab unwind label %bb.r

bb.ab:                                            ; preds = %bb.aa
  %i.js = load ptr, ptr %i.au, align 8, !tbaa !145 ; 2 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !104
  %i.ju = getelementptr i8, ptr %i.js, i64 4
  store i32 %i.jt, ptr %i.ju, align 4, !tbaa !104
  br i1 %i.n, label %.lr.ph598, label %.thread498

.lr.ph598:                                        ; preds = %bb.ab
  %.idx.i.i.i.i.i.i.i.i.i.i276 = shl nuw nsw i64 %i.g, 2
  %i.jv = icmp slt i64 %sext508, 4294967296
  %.idx.i.i.i.i.i.i.i.i.i.i.i = lshr exact i64 %sext508, 29
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
  %sext511 = add nsw i64 %sext507, -4294967296
  %i.kg = ashr exact i64 %sext511, 32             ; 4 uses
  %wide.trip.count631 = and i64 %i.e, 2147483647
  br label %4

bb.ac:                                            ; preds = %._crit_edge590, %bb.by, %bb.bz
  %.2206 = phi i32 [ %.0204595, %bb.bz ], [ %i.aan, %bb.by ], [ %i.aan, %._crit_edge590 ] ; 2 uses
  %indvars.iv.next629 = add nuw nsw i64 %indvars.iv628, 1 ; 2 uses
  %exitcond632.not = icmp eq i64 %indvars.iv.next629, %wide.trip.count631
  br i1 %exitcond632.not, label %.thread498, label %4, !llvm.loop !320

4:                                                ; preds = %.lr.ph598, %bb.ac
  %indvars.iv628 = phi i64 [ 0, %.lr.ph598 ], [ %indvars.iv.next629, %bb.ac ] ; 13 uses
  %.0204595 = phi i32 [ 0, %.lr.ph598 ], [ %.2206, %bb.ac ] ; 12 uses
  br i1 %i.h, label %.loopexit517, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i277.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i277.preheader:      ; preds = %4
  tail call void @llvm.memset.p0.i64(ptr align 4 %.sroa.0405.0455, i8 -1, i64 %.idx.i.i.i.i.i.i.i.i.i.i276, i1 false), !tbaa !104
  br label %.loopexit517

.loopexit517:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i277.preheader, %4
  %i.kh = load ptr, ptr %i.ai, align 8, !tbaa !145
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %indvars.iv628 ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !104
  %i.kk = getelementptr i8, ptr %i.ki, i64 4
  store i32 %i.kj, ptr %i.kk, align 4, !tbaa !104
  %i.kl = sext i32 %.0204595 to i64               ; 10 uses
  %i.km = getelementptr inbounds [4 x i8], ptr %.sroa.0405.0455, i64 %i.kl
  %i.kn = trunc nuw nsw i64 %indvars.iv628 to i32 ; 6 uses
  store i32 %i.kn, ptr %i.km, align 4, !tbaa !104
  store i32 %.0204595, ptr %.sroa.0382.0472, align 4, !tbaa !104
  br i1 %i.jv, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i: ; preds = %.loopexit517
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sroa.0365.0, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !152
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i, %.loopexit517
  %i.ko = icmp sge i32 %.0204595, %i.c            ; 2 uses
  %i.kp = load ptr, ptr %i.jw, align 8, !tbaa !161
  %i.kq = load ptr, ptr %i.jx, align 8, !tbaa !162
  %i.kr = load ptr, ptr %i.jy, align 8, !tbaa !145
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %indvars.iv628 ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !104
  %i.ku = sext i32 %i.kt to i64                   ; 3 uses
  %i.kv = load ptr, ptr %i.df, align 8, !tbaa !160 ; 2 uses
  %i.kw = icmp eq ptr %i.kv, null
  br i1 %i.kw, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit
  %i.kx = getelementptr i8, ptr %i.ks, i64 4
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !104
  %i.kz = sext i32 %i.ky to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.ae:                                            ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv628
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !104
  %i.lc = sext i32 %i.lb to i64
  %i.ld = add nsw i64 %i.lc, %i.ku
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.ad, %bb.ae
  %.sink.i = phi i64 [ %i.kz, %bb.ad ], [ %i.ld, %bb.ae ] ; 2 uses
  %i.le = icmp sle i64 %.sink.i, %i.ku            ; 2 uses
  %.not510552 = select i1 %i.le, i1 %i.ko, i1 false
  br i1 %.not510552, label %.preheader515, label %.lr.ph557

.lr.ph557:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.lf = load ptr, ptr %i.jz, align 8, !tbaa !78
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph557, %bb.aq
  %i.lg = phi i1 [ %i.le, %.lr.ph557 ], [ %i.np, %bb.aq ] ; 2 uses
  %.0179556 = phi i64 [ 0, %.lr.ph557 ], [ %.1180.lcssa, %bb.aq ] ; 4 uses
  %.0183555 = phi i64 [ 1, %.lr.ph557 ], [ %.2185, %bb.aq ] ; 4 uses
  %.0197554 = phi i1 [ %i.ko, %.lr.ph557 ], [ %spec.select, %bb.aq ]
  %.sroa.8339.0553 = phi i64 [ %i.ku, %.lr.ph557 ], [ %i.no, %bb.aq ] ; 3 uses
  br i1 %i.lg, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.kq, i64 %.sroa.8339.0553
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !104 ; 2 uses
  %.pre = sext i32 %i.li to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.pre-phi = phi i64 [ %i.kl, %bb.af ], [ %.pre, %bb.ag ] ; 3 uses
  %.0196 = phi i32 [ %.0204595, %bb.af ], [ %i.li, %bb.ag ] ; 3 uses
  %i.lj = icmp eq i32 %.0196, %.0204595
  %spec.select = select i1 %i.lj, i1 true, i1 %.0197554 ; 2 uses
  %i.lk = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %.pre-phi
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !104 ; 3 uses
  %i.lm = icmp sgt i32 %i.ll, -1
  br i1 %i.lm, label %.preheader, label %bb.ai

.preheader:                                       ; preds = %bb.ah
  %i.ln = zext nneg i32 %i.ll to i64              ; 2 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0405.0455, i64 %i.ln ; 2 uses
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !104
  %i.lq = zext i32 %i.lp to i64
  %.not542 = icmp eq i64 %indvars.iv628, %i.lq
  br i1 %.not542, label %._crit_edge546, label %.lr.ph545

.lr.ph545:                                        ; preds = %.preheader
  %i.lr = load ptr, ptr %i.ka, align 8, !tbaa !78
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !50
  %i.lv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ls, i64 noundef 0, i64 noundef %i.lu, ptr noundef nonnull @.str.9, i64 noundef 46)
          to label %.thread496 unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %bb.ai
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %.body270

bb.ak:                                            ; preds = %.lr.ph545, %bb.ak
  %i.lx = phi ptr [ %i.lo, %.lr.ph545 ], [ %i.me, %bb.ak ]
  %i.ly = phi i64 [ %i.ln, %.lr.ph545 ], [ %i.md, %bb.ak ]
  %.1180544 = phi i64 [ %.0179556, %.lr.ph545 ], [ %i.mb, %bb.ak ] ; 2 uses
  %.0195543 = phi i32 [ %i.ll, %.lr.ph545 ], [ %i.mc, %bb.ak ]
  %i.lz = getelementptr inbounds [4 x i8], ptr %.sroa.0394.0, i64 %.1180544
  store i32 %.0195543, ptr %i.lz, align 4, !tbaa !104
  store i32 %i.kn, ptr %i.lx, align 4, !tbaa !104
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %i.ly
  %i.mb = add nsw i64 %.1180544, 1                ; 2 uses
  %i.mc = load i32, ptr %i.ma, align 4, !tbaa !104 ; 2 uses
  %i.md = sext i32 %i.mc to i64                   ; 2 uses
  %i.me = getelementptr inbounds [4 x i8], ptr %.sroa.0405.0455, i64 %i.md ; 2 uses
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !104
  %i.mg = zext i32 %i.mf to i64
  %.not = icmp eq i64 %indvars.iv628, %i.mg
  br i1 %.not, label %._crit_edge546, label %bb.ak, !llvm.loop !321

._crit_edge546:                                   ; preds = %bb.ak, %.preheader
  %.1180.lcssa = phi i64 [ %.0179556, %.preheader ], [ %i.mb, %bb.ak ] ; 5 uses
  %i.mh = sub nsw i64 %.1180.lcssa, %.0179556     ; 3 uses
  %i.mi = sdiv i64 %i.mh, 2                       ; 3 uses
  %i.mj = icmp sgt i64 %i.mh, 1
  br i1 %i.mj, label %.lr.ph550, label %._crit_edge551

.lr.ph550:                                        ; preds = %._crit_edge546
  %i.mk = getelementptr [4 x i8], ptr %.sroa.0394.0, i64 %.0179556 ; 3 uses
  %i.ml = getelementptr [4 x i8], ptr %.sroa.0394.0, i64 %.1180.lcssa ; 3 uses
  %xtraiter785 = and i64 %i.mi, 1
  %i.mm = and i64 %i.mh, 9223372036854775806
  %i.mn = icmp eq i64 %i.mm, 2
  br i1 %i.mn, label %.epil.preheader784, label %.lr.ph550.new

.lr.ph550.new:                                    ; preds = %.lr.ph550
  %unroll_iter789 = and i64 %i.mi, 4611686018427387902
  br label %bb.al

._crit_edge551.loopexit.unr-lcssa:                ; preds = %bb.al
  %lcmp.mod787.not = icmp eq i64 %xtraiter785, 0
  br i1 %lcmp.mod787.not, label %._crit_edge551, label %.epil.preheader784

.epil.preheader784:                               ; preds = %._crit_edge551.loopexit.unr-lcssa, %.lr.ph550
  %.0192548.epil.init = phi i64 [ 0, %.lr.ph550 ], [ %i.ne, %._crit_edge551.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod788 = trunc i64 %i.mi to i1
  tail call void @llvm.assume(i1 %lcmp.mod788)
  %i.mo = getelementptr [4 x i8], ptr %i.mk, i64 %.0192548.epil.init ; 2 uses
  %i.mp = xor i64 %.0192548.epil.init, -1
  %i.mq = getelementptr [4 x i8], ptr %i.ml, i64 %i.mp ; 2 uses
  %i.mr = load i32, ptr %i.mo, align 4, !tbaa !104
  %i.ms = load i32, ptr %i.mq, align 4, !tbaa !104
  store i32 %i.ms, ptr %i.mo, align 4, !tbaa !104
  store i32 %i.mr, ptr %i.mq, align 4, !tbaa !104
  br label %._crit_edge551

._crit_edge551:                                   ; preds = %.epil.preheader784, %._crit_edge551.loopexit.unr-lcssa, %._crit_edge546
  br i1 %i.lg, label %bb.an, label %bb.am

bb.al:                                            ; preds = %bb.al, %.lr.ph550.new
  %.0192548 = phi i64 [ 0, %.lr.ph550.new ], [ %i.ne, %bb.al ] ; 5 uses
  %niter790 = phi i64 [ 0, %.lr.ph550.new ], [ %niter790.next.1, %bb.al ]
  %i.mt = getelementptr [4 x i8], ptr %i.mk, i64 %.0192548 ; 2 uses
  %i.mu = xor i64 %.0192548, -1
  %i.mv = getelementptr [4 x i8], ptr %i.ml, i64 %i.mu ; 2 uses
  %i.mw = load i32, ptr %i.mt, align 4, !tbaa !104
  %i.mx = load i32, ptr %i.mv, align 4, !tbaa !104
  store i32 %i.mx, ptr %i.mt, align 4, !tbaa !104
  store i32 %i.mw, ptr %i.mv, align 4, !tbaa !104
  %i.my = getelementptr [4 x i8], ptr %i.mk, i64 %.0192548
  %i.mz = getelementptr i8, ptr %i.my, i64 4      ; 2 uses
  %i.na = xor i64 %.0192548, -2
  %i.nb = getelementptr [4 x i8], ptr %i.ml, i64 %i.na ; 2 uses
  %i.nc = load i32, ptr %i.mz, align 4, !tbaa !104
  %i.nd = load i32, ptr %i.nb, align 4, !tbaa !104
  store i32 %i.nd, ptr %i.mz, align 4, !tbaa !104
  store i32 %i.nc, ptr %i.nb, align 4, !tbaa !104
  %i.ne = add nuw nsw i64 %.0192548, 2            ; 2 uses
  %niter790.next.1 = add i64 %niter790, 2         ; 2 uses
  %niter790.ncmp.1 = icmp eq i64 %niter790.next.1, %unroll_iter789
  br i1 %niter790.ncmp.1, label %._crit_edge551.loopexit.unr-lcssa, label %bb.al, !llvm.loop !322

bb.am:                                            ; preds = %._crit_edge551
  %i.nf = getelementptr inbounds [8 x i8], ptr %i.kp, i64 %.sroa.8339.0553
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !152
  br label %bb.an

bb.an:                                            ; preds = %._crit_edge551, %bb.am
  %.sink = phi double [ %i.ng, %bb.am ], [ 0.000000e+00, %._crit_edge551 ]
  %i.nh = getelementptr inbounds [8 x i8], ptr %.sroa.0365.0, i64 %.pre-phi
  store double %.sink, ptr %i.nh, align 8, !tbaa !152
  %i.ni = icmp sgt i32 %.0196, %.0204595
  br i1 %i.ni, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.nj = getelementptr inbounds [4 x i8], ptr %.sroa.0405.0455, i64 %.pre-phi ; 2 uses
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !104
  %i.nl = zext i32 %i.nk to i64
  %.not214 = icmp eq i64 %indvars.iv628, %i.nl
  br i1 %.not214, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.nm = getelementptr inbounds [4 x i8], ptr %.sroa.0382.0472, i64 %.0183555
  store i32 %.0196, ptr %i.nm, align 4, !tbaa !104
  store i32 %i.kn, ptr %i.nj, align 4, !tbaa !104
  %i.nn = add nsw i64 %.0183555, 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %.2185 = phi i64 [ %.0183555, %bb.an ], [ %i.nn, %bb.ap ], [ %.0183555, %bb.ao ] ; 3 uses
  %i.no = add nsw i64 %.sroa.8339.0553, 1         ; 2 uses
  %i.np = icmp sge i64 %i.no, %.sink.i            ; 2 uses
  %.not510 = select i1 %i.np, i1 %spec.select, i1 false
  br i1 %.not510, label %.thread491, label %bb.af, !llvm.loop !323

.thread491:                                       ; preds = %bb.aq
  %i.nq = add nsw i64 %.1180.lcssa, -1            ; 2 uses
  %i.nr = icmp sgt i64 %.1180.lcssa, 0            ; 4 uses
  br i1 %i.nr, label %.lr.ph570, label %._crit_edge571

.lr.ph570:                                        ; preds = %.thread491
  %i.ns = load ptr, ptr %i.kb, align 8, !tbaa !161 ; 8 uses
  %i.nt = load ptr, ptr %i.kc, align 8, !tbaa !162 ; 11 uses
  %i.nu = load ptr, ptr %i.au, align 8, !tbaa !145 ; 2 uses
  %i.nv = icmp eq ptr %i.nu, null
  %i.nw = load ptr, ptr %i.kd, align 8, !tbaa !232
  %i.nx = load ptr, ptr %i.ba, align 8, !tbaa !160 ; 6 uses
  %i.ny = icmp eq ptr %i.nx, null                 ; 3 uses
  %i.nz = load ptr, ptr %i.ka, align 8, !tbaa !78
  br label %bb.ar

._crit_edge571:                                   ; preds = %.loopexit, %.thread491
  %.4187.lcssa = phi i64 [ %.2185, %.thread491 ], [ %.7190, %.loopexit ] ; 9 uses
  %.not726 = icmp sge i32 %.0204595, %.sroa.speculated432 ; 2 uses
  br i1 %.not726, label %bb.bk, label %bb.bg

bb.ar:                                            ; preds = %.lr.ph570, %.loopexit
  %i.oa = phi ptr [ %i.nx, %.lr.ph570 ], [ %i.ov, %.loopexit ] ; 3 uses
  %.4187569 = phi i64 [ %.2185, %.lr.ph570 ], [ %.7190, %.loopexit ] ; 6 uses
  %.0191568 = phi i64 [ %i.nq, %.lr.ph570 ], [ %i.ua, %.loopexit ] ; 3 uses
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0394.0, i64 %.0191568
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !104
  %i.od = sext i32 %i.oc to i64                   ; 7 uses
  %i.oe = getelementptr inbounds [4 x i8], ptr %i.nu, i64 %i.od ; 7 uses
  br i1 %i.nv, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  br i1 %i.ny, label %bb.at, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i
end_hunk_1
