Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/per_face_normals?download=true
inline.NumInlined: 7480
inline.NumDeleted: 3474
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_16per_face_normalsIN5Eigen6MatrixIfLin1ELin1ELi1ELin1ELin1EEENS9_IjLin1ELin1ELi1ELin1ELin1EEENS9_IfLi3ELi1ELi0ELi3ELi1EEESA_EEvRKNS8_10MatrixBaseIT_EERKNSD_IT0_EERKNSD_IT1_EERNS8_15PlainObjectBaseIT2_EEEUliE_EEbSE_RKSI_mEUlmE_ZNS6_IiSU_EEbSE_SW_mEUlimE_SX_EEbSE_SW_RKSM_RKSR_mEUliimE_RiRKiRmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:bb.a
  %.not.i.i.i33 = icmp eq ptr %i.bt, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30, !llvm.loop !1372

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35: ; preds = %.lr.ph.i.i.i30, %middle.block75, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.bb, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.bm, %middle.block75 ], [ %i.bu, %.lr.ph.i.i.i30 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !184
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = sub i64 %i.bx, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.by) #26
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !180
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !183
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bz, ptr %i.bv, align 8, !tbaa !184
  ret void

bb.g:                                             ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %bb.d, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ca, %bb.g ], [ %i.ae, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i ], [ %i.ae, %bb.d ]
  %i.cc = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.cd = call ptr @__cxa_begin_catch(ptr %i.cc) #23 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #26
  invoke void @__cxa_rethrow() #25
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.cb

