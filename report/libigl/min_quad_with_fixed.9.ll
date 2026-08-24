Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min_quad_with_fixed.9?download=true
inline.NumInlined: 35072
inline.NumDeleted: 18954
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 112
loop-unroll.NumUnrolled: 163
begin_hunk_0_@_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEEvRKT_RKfPf:bb.a

.preheader.i.i.i.i.i.i.i.i15:                     ; preds = %.preheader.i.i.i.i.i.i.i.i15.preheader, %._crit_edge.i.i.i.i.i.i.i.i
  %.0810.i.i.i.i.i.i.i.i = phi i64 [ %i.rw, %._crit_edge.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i.i.i15.preheader ] ; 3 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i = mul i64 %.0810.i.i.i.i.i.i.i.i, 12
  %i.rb = getelementptr i8, ptr %i.ai, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0810.i.i.i.i.i.i.i.i ; 4 uses
  %brmerge = select i1 %min.iters.check173, i1 true, i1 %conflict.rdx171
  br i1 %brmerge, label %scalar.ph172.preheader, label %vector.ph174

vector.ph174:                                     ; preds = %.preheader.i.i.i.i.i.i.i.i15
  %i.rd = load float, ptr %i.rc, align 4, !tbaa !12, !alias.scope !1210
  %broadcast.splatinsert180 = insertelement <4 x float> poison, float %i.rd, i64 0
  %broadcast.splat181 = shufflevector <4 x float> %broadcast.splatinsert180, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph174
  %index177 = phi i64 [ 0, %vector.ph174 ], [ %index.next184, %vector.body176 ] ; 3 uses
  %i.re = getelementptr [4 x i8], ptr %i.rb, i64 %index177 ; 3 uses
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index177 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 16
  %wide.load178 = load <4 x float>, ptr %i.rf, align 8, !tbaa !12, !alias.scope !1213
  %wide.load179 = load <4 x float>, ptr %i.rg, align 8, !tbaa !12, !alias.scope !1213
  %i.rh = fmul <4 x float> %wide.load178, %broadcast.splat181
  %i.ri = fmul <4 x float> %wide.load179, %broadcast.splat181
  %i.rj = getelementptr i8, ptr %i.re, i64 16     ; 2 uses
  %wide.load182 = load <4 x float>, ptr %i.re, align 4, !tbaa !12, !alias.scope !1215, !noalias !1217
  %wide.load183 = load <4 x float>, ptr %i.rj, align 4, !tbaa !12, !alias.scope !1215, !noalias !1217
  %i.rk = fsub <4 x float> %wide.load182, %i.rh
  %i.rl = fsub <4 x float> %wide.load183, %i.ri
  store <4 x float> %i.rk, ptr %i.re, align 4, !tbaa !12, !alias.scope !1215, !noalias !1217
  store <4 x float> %i.rl, ptr %i.rj, align 4, !tbaa !12, !alias.scope !1215, !noalias !1217
  %index.next184 = add nuw i64 %index177, 8       ; 2 uses
  %i.rm = icmp eq i64 %index.next184, %n.vec175
  br i1 %i.rm, label %middle.block185, label %vector.body176, !llvm.loop !1218

middle.block185:                                  ; preds = %vector.body176
  br i1 %cmp.n186, label %._crit_edge.i.i.i.i.i.i.i.i, label %scalar.ph172.preheader

scalar.ph172.preheader:                           ; preds = %.preheader.i.i.i.i.i.i.i.i15, %middle.block185
  %.09.i.i.i.i.i.i.i.i.ph = phi i64 [ %n.vec175, %middle.block185 ], [ 0, %.preheader.i.i.i.i.i.i.i.i15 ] ; 5 uses
  br i1 %lcmp.mod231.not.not, label %scalar.ph172.prol, label %scalar.ph172.prol.loopexit

scalar.ph172.prol:                                ; preds = %scalar.ph172.preheader
  %i.rn = getelementptr [4 x i8], ptr %i.rb, i64 %.09.i.i.i.i.i.i.i.i.ph ; 2 uses
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.09.i.i.i.i.i.i.i.i.ph
  %i.rp = load float, ptr %i.ro, align 8, !tbaa !12
  %i.rq = load float, ptr %i.rc, align 4, !tbaa !12
  %i.rr = fmul float %i.rp, %i.rq
  %i.rs = load float, ptr %i.rn, align 4, !tbaa !12
  %i.rt = fsub float %i.rs, %i.rr
  store float %i.rt, ptr %i.rn, align 4, !tbaa !12
  %i.ru = or disjoint i64 %.09.i.i.i.i.i.i.i.i.ph, 1
  br label %scalar.ph172.prol.loopexit