bb.k:                                             ; preds = %bb.h
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #27
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi1ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 {
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
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !34
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1373
  %i.i = mul nsw i64 %i.h, 3
  %.not.i = icmp eq i64 %i.f, %i.i
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIfLin1ELin1ELi3ELi1EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !169
  tail call void @free(ptr noundef %i.j) #23
  %i.k = icmp sgt i64 %i.f, 0
  br i1 %i.k, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i64 %i.f, 4611686018427387903
  br i1 %i.l, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !34
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i: ; preds = %bb.e
  %i.n = shl nuw i64 %i.f, 2
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #24 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !34
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.o, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !169
  br label %_ZN5Eigen12DenseStorageIfLin1ELin1ELi3ELi1EE6resizeElll.exit

_ZN5Eigen12DenseStorageIfLin1ELin1ELi3ELi1EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !1373
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl12parallel_forIiZNS_12parallel_forIiZNS_16per_face_normalsIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS4_IjLin1ELi3ELi1ELin1ELi3EEENS4_IfLi3ELi1ELi0ELi3ELi1EEES5_EEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERNS3_15PlainObjectBaseIT2_EEEUliE_EEbS9_RKSD_mEUlmE_ZNS1_IiSP_EEbS9_SR_mEUlimE_SS_EEbS9_SR_RKSH_RKSM_m(i32 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %4) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %5 = alloca %class.anon.1170, align 8           ; 6 uses
  %6 = alloca %"class.std::vector", align 8       ; 12 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !45
  %i.e = icmp eq i32 %0, 0
  br i1 %i.e, label %.loopexit58, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZN3igl19default_num_threadsEj(i32 noundef 0) ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 3 uses
  %i.h = sext i32 %0 to i64
  %i.i = icmp ule i64 %4, %i.h
  %i.j = icmp ugt i32 %i.f, 1
  %or.cond.not = and i1 %i.j, %i.i
  br i1 %or.cond.not, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i, label %.preheader57

.preheader57:                                     ; preds = %bb.b
  %i.k = icmp sgt i32 %0, 0
  br i1 %i.k, label %.lr.ph, label %.loopexit58

.lr.ph:                                           ; preds = %.preheader57
  %i.l = load ptr, ptr %2, align 8, !tbaa !1374, !nonnull !163, !align !164 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1376, !nonnull !163
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1378, !nonnull !163
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !168
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !169, !noalias !1379 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1382, !nonnull !163, !align !164
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !169, !noalias !1383
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN3igl12parallel_forIiZNS_16per_face_normalsIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS3_IjLin1ELi3ELi1ELin1ELi3EEENS3_IfLi3ELi1ELi0ELi3ELi1EEES4_EEvRKNS2_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERNS2_15PlainObjectBaseIT2_EEEUliE_EEbS8_RKSC_mENKUlimE_clEim.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZZN3igl12parallel_forIiZNS_16per_face_normalsIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS3_IjLin1ELi3ELi1ELin1ELi3EEENS3_IfLi3ELi1ELi0ELi3ELi1EEES4_EEvRKNS2_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERNS2_15PlainObjectBaseIT2_EEEUliE_EEbS8_RKSC_mENKUlimE_clEim.exit ] ; 2 uses
  %.idx.i.i.i.i.i = mul nuw nsw i64 %indvars.iv, 12 ; 2 uses
  %i.v = getelementptr i8, ptr %i.p, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !45
  %i.y = zext i32 %i.x to i64
  %.idx.i.i.i.i.i.i = mul nuw nsw i64 %i.y, 12
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i.i.i.i.i.i ; 2 uses
  %i.aa = load i32, ptr %i.v, align 4, !tbaa !45
  %i.ab = zext i32 %i.aa to i64
  %.idx.i.i.i.i9.i.i = mul nuw nsw i64 %i.ab, 12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i.i.i.i9.i.i ; 2 uses
  %i.ad = load float, ptr %i.z, align 4, !tbaa !9
  %i.ae = load float, ptr %i.ac, align 4, !tbaa !9
  %i.af = getelementptr i8, ptr %i.z, i64 4
  %i.ag = getelementptr i8, ptr %i.ac, i64 4
  %i.ah = getelementptr i8, ptr %i.v, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !45
  %i.aj = zext i32 %i.ai to i64
  %.idx.i.i.i.i11.i.i = mul nuw nsw i64 %i.aj, 12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i.i.i.i11.i.i ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !9
  %i.am = getelementptr i8, ptr %i.ak, i64 4
  %i.an = load <2 x float>, ptr %i.af, align 4, !tbaa !9 ; 2 uses
  %i.ao = load <2 x float>, ptr %i.ag, align 4, !tbaa !9 ; 3 uses
  %i.ap = fsub <2 x float> %i.an, %i.ao           ; 2 uses
  %i.aq = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ar = insertelement <2 x float> %i.aq, float %i.ad, i64 1
  %i.as = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.at = insertelement <2 x float> %i.as, float %i.ae, i64 1 ; 2 uses
  %i.au = fsub <2 x float> %i.ar, %i.at           ; 2 uses
  %i.av = load <2 x float>, ptr %i.am, align 4, !tbaa !9 ; 2 uses
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ax = insertelement <2 x float> %i.aw, float %i.al, i64 1
  %i.ay = fsub <2 x float> %i.ax, %i.at           ; 2 uses
  %i.az = fsub <2 x float> %i.av, %i.ao           ; 2 uses
  %i.ba = fneg <2 x float> %i.az
  %i.bb = fmul <2 x float> %i.au, %i.ba
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.ay, <2 x float> %i.bb) ; 5 uses
  %i.bd = extractelement <2 x float> %i.ay, i64 1
  %i.be = fneg float %i.bd
  %i.bf = extractelement <2 x float> %i.ap, i64 0
  %i.bg = fmul float %i.bf, %i.be
  %i.bh = extractelement <2 x float> %i.au, i64 1
  %i.bi = extractelement <2 x float> %i.az, i64 0
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bi, float %i.bg) ; 4 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i.i.i.i ; 5 uses
  %8 = extractelement <2 x float> %i.bc, i64 0
  store float %8, ptr %7, align 4, !tbaa !9
  %i.bk = getelementptr i8, ptr %7, i64 4         ; 2 uses
  %9 = extractelement <2 x float> %i.bc, i64 1
  store float %9, ptr %i.bk, align 4, !tbaa !9
  %i.bl = getelementptr i8, ptr %7, i64 8         ; 2 uses
  store float %i.bj, ptr %i.bl, align 4, !tbaa !9
  %i.bm = fmul <2 x float> %i.bc, %i.bc           ; 2 uses
  %i.bn = fmul float %i.bj, %i.bj
  %i.bo = extractelement <2 x float> %i.bm, i64 1
  %i.bp = fadd float %i.bn, %i.bo
  %i.bq = extractelement <2 x float> %i.bm, i64 0
  %i.br = fadd float %i.bq, %i.bp                 ; 2 uses
  %i.bs = fcmp oeq float %i.br, 0.000000e+00
  br i1 %i.bs, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bt = load ptr, ptr %i.u, align 8, !tbaa !1386, !nonnull !163 ; 3 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !9
  store float %i.bu, ptr %7, align 4, !tbaa !9
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !9
  store float %i.bw, ptr %i.bk, align 4, !tbaa !9
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.by = load float, ptr %i.bx, align 4, !tbaa !9
  br label %_ZZN3igl12parallel_forIiZNS_16per_face_normalsIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS3_IjLin1ELi3ELi1ELin1ELi3EEENS3_IfLi3ELi1ELi0ELi3ELi1EEES4_EEvRKNS2_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERNS2_15PlainObjectBaseIT2_EEEUliE_EEbS8_RKSC_mENKUlimE_clEim.exit

bb.e:                                             ; preds = %bb.c
  %i.bz = tail call noundef float @llvm.sqrt.f32(float %i.br) ; 2 uses
  %i.ca = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = fdiv <2 x float> %i.bc, %i.cb
  store <2 x float> %i.cc, ptr %7, align 4, !tbaa !9
  %i.cd = fdiv float %i.bj, %i.bz
  br label %_ZZN3igl12parallel_forIiZNS_16per_face_normalsIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS3_IjLin1ELi3ELi1ELin1ELi3EEENS3_IfLi3ELi1ELi0ELi3ELi1EEES4_EEvRKNS2_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERNS2_15PlainObjectBaseIT2_EEEUliE_EEbS8_RKSC_mENKUlimE_clEim.exit

_ZZN3igl12parallel_forIiZNS_16per_face_normalsIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS3_IjLin1ELi3ELi1ELin1ELi3EEENS3_IfLi3ELi1ELi0ELi3ELi1EEES4_EEvRKNS2_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERNS2_15PlainObjectBaseIT2_EEEUliE_EEbS8_RKSC_mENKUlimE_clEim.exit: ; preds = %bb.d, %bb.e
  %storemerge.i.i = phi float [ %i.cd, %bb.e ], [ %i.by, %bb.d ]
  store float %storemerge.i.i, ptr %i.bl, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit58, label %bb.c, !llvm.loop !1387

_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.ce = add nsw i32 %0, 1
  %i.cf = sitofp i32 %i.ce to double
  %i.cg = uitofp i32 %i.f to double
  %i.ch = fdiv double %i.cf, %i.cg
  %i.ci = tail call double @llvm.round.f64(double %i.ch)
  %i.cj = fptosi double %i.ci to i32
  %.sroa.speculated51 = tail call i32 @llvm.smax.i32(i32 %i.cj, i32 1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %2, ptr %5, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.cm = shl nuw nsw i64 %i.g, 3
  %i.cn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cm) #28
          to label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i unwind label %bb.g ; 3 uses

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i
  store ptr %i.cn, ptr %6, align 8, !tbaa !180
  store ptr %i.cn, ptr %i.cl, align 8, !tbaa !183
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.g
  store ptr %i.co, ptr %i.ck, align 8, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %.sroa.speculated47 = tail call i32 @llvm.smin.i32(i32 %0, i32 %.sroa.speculated51)
  store i32 %.sroa.speculated47, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 0, ptr %i.d, align 8, !tbaa !185
  %i.cp = icmp sgt i32 %0, 0
  br i1 %i.cp, label %.lr.ph61, label %._crit_edge.thread

.lr.ph61:                                         ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, %bb.f
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_16per_face_normalsIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS9_IjLin1ELi3ELi1ELin1ELi3EEENS9_IfLi3ELi1ELi0ELi3ELi1EEESA_EEvRKNS8_10MatrixBaseIT_EERKNSD_IT0_EERKNSD_IT1_EERNS8_15PlainObjectBaseIT2_EEEUliE_EEbSE_RKSI_mEUlmE_ZNS6_IiSU_EEbSE_SW_mEUlimE_SX_EEbSE_SW_RKSM_RKSR_mEUliimE_RiS16_RmEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.f unwind label %.loopexit  ; 0 uses

bb.f:                                             ; preds = %.lr.ph61
  %i.cr = load i32, ptr %i.c, align 4, !tbaa !45  ; 3 uses
  store i32 %i.cr, ptr %i.b, align 4, !tbaa !45
  %i.cs = add nsw i32 %i.cr, %.sroa.speculated51
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %0, i32 %i.cs)
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !45
  %i.ct = load i64, ptr %i.d, align 8, !tbaa !185 ; 2 uses
  %i.cu = add i64 %i.ct, 1
  store i64 %i.cu, ptr %i.d, align 8, !tbaa !185
  %i.cv = add i64 %i.ct, 2
  %i.cw = icmp ult i64 %i.cv, %i.g
  %i.cx = icmp slt i32 %i.cr, %0                  ; 2 uses
  %i.cy = select i1 %i.cw, i1 %i.cx, i1 false
  br i1 %i.cy, label %.lr.ph61, label %._crit_edge, !llvm.loop !1388

bb.g:                                             ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit:                                        ; preds = %.lr.ph61
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.p

._crit_edge:                                      ; preds = %bb.f
  br i1 %i.cx, label %bb.i, label %._crit_edge.thread

bb.i:                                             ; preds = %._crit_edge
  %i.da = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_16per_face_normalsIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS9_IjLin1ELi3ELi1ELin1ELi3EEENS9_IfLi3ELi1ELi0ELi3ELi1EEESA_EEvRKNS8_10MatrixBaseIT_EERKNSD_IT0_EERKNSD_IT1_EERNS8_15PlainObjectBaseIT2_EEEUliE_EEbSE_RKSI_mEUlmE_ZNS6_IiSU_EEbSE_SW_mEUlimE_SX_EEbSE_SW_RKSM_RKSR_mEUliimE_RiRKiRmEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %._crit_edge.thread unwind label %.loopexit.split-lp ; 0 uses

._crit_edge.thread:                               ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, %bb.i, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %i.db = load ptr, ptr %6, align 8, !tbaa !187   ; 3 uses
  %i.dc = load ptr, ptr %i.cl, align 8, !tbaa !187 ; 2 uses
  %.not62 = icmp eq ptr %i.db, %i.dc
  br i1 %.not62, label %.preheader.thread, label %.lr.ph65

.preheader.thread:                                ; preds = %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i

.preheader:                                       ; preds = %bb.l
  %.pre = load ptr, ptr %6, align 8, !tbaa !180   ; 4 uses
  %.pre68 = load ptr, ptr %i.cl, align 8, !tbaa !183 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre68
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i

.lr.ph65:                                         ; preds = %._crit_edge.thread, %bb.l
  %.sroa.042.063 = phi ptr [ %i.de, %bb.l ], [ %i.db, %._crit_edge.thread ] ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.042.063, align 8, !tbaa !185
  %.not56 = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %.not56, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.lr.ph65
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.042.063)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %bb.j, %.lr.ph65
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.042.063, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.de, %i.dc
  br i1 %.not, label %.preheader, label %.lr.ph65

bb.m:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.df, %.pre68
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i, !llvm.loop !188

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i:          ; preds = %.preheader, %bb.m
  %.05.i.i.i = phi ptr [ %i.df, %bb.m ], [ %.pre, %.preheader ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %.05.i.i.i, align 8, !tbaa !185
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  call void @_ZSt9terminatev() #27
  unreachable

_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %bb.m, %.preheader.thread, %.preheader
  %i.dg = phi ptr [ %i.db, %.preheader.thread ], [ %.pre, %.preheader ], [ %.pre, %bb.m ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i
  %i.dh = load ptr, ptr %i.ck, align 8, !tbaa !184
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %i.dg to i64
  %i.dk = sub i64 %i.di, %i.dj
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.dk) #26
  br label %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit

_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %.loopexit58

bb.p:                                             ; preds = %bb.k, %bb.h
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.h ], [ %i.dd, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.cz, %bb.g ]
  call void @_ZNSt6vectorISt6threadSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn.pn