scalar.ph172.prol.loopexit:                       ; preds = %scalar.ph172.prol, %scalar.ph172.preheader
  %.09.i.i.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.ph, %scalar.ph172.preheader ], [ %i.ru, %scalar.ph172.prol ]
  %i.rv = icmp eq i64 %i.qz, %.09.i.i.i.i.i.i.i.i.ph
  br i1 %i.rv, label %._crit_edge.i.i.i.i.i.i.i.i, label %scalar.ph172

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %scalar.ph172.prol.loopexit, %scalar.ph172, %middle.block185
  %i.rw = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.rw, %i.af
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi3ELi1EEEEEKNS1_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS_3MapINS2_IfLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i15, !llvm.loop !1219

scalar.ph172:                                     ; preds = %scalar.ph172.prol.loopexit, %scalar.ph172
  %.09.i.i.i.i.i.i.i.i = phi i64 [ %i.sm, %scalar.ph172 ], [ %.09.i.i.i.i.i.i.i.i.unr, %scalar.ph172.prol.loopexit ] ; 4 uses
  %i.rx = getelementptr [4 x i8], ptr %i.rb, i64 %.09.i.i.i.i.i.i.i.i ; 2 uses
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.09.i.i.i.i.i.i.i.i
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !12
  %i.sa = load float, ptr %i.rc, align 4, !tbaa !12
  %i.sb = fmul float %i.rz, %i.sa
  %i.sc = load float, ptr %i.rx, align 4, !tbaa !12
  %i.sd = fsub float %i.sc, %i.sb
  store float %i.sd, ptr %i.rx, align 4, !tbaa !12
  %i.se = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.sf = getelementptr [4 x i8], ptr %i.rb, i64 %i.se ; 2 uses
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.se
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !12
  %i.si = load float, ptr %i.rc, align 4, !tbaa !12
  %i.sj = fmul float %i.sh, %i.si
  %i.sk = load float, ptr %i.sf, align 4, !tbaa !12
  %i.sl = fsub float %i.sk, %i.sj
  store float %i.sl, ptr %i.sf, align 4, !tbaa !12
  %i.sm = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i16.1 = icmp eq i64 %i.sm, %i.ag
  br i1 %exitcond.not.i.i.i.i.i.i.i.i16.1, label %._crit_edge.i.i.i.i.i.i.i.i, label %scalar.ph172, !llvm.loop !1220

_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi3ELi1EEEEEKNS1_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS_3MapINS2_IfLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEEmLERKf.exit

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEEmLERKf.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i
  %lcmp.mod235.not = icmp eq i64 %xtraiter233, 0
  br i1 %lcmp.mod235.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEEmLERKf.exit, label %.preheader.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.epil.preheader:            ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEEmLERKf.exit.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.preheader
  %.0810.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader ], [ %i.ac, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEEmLERKf.exit.loopexit.unr-lcssa ]
  %lcmp.mod236 = icmp ne i64 %xtraiter233, 0
  tail call void @llvm.assume(i1 %lcmp.mod236)
  br label %.preheader.i.i.i.i.i.i.epil