.loopexit58:                                      ; preds = %_ZZN3igl12parallel_forIiZNS_16per_face_normalsIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS3_IjLin1ELi3ELi1ELin1ELi3EEENS3_IfLi3ELi1ELi0ELi3ELi1EEES4_EEvRKNS2_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERNS2_15PlainObjectBaseIT2_EEEUliE_EEbS8_RKSC_mENKUlimE_clEim.exit, %.preheader57, %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit, %bb.a
  %.135 = phi i1 [ false, %bb.a ], [ true, %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit ], [ false, %.preheader57 ], [ false, %_ZZN3igl12parallel_forIiZNS_16per_face_normalsIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS3_IjLin1ELi3ELi1ELin1ELi3EEENS3_IfLi3ELi1ELi0ELi3ELi1EEES4_EEvRKNS2_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERNS2_15PlainObjectBaseIT2_EEEUliE_EEbS8_RKSC_mENKUlimE_clEim.exit ]
  ret i1 %.135
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_16per_face_normalsIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS9_IjLin1ELi3ELi1ELin1ELi3EEENS9_IfLi3ELi1ELi0ELi3ELi1EEESA_EEvRKNS8_10MatrixBaseIT_EERKNSD_IT0_EERKNSD_IT1_EERNS8_15PlainObjectBaseIT2_EEEUliE_EEbSE_RKSI_mEUlmE_ZNS6_IiSU_EEbSE_SW_mEUlimE_SX_EEbSE_SW_RKSM_RKSR_mEUliimE_RiS16_RmEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !183  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !184
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 0, ptr %i.b, align 8, !tbaa !189
  %i.e = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_16per_face_normalsIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS8_IjLin1ELi3ELi1ELin1ELi3EEENS8_IfLi3ELi1ELi0ELi3ELi1EEES9_EEvRKNS7_10MatrixBaseIT_EERKNSC_IT0_EERKNSC_IT1_EERNS7_15PlainObjectBaseIT2_EEEUliE_EEbSD_RKSH_mEUlmE_ZNS5_IiST_EEbSD_SV_mEUlimE_SW_EEbSD_SV_RKSL_RKSQ_mEUliimE_iimEEEEEE, i64 16), ptr %i.e, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %4, align 8, !tbaa !185
  store i64 %i.g, ptr %i.f, align 8, !tbaa !191
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_16per_face_normalsIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS9_IjLin1ELi3ELi1ELin1ELi3EEENS9_IfLi3ELi1ELi0ELi3ELi1EEESA_EEvRKNS8_10MatrixBaseIT_EERKNSD_IT0_EERKNSD_IT1_EERNS8_15PlainObjectBaseIT2_EEEUliE_EEbSE_RKSI_mEUlmE_ZNS6_IiSU_EEbSE_SW_mEUlimE_SX_EEbSE_SW_RKSM_RKSR_mEUliimE_RiS16_RmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:bb.a
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check65 = icmp ult i64 %i.bd, 152
  br i1 %min.iters.check65, label %.lr.ph.i.i.i30.preheader79, label %vector.memcheck58

vector.memcheck58:                                ; preds = %.lr.ph.i.i.i30.preheader
  %i.bg = add i64 %i.d, -8
  %i.bh = sub i64 %i.bg, %i.m
  %i.bi = and i64 %i.bh, -8                       ; 2 uses
  %i.bj = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.bi
  %scevgep59 = getelementptr i8, ptr %i.bj, i64 16
  %i.bk = getelementptr i8, ptr %1, i64 %i.bi
  %scevgep60 = getelementptr i8, ptr %i.bk, i64 8
  %bound061 = icmp ult ptr %i.bb, %scevgep60
  %bound162 = icmp ult ptr %1, %scevgep59
  %found.conflict63 = and i1 %bound061, %bound162
  br i1 %found.conflict63, label %.lr.ph.i.i.i30.preheader79, label %vector.ph66

vector.ph66:                                      ; preds = %vector.memcheck58
  %n.vec67 = and i64 %i.bf, 4611686018427387900   ; 3 uses
  %i.bl = shl i64 %n.vec67, 3                     ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bb, i64 %i.bl  ; 2 uses
  %i.bn = getelementptr i8, ptr %1, i64 %i.bl
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %vector.ph66
  %index69 = phi i64 [ 0, %vector.ph66 ], [ %index.next74, %vector.body68 ] ; 2 uses
  %i.bo = shl i64 %index69, 3                     ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.bb, i64 %i.bo ; 2 uses
  %next.gep71 = getelementptr i8, ptr %1, i64 %i.bo ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1403)
  call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  %i.bp = getelementptr i8, ptr %next.gep71, i64 16 ; 2 uses
  %wide.load72 = load <2 x i64>, ptr %next.gep71, align 8, !tbaa !185, !alias.scope !1408, !noalias !1403
  %wide.load73 = load <2 x i64>, ptr %i.bp, align 8, !tbaa !185, !alias.scope !1408, !noalias !1403
  %i.bq = getelementptr i8, ptr %next.gep70, i64 16
  store <2 x i64> %wide.load72, ptr %next.gep70, align 8, !tbaa !185, !alias.scope !1411, !noalias !1408
  store <2 x i64> %wide.load73, ptr %i.bq, align 8, !tbaa !185, !alias.scope !1411, !noalias !1408
  store <2 x i64> zeroinitializer, ptr %next.gep71, align 8, !tbaa !185, !alias.scope !1408, !noalias !1403
  store <2 x i64> zeroinitializer, ptr %i.bp, align 8, !tbaa !185, !alias.scope !1408, !noalias !1403
  %index.next74 = add nuw i64 %index69, 4         ; 2 uses
  %i.br = icmp eq i64 %index.next74, %n.vec67
  br i1 %i.br, label %middle.block75, label %vector.body68, !llvm.loop !1413

middle.block75:                                   ; preds = %vector.body68
  %cmp.n76 = icmp eq i64 %i.bf, %n.vec67
  br i1 %cmp.n76, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30.preheader79

.lr.ph.i.i.i30.preheader79:                       ; preds = %vector.memcheck58, %.lr.ph.i.i.i30.preheader, %middle.block75
  %.012.i.i.i31.ph = phi ptr [ %i.bb, %vector.memcheck58 ], [ %i.bb, %.lr.ph.i.i.i30.preheader ], [ %i.bm, %middle.block75 ]
  %.0911.i.i.i32.ph = phi ptr [ %1, %vector.memcheck58 ], [ %1, %.lr.ph.i.i.i30.preheader ], [ %i.bn, %middle.block75 ]
  br label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.preheader79, %.lr.ph.i.i.i30
  %.012.i.i.i31 = phi ptr [ %i.bu, %.lr.ph.i.i.i30 ], [ %.012.i.i.i31.ph, %.lr.ph.i.i.i30.preheader79 ] ; 2 uses
  %.0911.i.i.i32 = phi ptr [ %i.bt, %.lr.ph.i.i.i30 ], [ %.0911.i.i.i32.ph, %.lr.ph.i.i.i30.preheader79 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1403)
  call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  %i.bs = load i64, ptr %.0911.i.i.i32, align 8, !tbaa !185, !alias.scope !1406, !noalias !1403
  store i64 %i.bs, ptr %.012.i.i.i31, align 8, !tbaa !185, !alias.scope !1403, !noalias !1406
  store i64 0, ptr %.0911.i.i.i32, align 8, !tbaa !185, !alias.scope !1406, !noalias !1403
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 8 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.bt, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30, !llvm.loop !1414

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35: ; preds = %.lr.ph.i.i.i30, %middle.block75, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.bb, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.bm, %middle.block75 ], [ %i.bu, %.lr.ph.i.i.i30 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !184
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = sub i64 %i.bx, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.by) #26
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !180
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !183
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bz, ptr %i.bv, align 8, !tbaa !184
  ret void

bb.g:                                             ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %bb.d, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ca, %bb.g ], [ %i.ae, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i ], [ %i.ae, %bb.d ]
  %i.cc = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.cd = call ptr @__cxa_begin_catch(ptr %i.cc) #23 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #26
  invoke void @__cxa_rethrow() #25
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.cb