.preheader.i.i.i.i.i.i.epil:                      ; preds = %.preheader.i.i.i.i.i.i.epil, %.preheader.i.i.i.i.i.i.epil.preheader
  %.0810.i.i.i.i.i.i.epil = phi i64 [ %i.sq, %.preheader.i.i.i.i.i.i.epil ], [ %.0810.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter234 = phi i64 [ %epil.iter234.next, %.preheader.i.i.i.i.i.i.epil ], [ 0, %.preheader.i.i.i.i.i.i.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.epil = mul i64 %.0810.i.i.i.i.i.i.epil, 12
  %i.sn = getelementptr i8, ptr %i.g, i64 %.idx.i.i.i.i.i.i.i.i.i.epil ; 2 uses
  %i.so = load float, ptr %i.sn, align 4, !tbaa !12
  %i.sp = fmul float %i.e, %i.so
  store float %i.sp, ptr %i.sn, align 4, !tbaa !12
  %i.sq = add nuw nsw i64 %.0810.i.i.i.i.i.i.epil, 1
  %epil.iter234.next = add i64 %epil.iter234, 1   ; 2 uses
  %epil.iter234.cmp.not = icmp eq i64 %epil.iter234.next, %xtraiter233
  br i1 %epil.iter234.cmp.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEEmLERKf.exit, label %.preheader.i.i.i.i.i.i.epil, !llvm.loop !1221

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEEmLERKf.exit: ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEEmLERKf.exit.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.epil, %bb.b, %bb.c, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi3ELi1EEEEEKNS1_IKNS2_IfLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS_3MapINS2_IfLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26triangular_solver_selectorIKNS_5BlockIKNS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEENS2_INS3_IfLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1ELi2ELi0ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !141  ; 4 uses
  %i.c = icmp ugt i64 %i.b, 4611686018427387903
  br i1 %i.c, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.d, align 8, !tbaa !776
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #15
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !1152   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit
  %i.f = shl nuw i64 %i.b, 2                      ; 2 uses
  %i.g = icmp samesign ult i64 %i.b, 32769
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw nsw i64 %i.f, 15
  %i.i = alloca i8, i64 %i.h, align 16            ; 2 uses
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.e:                                             ; preds = %bb.c
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.f) #16 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !776
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #15
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.e, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit, %bb.d
  %i.m = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit ], [ %i.i, %bb.d ], [ %i.j, %bb.e ] ; 2 uses
  %i.n = phi ptr [ %i.e, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit ], [ %i.i, %bb.d ], [ %i.j, %bb.e ]
  %i.o = icmp samesign ugt i64 %i.b, 32768        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !141
  %i.r = load ptr, ptr %0, align 8, !tbaa !1222
  invoke void @_ZN5Eigen8internal23triangular_solve_vectorIfflLi1ELi2ELb0ELi0EE3runElPKflPf(i64 noundef %i.q, ptr noundef %i.r, i64 noundef 3, ptr noundef nonnull %i.n)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  br i1 %i.o, label %bb.h, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.m) #14
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit: ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %i.s