bb.k:                                             ; preds = %bb.h
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #27
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_16per_face_normalsIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS8_IjLin1ELi3ELi1ELin1ELi3EEENS8_IfLi3ELi1ELi0ELi3ELi1EEES9_EEvRKNS7_10MatrixBaseIT_EERKNSC_IT0_EERKNSC_IT1_EERNS7_15PlainObjectBaseIT2_EEEUliE_EEbSD_RKSH_mEUlmE_ZNS5_IiST_EEbSD_SV_mEUlimE_SW_EEbSD_SV_RKSL_RKSQ_mEUliimE_iimEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_16per_face_normalsIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS8_IjLin1ELi3ELi1ELin1ELi3EEENS8_IfLi3ELi1ELi0ELi3ELi1EEES9_EEvRKNS7_10MatrixBaseIT_EERKNSC_IT0_EERKNSC_IT1_EERNS7_15PlainObjectBaseIT2_EEEUliE_EEbSD_RKSH_mEUlmE_ZNS5_IiST_EEbSD_SV_mEUlimE_SW_EEbSD_SV_RKSL_RKSQ_mEUliimE_iimEEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZSt13__invoke_implIvZN3igl12parallel_forIiZNS0_12parallel_forIiZNS0_16per_face_normalsIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS5_IjLin1ELi3ELi1ELin1ELi3EEENS5_IfLi3ELi1ELi0ELi3ELi1EEES6_EEvRKNS4_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERNS4_15PlainObjectBaseIT2_EEEUliE_EEbSA_RKSE_mEUlmE_ZNS2_IiSQ_EEbSA_SS_mEUlimE_ST_EEbSA_SS_RKSI_RKSN_mEUliimE_JiimEESA_St14__invoke_otherOSE_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__invoke_implIvZN3igl12parallel_forIiZNS0_12parallel_forIiZNS0_16per_face_normalsIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS5_IjLin1ELi3ELi1ELin1ELi3EEENS5_IfLi3ELi1ELi0ELi3ELi1EEES6_EEvRKNS4_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERNS4_15PlainObjectBaseIT2_EEEUliE_EEbSA_RKSE_mEUlmE_ZNS2_IiSQ_EEbSA_SS_mEUlimE_ST_EEbSA_SS_RKSI_RKSN_mEUliimE_JiimEESA_St14__invoke_otherOSE_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !45     ; 2 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.c = icmp slt i32 %i.a, %i.b
  br i1 %i.c, label %.lr.ph.i, label %_ZZN3igl12parallel_forIiZNS_12parallel_forIiZNS_16per_face_normalsIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS4_IjLin1ELi3ELi1ELin1ELi3EEENS4_IfLi3ELi1ELi0ELi3ELi1EEES5_EEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERNS3_15PlainObjectBaseIT2_EEEUliE_EEbS9_RKSD_mEUlmE_ZNS1_IiSP_EEbS9_SR_mEUlimE_SS_EEbS9_SR_RKSH_RKSM_mENKUliimE_clEiim.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1415, !nonnull !163, !align !164
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1374, !nonnull !163, !align !164 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1376, !nonnull !163
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1378, !nonnull !163
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !168
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !169, !noalias !1417 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1382, !nonnull !163, !align !164
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !169, !noalias !1420
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.o = sext i32 %i.a to i64
  %wide.trip.count.i = sext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZZN3igl12parallel_forIiZNS_16per_face_normalsIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS3_IjLin1ELi3ELi1ELin1ELi3EEENS3_IfLi3ELi1ELi0ELi3ELi1EEES4_EEvRKNS2_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERNS2_15PlainObjectBaseIT2_EEEUliE_EEbS8_RKSC_mENKUlimE_clEim.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.o, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZZN3igl12parallel_forIiZNS_16per_face_normalsIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS3_IjLin1ELi3ELi1ELin1ELi3EEENS3_IfLi3ELi1ELi0ELi3ELi1EEES4_EEvRKNS2_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERNS2_15PlainObjectBaseIT2_EEEUliE_EEbS8_RKSC_mENKUlimE_clEim.exit.i ] ; 2 uses
  %.idx.i.i.i.i.i.i = mul nsw i64 %indvars.iv.i, 12 ; 2 uses
  %i.p = getelementptr i8, ptr %i.i, i64 %.idx.i.i.i.i.i.i ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !45
  %i.s = zext i32 %i.r to i64
  %.idx.i.i.i.i.i.i.i = mul nuw nsw i64 %i.s, 12
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i.i.i.i.i.i.i ; 2 uses
  %i.u = load i32, ptr %i.p, align 4, !tbaa !45
  %i.v = zext i32 %i.u to i64
  %.idx.i.i.i.i9.i.i.i = mul nuw nsw i64 %i.v, 12
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i.i.i.i9.i.i.i ; 2 uses
  %i.x = load float, ptr %i.t, align 4, !tbaa !9
  %i.y = load float, ptr %i.w, align 4, !tbaa !9
  %i.z = getelementptr i8, ptr %i.t, i64 4
  %i.aa = getelementptr i8, ptr %i.w, i64 4
  %i.ab = getelementptr i8, ptr %i.p, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !45
  %i.ad = zext i32 %i.ac to i64
  %.idx.i.i.i.i11.i.i.i = mul nuw nsw i64 %i.ad, 12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i.i.i.i11.i.i.i ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !9
  %i.ag = getelementptr i8, ptr %i.ae, i64 4
  %i.ah = load <2 x float>, ptr %i.z, align 4, !tbaa !9 ; 2 uses
  %i.ai = load <2 x float>, ptr %i.aa, align 4, !tbaa !9 ; 3 uses
  %i.aj = fsub <2 x float> %i.ah, %i.ai           ; 2 uses
  %i.ak = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.al = insertelement <2 x float> %i.ak, float %i.x, i64 1
  %i.am = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.an = insertelement <2 x float> %i.am, float %i.y, i64 1 ; 2 uses
  %i.ao = fsub <2 x float> %i.al, %i.an           ; 2 uses
  %i.ap = load <2 x float>, ptr %i.ag, align 4, !tbaa !9 ; 2 uses
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ar = insertelement <2 x float> %i.aq, float %i.af, i64 1
  %i.as = fsub <2 x float> %i.ar, %i.an           ; 2 uses
  %i.at = fsub <2 x float> %i.ap, %i.ai           ; 2 uses
  %i.au = fneg <2 x float> %i.at
  %i.av = fmul <2 x float> %i.ao, %i.au
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> %i.as, <2 x float> %i.av) ; 5 uses
  %i.ax = extractelement <2 x float> %i.as, i64 1
  %i.ay = fneg float %i.ax
  %i.az = extractelement <2 x float> %i.aj, i64 0
  %i.ba = fmul float %i.az, %i.ay
  %i.bb = extractelement <2 x float> %i.ao, i64 1
  %i.bc = extractelement <2 x float> %i.at, i64 0
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.bc, float %i.ba) ; 4 uses
  %4 = getelementptr inbounds i8, ptr %i.m, i64 %.idx.i.i.i.i.i.i ; 5 uses
  %5 = extractelement <2 x float> %i.aw, i64 0
  store float %5, ptr %4, align 4, !tbaa !9
  %i.be = getelementptr i8, ptr %4, i64 4         ; 2 uses
  %6 = extractelement <2 x float> %i.aw, i64 1
  store float %6, ptr %i.be, align 4, !tbaa !9
  %i.bf = getelementptr i8, ptr %4, i64 8         ; 2 uses
  store float %i.bd, ptr %i.bf, align 4, !tbaa !9
  %i.bg = fmul <2 x float> %i.aw, %i.aw           ; 2 uses
  %i.bh = fmul float %i.bd, %i.bd
  %i.bi = extractelement <2 x float> %i.bg, i64 1
  %i.bj = fadd float %i.bh, %i.bi
  %i.bk = extractelement <2 x float> %i.bg, i64 0
  %i.bl = fadd float %i.bk, %i.bj                 ; 2 uses
  %i.bm = fcmp oeq float %i.bl, 0.000000e+00
  br i1 %i.bm, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bn = load ptr, ptr %i.n, align 8, !tbaa !1386, !nonnull !163 ; 3 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !9
  store float %i.bo, ptr %4, align 4, !tbaa !9
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !9
  store float %i.bq, ptr %i.be, align 4, !tbaa !9
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bs = load float, ptr %i.br, align 4, !tbaa !9
  br label %_ZZN3igl12parallel_forIiZNS_16per_face_normalsIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS3_IjLin1ELi3ELi1ELin1ELi3EEENS3_IfLi3ELi1ELi0ELi3ELi1EEES4_EEvRKNS2_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERNS2_15PlainObjectBaseIT2_EEEUliE_EEbS8_RKSC_mENKUlimE_clEim.exit.i

bb.d:                                             ; preds = %bb.b
  %i.bt = tail call noundef float @llvm.sqrt.f32(float %i.bl) ; 2 uses
  %i.bu = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = fdiv <2 x float> %i.aw, %i.bv
  store <2 x float> %i.bw, ptr %4, align 4, !tbaa !9
  %i.bx = fdiv float %i.bd, %i.bt
  br label %_ZZN3igl12parallel_forIiZNS_16per_face_normalsIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS3_IjLin1ELi3ELi1ELin1ELi3EEENS3_IfLi3ELi1ELi0ELi3ELi1EEES4_EEvRKNS2_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERNS2_15PlainObjectBaseIT2_EEEUliE_EEbS8_RKSC_mENKUlimE_clEim.exit.i

_ZZN3igl12parallel_forIiZNS_16per_face_normalsIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS3_IjLin1ELi3ELi1ELin1ELi3EEENS3_IfLi3ELi1ELi0ELi3ELi1EEES4_EEvRKNS2_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERNS2_15PlainObjectBaseIT2_EEEUliE_EEbS8_RKSC_mENKUlimE_clEim.exit.i: ; preds = %bb.d, %bb.c
  %storemerge.i.i.i = phi float [ %i.bx, %bb.d ], [ %i.bs, %bb.c ]
  store float %storemerge.i.i.i, ptr %i.bf, align 4, !tbaa !9
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZZN3igl12parallel_forIiZNS_12parallel_forIiZNS_16per_face_normalsIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS4_IjLin1ELi3ELi1ELin1ELi3EEENS4_IfLi3ELi1ELi0ELi3ELi1EEES5_EEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERNS3_15PlainObjectBaseIT2_EEEUliE_EEbS9_RKSD_mEUlmE_ZNS1_IiSP_EEbS9_SR_mEUlimE_SS_EEbS9_SR_RKSH_RKSM_mENKUliimE_clEiim.exit, label %bb.b, !llvm.loop !1423

_ZZN3igl12parallel_forIiZNS_12parallel_forIiZNS_16per_face_normalsIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS4_IjLin1ELi3ELi1ELin1ELi3EEENS4_IfLi3ELi1ELi0ELi3ELi1EEES5_EEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERNS3_15PlainObjectBaseIT2_EEEUliE_EEbS9_RKSD_mEUlmE_ZNS1_IiSP_EEbS9_SR_mEUlimE_SS_EEbS9_SR_RKSH_RKSM_mENKUliimE_clEiim.exit: ; preds = %_ZZN3igl12parallel_forIiZNS_16per_face_normalsIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS3_IjLin1ELi3ELi1ELin1ELi3EEENS3_IfLi3ELi1ELi0ELi3ELi1EEES4_EEvRKNS2_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERNS2_15PlainObjectBaseIT2_EEEUliE_EEbS8_RKSC_mENKUlimE_clEim.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_16per_face_normalsIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS9_IjLin1ELi3ELi1ELin1ELi3EEENS9_IfLi3ELi1ELi0ELi3ELi1EEESA_EEvRKNS8_10MatrixBaseIT_EERKNSD_IT0_EERKNSD_IT1_EERNS8_15PlainObjectBaseIT2_EEEUliE_EEbSE_RKSI_mEUlmE_ZNS6_IiSU_EEbSE_SW_mEUlimE_SX_EEbSE_SW_RKSM_RKSR_mEUliimE_RiRKiRmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !183  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !180    ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #25
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28 ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 0, ptr %i.q, align 8, !tbaa !189
  %i.r = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28
          to label %.noexc unwind label %bb.g     ; 6 uses