bb.i:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  br i1 %i.o, label %bb.j, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit28

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %i.m) #14
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit28

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit28: ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEEE14computeInPlaceEv(ptr noundef nonnull align 16 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Eigen::VectorBlock.4460", align 8 ; 8 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %2 = alloca %"class.Eigen::VectorBlock.4393", align 8 ; 13 uses
  %3 = alloca %"class.Eigen::Block.4407", align 8 ; 10 uses
  %4 = alloca %"class.Eigen::VectorBlock.4393", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %5 = load <2 x float>, ptr %0, align 16, !tbaa !12 ; 2 uses
  %6 = fmul <2 x float> %5, %5                    ; 2 uses
  %shift = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %6, %shift
  %7 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %8 = tail call noundef float @llvm.sqrt.f32(float %7) ; 4 uses
  store float %8, ptr %i.c, align 16, !tbaa !12
  store float %8, ptr %i.b, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load <2 x float>, ptr %i.d, align 8, !tbaa !12 ; 2 uses
  %i.f = fmul <2 x float> %i.e, %i.e              ; 2 uses
  %shift154 = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop155 = fadd <2 x float> %i.f, %shift154
  %9 = extractelement <2 x float> %foldExtExtBinop155, i64 0
  %10 = tail call noundef float @llvm.sqrt.f32(float %9) ; 4 uses
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %10, ptr %11, align 4, !tbaa !12
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float %10, ptr %12, align 4, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = fcmp olt float %8, %10
  %i.k = select i1 %i.j, float %10, float %8
  %i.l = fmul float %i.k, f0x34000000             ; 2 uses
  %i.m = fmul float %i.l, %i.l
  %i.n = fmul float %i.m, 5.000000e-01
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store i64 2, ptr %i.o, align 8, !tbaa !115
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store float 0.000000e+00, ptr %i.p, align 16, !tbaa !114
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.6107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.7108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.8109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.5100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.6101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.7102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.8103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 88
  br label %bb.c

bb.b:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store i32 0, ptr %i.ai, align 8, !tbaa !155
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %i.aj, align 4, !tbaa !155
  %i.ak = load i64, ptr %i.i, align 16, !tbaa !156
  %sext80 = shl i64 %i.ak, 32
  %i.al = ashr exact i64 %sext80, 30
  %i.am = getelementptr inbounds i8, ptr %i.ai, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !155
  store i32 %i.an, ptr %i.ai, align 8, !tbaa !155
  store i32 0, ptr %i.am, align 4, !tbaa !155
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !156
  %sext80.1 = shl i64 %i.ap, 32
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ar = ashr exact i64 %sext80.1, 30
  %i.as = getelementptr inbounds i8, ptr %i.ai, i64 %i.ar ; 2 uses
  %i.at = load i32, ptr %i.aq, align 4, !tbaa !155
  %i.au = load i32, ptr %i.as, align 4, !tbaa !155
  store i32 %i.au, ptr %i.aq, align 4, !tbaa !155
  store i32 %i.at, ptr %i.as, align 4, !tbaa !155
  %i.av = and i64 %.1, 1
  %.not = icmp eq i64 %i.av, 0
  %i.aw = select i1 %.not, i64 1, i64 -1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.aw, ptr %i.ax, align 16, !tbaa !1224
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %i.ay, align 8, !tbaa !91
  ret void

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.az = phi i1 [ true, %bb.a ], [ false, %._crit_edge ] ; 3 uses
  %.073148 = phi i64 [ 0, %bb.a ], [ 1, %._crit_edge ] ; 16 uses
  %.075147 = phi i64 [ 0, %bb.a ], [ %.1, %._crit_edge ] ; 2 uses
  %i.ba = sub nuw nsw i64 2, %.073148             ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.073148 ; 4 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !12 ; 3 uses
  br i1 %i.az, label %.preheader.i.i.i.i.epil.preheader, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi1ELi2ELi1ELi1ELi2EEELi1ELin1ELb0EEEE8maxCoeffIlEEfPT_.exit

.preheader.i.i.i.i.epil.preheader:                ; preds = %bb.c
  call void @llvm.assume(i1 %i.az)
  %i.bd = getelementptr i8, ptr %i.bb, i64 4
  %i.be = load float, ptr %i.bd, align 4, !tbaa !12 ; 2 uses
  %i.bf = fcmp ogt float %i.be, %i.bc             ; 2 uses
  %.sroa.7.1.i.i.epil = select i1 %i.bf, float %i.be, float %i.bc
  %.sroa.5.1.i.i.epil = zext i1 %i.bf to i64
  br label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi1ELi2ELi1ELi1ELi2EEELi1ELin1ELb0EEEE8maxCoeffIlEEfPT_.exit

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi1ELi2ELi1ELi1ELi2EEELi1ELin1ELb0EEEE8maxCoeffIlEEfPT_.exit: ; preds = %.preheader.i.i.i.i.epil.preheader, %bb.c
  %.sroa.7.2.i.i = phi float [ %i.bc, %bb.c ], [ %.sroa.7.1.i.i.epil, %.preheader.i.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.5.2.i.i = phi i64 [ 0, %bb.c ], [ %.sroa.5.1.i.i.epil, %.preheader.i.i.i.i.epil.preheader ] ; 2 uses
  %i.bg = add nsw i64 %.sroa.5.2.i.i, %.073148    ; 4 uses
  %i.bh = load i64, ptr %i.o, align 8, !tbaa !115
  %i.bi = icmp eq i64 %i.bh, 2
  br i1 %i.bi, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi1ELi2ELi1ELi1ELi2EEELi1ELin1ELb0EEEE8maxCoeffIlEEfPT_.exit
  %i.bj = fmul float %.sroa.7.2.i.i, %.sroa.7.2.i.i
  %i.bk = uitofp nneg i64 %i.ba to float
  %i.bl = fmul float %i.n, %i.bk
  %i.bm = fcmp olt float %i.bj, %i.bl
  br i1 %i.bm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %.073148, ptr %i.o, align 8, !tbaa !115
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi1ELi2ELi1ELi1ELi2EEELi1ELin1ELb0EEEE8maxCoeffIlEEfPT_.exit
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.073148
  store i64 %i.bg, ptr %i.bn, align 8, !tbaa !156
  %.not81 = icmp eq i64 %.sroa.5.2.i.i, 0
  %.pre = shl nuw nsw i64 %.073148, 3             ; 3 uses
  br i1 %.not81, label %._crit_edge151, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %.pre ; 2 uses
  %.idx.i.i.i.i83 = shl nsw i64 %i.bg, 3
  %i.bp = getelementptr inbounds i8, ptr %0, i64 %.idx.i.i.i.i83 ; 2 uses
  %i.bq = load <2 x float>, ptr %i.bo, align 8, !tbaa !12
  %i.br = load <2 x float>, ptr %i.bp, align 8, !tbaa !12
  store <2 x float> %i.br, ptr %i.bo, align 8, !tbaa !12
  store <2 x float> %i.bq, ptr %i.bp, align 8, !tbaa !12
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bg ; 2 uses
  %i.bt = load float, ptr %i.bb, align 4, !tbaa !12
  %i.bu = load float, ptr %i.bs, align 4, !tbaa !12
  store float %i.bu, ptr %i.bb, align 4, !tbaa !12
  store float %i.bt, ptr %i.bs, align 4, !tbaa !12
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.073148 ; 2 uses
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.bg ; 2 uses
  %i.bx = load float, ptr %i.bv, align 4, !tbaa !12
  %i.by = load float, ptr %i.bw, align 4, !tbaa !12
  store float %i.by, ptr %i.bv, align 4, !tbaa !12
  store float %i.bx, ptr %i.bw, align 4, !tbaa !12
  %i.bz = add nsw i64 %.075147, 1
  br label %._crit_edge151

._crit_edge151:                                   ; preds = %bb.f, %bb.g
  %.1 = phi i64 [ %i.bz, %bb.g ], [ %.075147, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %.pre ; 4 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %.073148 ; 2 uses
  store ptr %i.cb, ptr %2, align 8, !tbaa !1225, !alias.scope !1227
  store i64 %i.ba, ptr %i.q, align 8, !tbaa !141, !alias.scope !1227
  store ptr %i.ca, ptr %i.r, align 8
  store ptr %0, ptr %.sroa.5106.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.6107.0..sroa_idx, align 8
  store i64 %.073148, ptr %.sroa.7108.0..sroa_idx, align 8
  store i64 2, ptr %.sroa.8109.0..sroa_idx, align 8
  store i64 %.073148, ptr %i.s, align 8, !tbaa !141, !alias.scope !1227
  store i64 2, ptr %i.t, align 8, !tbaa !1230, !alias.scope !1227
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.073148 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.cd = xor i64 %.073148, 1                     ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store ptr %i.ce, ptr %1, align 8, !tbaa !1240
  store i64 %i.cd, ptr %i.u, align 8, !tbaa !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.v, ptr noundef nonnull align 8 dereferenceable(96) %2, i64 96, i1 false)
  store i64 1, ptr %i.w, align 8, !tbaa !141
  store i64 2, ptr %i.x, align 8, !tbaa !1242
  call void @_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELi2ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RfSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.cc, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.cf = load float, ptr %i.a, align 4, !tbaa !12 ; 2 uses
  %i.cg = getelementptr [4 x i8], ptr %0, i64 %.073148 ; 3 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 %.pre
  store float %i.cf, ptr %i.ch, align 4, !tbaa !12
  %i.ci = call noundef float @llvm.fabs.f32(float %i.cf) ; 2 uses
  %i.cj = load float, ptr %i.p, align 16, !tbaa !114
  %i.ck = fcmp ogt float %i.ci, %i.cj
  br i1 %i.ck, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge151
  store float %i.ci, ptr %i.p, align 16, !tbaa !114
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge151
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.cl = add nuw nsw i64 %.073148, 1             ; 8 uses
  %.idx.i.i.i.i85 = shl nuw nsw i64 %i.cl, 3
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx.i.i.i.i85
  store ptr %i.cm, ptr %3, align 8, !tbaa !1247, !alias.scope !1249
  store i64 %i.ba, ptr %i.y, align 8, !tbaa !141, !alias.scope !1249
  store i64 %i.cd, ptr %i.z, align 8, !tbaa !141, !alias.scope !1249
  store ptr %0, ptr %i.aa, align 8, !tbaa !1252, !alias.scope !1249
  store i64 %.073148, ptr %i.ab, align 8, !tbaa !141, !alias.scope !1249
  store i64 %i.cl, ptr %i.ac, align 8, !tbaa !141, !alias.scope !1249
  store i64 2, ptr %i.ad, align 8, !tbaa !1253, !alias.scope !1249
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cl
  store ptr %i.cn, ptr %4, align 8, !tbaa !1225, !alias.scope !1256
  store i64 %i.cd, ptr %i.ae, align 8, !tbaa !141, !alias.scope !1256
  store ptr %i.ca, ptr %i.af, align 8
  store ptr %0, ptr %.sroa.5100.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.6101.0..sroa_idx, align 8
  store i64 %.073148, ptr %.sroa.7102.0..sroa_idx, align 8
  store i64 2, ptr %.sroa.8103.0..sroa_idx, align 8
  store i64 %i.cl, ptr %i.ag, align 8, !tbaa !141, !alias.scope !1256
  store i64 2, ptr %i.ah, align 8, !tbaa !1230, !alias.scope !1256
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.cl
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Li2ELi1ELb1EEELin1EEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.cc, ptr noundef nonnull %i.co)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
end_hunk_0