.noexc:                                           ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIiZNS3_12parallel_forIiZNS3_16per_face_normalsIN5Eigen6MatrixIfLin1ELi3ELi1ELin1ELi3EEENS8_IjLin1ELi3ELi1ELin1ELi3EEENS8_IfLi3ELi1ELi0ELi3ELi1EEES9_EEvRKNS7_10MatrixBaseIT_EERKNSC_IT0_EERKNSC_IT1_EERNS7_15PlainObjectBaseIT2_EEEUliE_EEbSD_RKSH_mEUlmE_ZNS5_IiST_EEbSD_SV_mEUlimE_SW_EEbSD_SV_RKSL_RKSQ_mEUliimE_iimEEEEEE, i64 16), ptr %i.r, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %5, align 8, !tbaa !185
  store i64 %i.t, ptr %i.s, align 8, !tbaa !191
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load i32, ptr %4, align 4, !tbaa !45
  store i32 %i.v, ptr %i.u, align 8, !tbaa !193
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.x = load i32, ptr %3, align 4, !tbaa !45
  store i32 %i.x, ptr %i.w, align 4, !tbaa !195
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.z = load i64, ptr %2, align 8, !tbaa !24
  store i64 %i.z, ptr %i.y, align 8, !tbaa !24
  store ptr %i.r, ptr %6, align 8, !tbaa !197
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 %6, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.aa = load ptr, ptr %6, align 8, !tbaa !197   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !34
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #23, !inline_history !1390
  br label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.ae = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !197   ; 3 uses
  %.not.i8.i = icmp eq ptr %i.af, null
  br i1 %.not.i8.i, label %bb.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i: ; preds = %bb.d
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #23, !inline_history !1390
  br label %bb.i

bb.e:                                             ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.e
  %i.aj = add i64 %i.m, -8
  %i.ak = sub i64 %i.aj, %i.e                     ; 2 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ak, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader80, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.an = add i64 %i.m, -8
  %i.ao = sub i64 %i.an, %i.e
  %i.ap = and i64 %i.ao, -8
  %i.aq = add i64 %i.ap, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.aq
  %scevgep54 = getelementptr i8, ptr %i.c, i64 %i.aq
  %bound0 = icmp ult ptr %i.p, %scevgep54
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader80, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.am, 4611686018427387900     ; 3 uses
  %i.ar = shl i64 %n.vec, 3                       ; 2 uses
  %i.as = getelementptr i8, ptr %i.p, i64 %i.ar   ; 2 uses
  %i.at = getelementptr i8, ptr %i.c, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.au ; 2 uses
  %next.gep55 = getelementptr i8, ptr %i.c, i64 %i.au ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  %i.av = getelementptr i8, ptr %next.gep55, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep55, align 8, !tbaa !185, !alias.scope !1429, !noalias !1424
  %wide.load56 = load <2 x i64>, ptr %i.av, align 8, !tbaa !185, !alias.scope !1429, !noalias !1424
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !185, !alias.scope !1432, !noalias !1429
  store <2 x i64> %wide.load56, ptr %i.aw, align 8, !tbaa !185, !alias.scope !1432, !noalias !1429
  store <2 x i64> zeroinitializer, ptr %next.gep55, align 8, !tbaa !185, !alias.scope !1429, !noalias !1424
  store <2 x i64> zeroinitializer, ptr %i.av, align 8, !tbaa !185, !alias.scope !1429, !noalias !1424
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !1434

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.preheader80

.lr.ph.i.i.i.preheader80:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader80, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader80 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader80 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  %i.ay = load i64, ptr %.0911.i.i.i, align 8, !tbaa !185, !alias.scope !1427, !noalias !1424
  store i64 %i.ay, ptr %.012.i.i.i, align 8, !tbaa !185, !alias.scope !1424, !noalias !1427
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !185, !alias.scope !1427, !noalias !1424
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.az, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !1435

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.as, %middle.block ], [ %i.ba, %.lr.ph.i.i.i ] ; 2 uses
  %i.bb = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i29, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30.preheader

.lr.ph.i.i.i30.preheader:                         ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %i.bc = add i64 %i.d, -8
  %i.bd = sub i64 %i.bc, %i.m                     ; 2 uses
  %i.be = lshr i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check65 = icmp ult i64 %i.bd, 152
  br i1 %min.iters.check65, label %.lr.ph.i.i.i30.preheader79, label %vector.memcheck58

vector.memcheck58:                                ; preds = %.lr.ph.i.i.i30.preheader
  %i.bg = add i64 %i.d, -8
  %i.bh = sub i64 %i.bg, %i.m
  %i.bi = and i64 %i.bh, -8                       ; 2 uses
  %i.bj = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.bi
  %scevgep59 = getelementptr i8, ptr %i.bj, i64 16
  %i.bk = getelementptr i8, ptr %1, i64 %i.bi
  %scevgep60 = getelementptr i8, ptr %i.bk, i64 8
  %bound061 = icmp ult ptr %i.bb, %scevgep60
  %bound162 = icmp ult ptr %1, %scevgep59
  %found.conflict63 = and i1 %bound061, %bound162
  br i1 %found.conflict63, label %.lr.ph.i.i.i30.preheader79, label %vector.ph66

vector.ph66:                                      ; preds = %vector.memcheck58
  %n.vec67 = and i64 %i.bf, 4611686018427387900   ; 3 uses
  %i.bl = shl i64 %n.vec67, 3                     ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bb, i64 %i.bl  ; 2 uses
  %i.bn = getelementptr i8, ptr %1, i64 %i.bl
  br label %vector.body68
end_hunk_1
