Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/cumprod?download=true
inline.NumInlined: 1992
inline.NumDeleted: 725
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_7cumprodIN5Eigen6MatrixImLin1ELi1ELi0ELin1ELi1EEESA_EEvRKNS8_10MatrixBaseIT_EEiRNS8_15PlainObjectBaseIT0_EEEUliE0_EEbSC_RKSH_mEUlmE_ZNS6_IiSK_EEbSC_SM_mEUlimE_SN_EEbSC_SM_RKT1_RKT2_mEUliimE_RiRKiRmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:bb.a
.lr.ph.i.i.i30.preheader73:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i30.preheader, %middle.block69
  %.012.i.i.i31.ph = phi ptr [ %i.ax, %vector.memcheck ], [ %i.ax, %.lr.ph.i.i.i30.preheader ], [ %i.bi, %middle.block69 ]
  %.0911.i.i.i32.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i30.preheader ], [ %i.bj, %middle.block69 ]
  br label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.preheader73, %.lr.ph.i.i.i30
  %.012.i.i.i31 = phi ptr [ %i.bq, %.lr.ph.i.i.i30 ], [ %.012.i.i.i31.ph, %.lr.ph.i.i.i30.preheader73 ] ; 2 uses
  %.0911.i.i.i32 = phi ptr [ %i.bp, %.lr.ph.i.i.i30 ], [ %.0911.i.i.i32.ph, %.lr.ph.i.i.i30.preheader73 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  %i.bo = load i64, ptr %.0911.i.i.i32, align 8, !tbaa !103, !alias.scope !1087
  store i64 %i.bo, ptr %.012.i.i.i31, align 8, !tbaa !103, !alias.scope !1086
  store i64 0, ptr %.0911.i.i.i32, align 8, !tbaa !103, !alias.scope !1087
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 8 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.bp, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30, !llvm.loop !1083

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35: ; preds = %.lr.ph.i.i.i30, %middle.block69, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.ax, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.bi, %middle.block69 ], [ %i.bq, %.lr.ph.i.i.i30 ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !106
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bu) #23
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !101
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !102
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bv, ptr %i.br, align 8, !tbaa !106
  ret void

bb.g:                                             ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %bb.d, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.bw, %bb.g ], [ %i.ae, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i ], [ %i.ae, %bb.d ]
  %i.by = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.bz = call ptr @__cxa_begin_catch(ptr %i.by) #19 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #23
  invoke void @__cxa_rethrow() #20
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.bx

bb.k:                                             ; preds = %bb.h
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #21
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
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
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !66
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !83
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !199
  tail call void @free(ptr noundef %i.i) #19
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 4611686018427387903
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !66
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 2
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #24 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !66
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !199
  br label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !83
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl12parallel_forIiZNS_12parallel_forIiZNS_7cumprodIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES5_EEvRKNS3_10MatrixBaseIT_EEiRNS3_15PlainObjectBaseIT0_EEEUliE_EEbS7_RKSC_mEUlmE_ZNS1_IiSF_EEbS7_SH_mEUlimE_SI_EEbS7_SH_RKT1_RKT2_m(i32 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %5 = alloca %class.anon.245, align 8            ; 6 uses
  %6 = alloca %"class.std::vector", align 8       ; 13 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !50
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
  %i.l = load ptr, ptr %2, align 8, !tbaa !201, !nonnull !88, !align !89 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !203, !nonnull !88, !align !92 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = load i32, ptr %i.m, align 4, !tbaa !50   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.split, label %.loopexit58

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZZN3igl12parallel_forIiZNS_7cumprodIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES4_EEvRKNS2_10MatrixBaseIT_EEiRNS2_15PlainObjectBaseIT0_EEEUliE_EEbS6_RKSB_mENKUlimE_clEim.exit
  %i.r = phi i32 [ %i.ae, %_ZZN3igl12parallel_forIiZNS_7cumprodIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES4_EEvRKNS2_10MatrixBaseIT_EEiRNS2_15PlainObjectBaseIT0_EEEUliE_EEbS6_RKSB_mENKUlimE_clEim.exit ], [ %i.p, %.lr.ph ] ; 2 uses
  %.03360 = phi i32 [ %i.af, %_ZZN3igl12parallel_forIiZNS_7cumprodIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES4_EEvRKNS2_10MatrixBaseIT_EEiRNS2_15PlainObjectBaseIT0_EEEUliE_EEbS6_RKSB_mENKUlimE_clEim.exit ], [ 0, %.lr.ph ]
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.i.i, label %_ZZN3igl12parallel_forIiZNS_7cumprodIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES4_EEvRKNS2_10MatrixBaseIT_EEiRNS2_15PlainObjectBaseIT0_EEEUliE_EEbS6_RKSB_mENKUlimE_clEim.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.split
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !204, !nonnull !88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !199
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !205, !nonnull !88, !align !89
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !199
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 3 uses
  %.089.i.i = phi i32 [ 1, %.lr.ph.i.i ], [ %i.z, %bb.c ]
  %i.x = getelementptr [4 x i8], ptr %i.u, i64 %indvars.iv.i.i
  %i.y = load i32, ptr %i.x, align 4, !tbaa !50
  %i.z = mul nsw i32 %i.y, %.089.i.i              ; 2 uses
  %i.aa = getelementptr [4 x i8], ptr %i.w, i64 %indvars.iv.i.i
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !50
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ab = load i32, ptr %i.m, align 4, !tbaa !50  ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next.i.i, %i.ac
  br i1 %i.ad, label %bb.c, label %_ZZN3igl12parallel_forIiZNS_7cumprodIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES4_EEvRKNS2_10MatrixBaseIT_EEiRNS2_15PlainObjectBaseIT0_EEEUliE_EEbS6_RKSB_mENKUlimE_clEim.exit, !llvm.loop !36

_ZZN3igl12parallel_forIiZNS_7cumprodIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES4_EEvRKNS2_10MatrixBaseIT_EEiRNS2_15PlainObjectBaseIT0_EEEUliE_EEbS6_RKSB_mENKUlimE_clEim.exit: ; preds = %bb.c, %.lr.ph.split
  %i.ae = phi i32 [ %i.r, %.lr.ph.split ], [ %i.ab, %bb.c ]
  %i.af = add nuw nsw i32 %.03360, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.af, %0
  br i1 %exitcond.not, label %.loopexit58, label %.lr.ph.split, !llvm.loop !1091

_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.ag = add nsw i32 %0, 1
  %i.ah = sitofp i32 %i.ag to double
  %i.ai = uitofp i32 %i.f to double
  %i.aj = fdiv double %i.ah, %i.ai
  %i.ak = tail call double @llvm.round.f64(double %i.aj)
  %i.al = fptosi double %i.ak to i32
  %.sroa.speculated51 = tail call i32 @llvm.smax.i32(i32 %i.al, i32 1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %2, ptr %5, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.ao = shl nuw nsw i64 %i.g, 3
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #22
          to label %.noexc unwind label %bb.f     ; 6 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i
  %i.aq = load ptr, ptr %6, align 8, !tbaa !101   ; 8 uses
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !102 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aq, %i.ar
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc
  %i.as = ptrtoaddr ptr %i.ar to i64
  %i.at = ptrtoaddr ptr %i.aq to i64
  %i.au = add i64 %i.as, -8
  %i.av = sub i64 %i.au, %i.at                    ; 2 uses
  %i.aw = lshr i64 %i.av, 3
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.av, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader92, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ax, 4611686018427387900     ; 3 uses
  %i.ay = shl i64 %n.vec, 3                       ; 2 uses
  %i.az = getelementptr i8, ptr %i.ap, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.aq, i64 %i.ay
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.bb ; 2 uses
  %next.gep88 = getelementptr i8, ptr %i.aq, i64 %i.bb ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  %i.bc = getelementptr i8, ptr %next.gep88, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep88, align 8, !tbaa !103, !alias.scope !1099
  %wide.load89 = load <2 x i64>, ptr %i.bc, align 8, !tbaa !103, !alias.scope !1099
  %i.bd = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !103, !alias.scope !1098
  store <2 x i64> %wide.load89, ptr %i.bd, align 8, !tbaa !103, !alias.scope !1098
  store <2 x i64> zeroinitializer, ptr %next.gep88, align 8, !tbaa !103, !alias.scope !1099
  store <2 x i64> zeroinitializer, ptr %i.bc, align 8, !tbaa !103, !alias.scope !1099
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !1095

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i.preheader92

.lr.ph.i.i.i.i.preheader92:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader92, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader92 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader92 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  %i.bf = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !103, !alias.scope !1099
  store i64 %i.bf, ptr %.012.i.i.i.i, align 8, !tbaa !103, !alias.scope !1098
  store i64 0, ptr %.0911.i.i.i.i, align 8, !tbaa !103, !alias.scope !1099
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bg, %i.ar
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !1096

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc
  %.not.i8.i = icmp eq ptr %i.aq, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  %i.bi = load ptr, ptr %i.am, align 8, !tbaa !106
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.aq to i64
  %i.bl = sub i64 %i.bj, %i.bk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.bl) #23
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  store ptr %i.ap, ptr %6, align 8, !tbaa !101
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !102
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.g
  store ptr %i.bm, ptr %i.am, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 0, ptr %i.b, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %.sroa.speculated47 = tail call i32 @llvm.smin.i32(i32 %0, i32 %.sroa.speculated51)
  store i32 %.sroa.speculated47, ptr %i.c, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i64 0, ptr %i.d, align 8, !tbaa !103
  %i.bn = icmp sgt i32 %0, 0
  br i1 %i.bn, label %.lr.ph61, label %._crit_edge.thread

.lr.ph61:                                         ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, %bb.e
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_7cumprodIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEESA_EEvRKNS8_10MatrixBaseIT_EEiRNS8_15PlainObjectBaseIT0_EEEUliE_EEbSC_RKSH_mEUlmE_ZNS6_IiSK_EEbSC_SM_mEUlimE_SN_EEbSC_SM_RKT1_RKT2_mEUliimE_RiSY_RmEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.e:                                             ; preds = %.lr.ph61
  %i.bp = load i32, ptr %i.c, align 4, !tbaa !50  ; 3 uses
  store i32 %i.bp, ptr %i.b, align 4, !tbaa !50
  %i.bq = add nsw i32 %i.bp, %.sroa.speculated51
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %0, i32 %i.bq)
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !50
  %i.br = load i64, ptr %i.d, align 8, !tbaa !103 ; 2 uses
  %i.bs = add i64 %i.br, 1
  store i64 %i.bs, ptr %i.d, align 8, !tbaa !103
  %i.bt = add i64 %i.br, 2
  %i.bu = icmp ult i64 %i.bt, %i.g
  %i.bv = icmp slt i32 %i.bp, %0                  ; 2 uses
  %i.bw = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %i.bw, label %.lr.ph61, label %._crit_edge, !llvm.loop !1097

bb.f:                                             ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph61, %bb.g
  %lpad.loopexit.split-lp91 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %bb.n

._crit_edge:                                      ; preds = %bb.e
  br i1 %i.bv, label %bb.g, label %._crit_edge.thread

bb.g:                                             ; preds = %._crit_edge
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_7cumprodIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEESA_EEvRKNS8_10MatrixBaseIT_EEiRNS8_15PlainObjectBaseIT0_EEEUliE_EEbSC_RKSH_mEUlmE_ZNS6_IiSK_EEbSC_SM_mEUlimE_SN_EEbSC_SM_RKT1_RKT2_mEUliimE_RiRKiRmEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %._crit_edge.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

._crit_edge.thread:                               ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, %bb.g, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  %i.bz = load ptr, ptr %6, align 8, !tbaa !107   ; 3 uses
  %i.ca = load ptr, ptr %i.an, align 8, !tbaa !107 ; 2 uses
  %.not62 = icmp eq ptr %i.bz, %i.ca
  br i1 %.not62, label %.preheader.thread, label %.lr.ph65

.preheader.thread:                                ; preds = %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i

.preheader:                                       ; preds = %bb.j
  %.pre = load ptr, ptr %6, align 8, !tbaa !101   ; 4 uses
  %.pre69 = load ptr, ptr %i.an, align 8, !tbaa !102 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre69
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i

.lr.ph65:                                         ; preds = %._crit_edge.thread, %bb.j
  %.sroa.042.063 = phi ptr [ %i.cc, %bb.j ], [ %i.bz, %._crit_edge.thread ] ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.042.063, align 8, !tbaa !103
  %.not56 = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %.not56, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph65
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.042.063)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.j:                                             ; preds = %bb.h, %.lr.ph65
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.042.063, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cc, %i.ca
  br i1 %.not, label %.preheader, label %.lr.ph65

bb.k:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cd, %.pre69
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i, !llvm.loop !1

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i:          ; preds = %.preheader, %bb.k
  %.05.i.i.i = phi ptr [ %i.cd, %bb.k ], [ %.pre, %.preheader ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %.05.i.i.i, align 8, !tbaa !103
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  call void @_ZSt9terminatev() #21
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_7cumprodIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEESA_EEvRKNS8_10MatrixBaseIT_EEiRNS8_15PlainObjectBaseIT0_EEEUliE_EEbSC_RKSH_mEUlmE_ZNS6_IiSK_EEbSC_SM_mEUlimE_SN_EEbSC_SM_RKT1_RKT2_mEUliimE_RiRKiRmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:bb.a
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.e
  %i.aj = add i64 %i.m, -8
  %i.ak = sub i64 %i.aj, %i.e                     ; 2 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ak, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader74, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.am, 4611686018427387900     ; 3 uses
  %i.an = shl i64 %n.vec, 3                       ; 2 uses
  %i.ao = getelementptr i8, ptr %i.p, i64 %i.an   ; 2 uses
  %i.ap = getelementptr i8, ptr %i.c, i64 %i.an
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aq ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.c, i64 %i.aq ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  %i.ar = getelementptr i8, ptr %next.gep54, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep54, align 8, !tbaa !103, !alias.scope !1137
  %wide.load55 = load <2 x i64>, ptr %i.ar, align 8, !tbaa !103, !alias.scope !1137
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !103, !alias.scope !1136
  store <2 x i64> %wide.load55, ptr %i.as, align 8, !tbaa !103, !alias.scope !1136
  store <2 x i64> zeroinitializer, ptr %next.gep54, align 8, !tbaa !103, !alias.scope !1137
  store <2 x i64> zeroinitializer, ptr %i.ar, align 8, !tbaa !103, !alias.scope !1137
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !1126

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.preheader74

.lr.ph.i.i.i.preheader74:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.ao, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ap, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader74, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader74 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader74 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  %i.au = load i64, ptr %.0911.i.i.i, align 8, !tbaa !103, !alias.scope !1137
  store i64 %i.au, ptr %.012.i.i.i, align 8, !tbaa !103, !alias.scope !1136
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !103, !alias.scope !1137
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !1127

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.ao, %middle.block ], [ %i.aw, %.lr.ph.i.i.i ] ; 2 uses
  %i.ax = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i29, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30.preheader

.lr.ph.i.i.i30.preheader:                         ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %i.ay = add i64 %i.d, -8
  %i.az = sub i64 %i.ay, %i.m                     ; 3 uses
  %i.ba = lshr i64 %i.az, 3
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check59 = icmp ult i64 %i.az, 152
  br i1 %min.iters.check59, label %.lr.ph.i.i.i30.preheader73, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i30.preheader
  %i.bc = and i64 %i.az, -8                       ; 2 uses
  %i.bd = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  %i.bf = getelementptr i8, ptr %1, i64 %i.bc
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  %bound0 = icmp ult ptr %i.ax, %i.bg
  %bound1 = icmp ult ptr %1, %i.be
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i30.preheader73, label %vector.ph60

vector.ph60:                                      ; preds = %vector.memcheck
  %n.vec61 = and i64 %i.bb, 4611686018427387900   ; 3 uses
  %i.bh = shl i64 %n.vec61, 3                     ; 2 uses
  %i.bi = getelementptr i8, ptr %i.ax, i64 %i.bh  ; 2 uses
  %i.bj = getelementptr i8, ptr %1, i64 %i.bh
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph60
  %index63 = phi i64 [ 0, %vector.ph60 ], [ %index.next68, %vector.body62 ] ; 2 uses
  %i.bk = shl i64 %index63, 3                     ; 2 uses
  %next.gep64 = getelementptr i8, ptr %i.ax, i64 %i.bk ; 2 uses
  %next.gep65 = getelementptr i8, ptr %1, i64 %i.bk ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  %i.bl = getelementptr i8, ptr %next.gep65, i64 16 ; 2 uses
  %wide.load66 = load <2 x i64>, ptr %next.gep65, align 8, !tbaa !103, !alias.scope !1140
  %wide.load67 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !103, !alias.scope !1140
  %i.bm = getelementptr i8, ptr %next.gep64, i64 16
  store <2 x i64> %wide.load66, ptr %next.gep64, align 8, !tbaa !103, !alias.scope !1141, !noalias !1142
  store <2 x i64> %wide.load67, ptr %i.bm, align 8, !tbaa !103, !alias.scope !1141, !noalias !1142
  store <2 x i64> zeroinitializer, ptr %next.gep65, align 8, !tbaa !103, !alias.scope !1140
  store <2 x i64> zeroinitializer, ptr %i.bl, align 8, !tbaa !103, !alias.scope !1140
  %index.next68 = add nuw i64 %index63, 4         ; 2 uses
  %i.bn = icmp eq i64 %index.next68, %n.vec61
  br i1 %i.bn, label %middle.block69, label %vector.body62, !llvm.loop !1134

middle.block69:                                   ; preds = %vector.body62
  %cmp.n70 = icmp eq i64 %i.bb, %n.vec61
  br i1 %cmp.n70, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30.preheader73

.lr.ph.i.i.i30.preheader73:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i30.preheader, %middle.block69
  %.012.i.i.i31.ph = phi ptr [ %i.ax, %vector.memcheck ], [ %i.ax, %.lr.ph.i.i.i30.preheader ], [ %i.bi, %middle.block69 ]
  %.0911.i.i.i32.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i30.preheader ], [ %i.bj, %middle.block69 ]
  br label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.preheader73, %.lr.ph.i.i.i30
  %.012.i.i.i31 = phi ptr [ %i.bq, %.lr.ph.i.i.i30 ], [ %.012.i.i.i31.ph, %.lr.ph.i.i.i30.preheader73 ] ; 2 uses
  %.0911.i.i.i32 = phi ptr [ %i.bp, %.lr.ph.i.i.i30 ], [ %.0911.i.i.i32.ph, %.lr.ph.i.i.i30.preheader73 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  %i.bo = load i64, ptr %.0911.i.i.i32, align 8, !tbaa !103, !alias.scope !1139
  store i64 %i.bo, ptr %.012.i.i.i31, align 8, !tbaa !103, !alias.scope !1138
  store i64 0, ptr %.0911.i.i.i32, align 8, !tbaa !103, !alias.scope !1139
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 8 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.bp, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30, !llvm.loop !1135

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35: ; preds = %.lr.ph.i.i.i30, %middle.block69, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.ax, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.bi, %middle.block69 ], [ %i.bq, %.lr.ph.i.i.i30 ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !106
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bu) #23
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !101
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !102
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bv, ptr %i.br, align 8, !tbaa !106
  ret void

bb.g:                                             ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %bb.d, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.bw, %bb.g ], [ %i.ae, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i ], [ %i.ae, %bb.d ]
  %i.by = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.bz = call ptr @__cxa_begin_catch(ptr %i.by) #19 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #23
  invoke void @__cxa_rethrow() #20
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.bx

bb.k:                                             ; preds = %bb.h
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #21
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl12parallel_forIiZNS_12parallel_forIiZNS_7cumprodIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES5_EEvRKNS3_10MatrixBaseIT_EEiRNS3_15PlainObjectBaseIT0_EEEUliE0_EEbS7_RKSC_mEUlmE_ZNS1_IiSF_EEbS7_SH_mEUlimE_SI_EEbS7_SH_RKT1_RKT2_m(i32 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %5 = alloca %class.anon.259, align 8            ; 6 uses
  %6 = alloca %"class.std::vector", align 8       ; 13 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !50
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
  %i.l = load ptr, ptr %2, align 8, !tbaa !208, !nonnull !88, !align !89 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !210, !nonnull !88, !align !92
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN3igl12parallel_forIiZNS_7cumprodIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES4_EEvRKNS2_10MatrixBaseIT_EEiRNS2_15PlainObjectBaseIT0_EEEUliE0_EEbS6_RKSB_mENKUlimE_clEim.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZZN3igl12parallel_forIiZNS_7cumprodIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES4_EEvRKNS2_10MatrixBaseIT_EEiRNS2_15PlainObjectBaseIT0_EEEUliE0_EEbS6_RKSB_mENKUlimE_clEim.exit ] ; 5 uses
  %i.p = load i32, ptr %i.m, align 4, !tbaa !50
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !211, !nonnull !88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !199
  %i.t = getelementptr [4 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !50
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !212, !nonnull !88, !align !89
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !199
  %i.x = getelementptr [4 x i8], ptr %i.w, i64 %indvars.iv
  store i32 %i.u, ptr %i.x, align 4, !tbaa !50
  br label %_ZZN3igl12parallel_forIiZNS_7cumprodIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES4_EEvRKNS2_10MatrixBaseIT_EEiRNS2_15PlainObjectBaseIT0_EEEUliE0_EEbS6_RKSB_mENKUlimE_clEim.exit

bb.e:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !212, !nonnull !88, !align !89
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !199
  %i.aa = getelementptr [4 x i8], ptr %i.z, i64 %indvars.iv ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !50
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !211, !nonnull !88
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !199
  %i.ae = getelementptr [4 x i8], ptr %i.ad, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !50
  %i.ag = mul nsw i32 %i.af, %i.ab
  store i32 %i.ag, ptr %i.aa, align 4, !tbaa !50
  br label %_ZZN3igl12parallel_forIiZNS_7cumprodIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES4_EEvRKNS2_10MatrixBaseIT_EEiRNS2_15PlainObjectBaseIT0_EEEUliE0_EEbS6_RKSB_mENKUlimE_clEim.exit

_ZZN3igl12parallel_forIiZNS_7cumprodIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES4_EEvRKNS2_10MatrixBaseIT_EEiRNS2_15PlainObjectBaseIT0_EEEUliE0_EEbS6_RKSB_mENKUlimE_clEim.exit: ; preds = %bb.d, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit58, label %bb.c, !llvm.loop !1143

_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.ah = add nsw i32 %0, 1
  %i.ai = sitofp i32 %i.ah to double
  %i.aj = uitofp i32 %i.f to double
  %i.ak = fdiv double %i.ai, %i.aj
  %i.al = tail call double @llvm.round.f64(double %i.ak)
  %i.am = fptosi double %i.al to i32
  %.sroa.speculated51 = tail call i32 @llvm.smax.i32(i32 %i.am, i32 1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %2, ptr %5, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.ap = shl nuw nsw i64 %i.g, 3
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #22
          to label %.noexc unwind label %bb.h     ; 6 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i
  %i.ar = load ptr, ptr %6, align 8, !tbaa !101   ; 8 uses
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !102 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ar, %i.as
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc
  %i.at = ptrtoaddr ptr %i.as to i64
  %i.au = ptrtoaddr ptr %i.ar to i64
  %i.av = add i64 %i.at, -8
  %i.aw = sub i64 %i.av, %i.au                    ; 2 uses
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aw, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader87, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ay, 4611686018427387900     ; 3 uses
  %i.az = shl i64 %n.vec, 3                       ; 2 uses
  %i.ba = getelementptr i8, ptr %i.aq, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ar, i64 %i.az
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.bc ; 2 uses
  %next.gep83 = getelementptr i8, ptr %i.ar, i64 %i.bc ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1151)
  %i.bd = getelementptr i8, ptr %next.gep83, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep83, align 8, !tbaa !103, !alias.scope !1151
  %wide.load84 = load <2 x i64>, ptr %i.bd, align 8, !tbaa !103, !alias.scope !1151
  %i.be = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !103, !alias.scope !1150
  store <2 x i64> %wide.load84, ptr %i.be, align 8, !tbaa !103, !alias.scope !1150
  store <2 x i64> zeroinitializer, ptr %next.gep83, align 8, !tbaa !103, !alias.scope !1151
  store <2 x i64> zeroinitializer, ptr %i.bd, align 8, !tbaa !103, !alias.scope !1151
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !1147

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i.preheader87

.lr.ph.i.i.i.i.preheader87:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.preheader ], [ %i.ba, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader87, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader87 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader87 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1151)
  %i.bg = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !103, !alias.scope !1151
  store i64 %i.bg, ptr %.012.i.i.i.i, align 8, !tbaa !103, !alias.scope !1150
  store i64 0, ptr %.0911.i.i.i.i, align 8, !tbaa !103, !alias.scope !1151
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bh, %i.as
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !1148

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc
  %.not.i8.i = icmp eq ptr %i.ar, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  %i.bj = load ptr, ptr %i.an, align 8, !tbaa !106
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.ar to i64
  %i.bm = sub i64 %i.bk, %i.bl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.bm) #23
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.f, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  store ptr %i.aq, ptr %6, align 8, !tbaa !101
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !102
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.g
  store ptr %i.bn, ptr %i.an, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 0, ptr %i.b, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %.sroa.speculated47 = tail call i32 @llvm.smin.i32(i32 %0, i32 %.sroa.speculated51)
  store i32 %.sroa.speculated47, ptr %i.c, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i64 0, ptr %i.d, align 8, !tbaa !103
  %i.bo = icmp sgt i32 %0, 0
  br i1 %i.bo, label %.lr.ph61, label %._crit_edge.thread

.lr.ph61:                                         ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, %bb.g
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_7cumprodIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEESA_EEvRKNS8_10MatrixBaseIT_EEiRNS8_15PlainObjectBaseIT0_EEEUliE0_EEbSC_RKSH_mEUlmE_ZNS6_IiSK_EEbSC_SM_mEUlimE_SN_EEbSC_SM_RKT1_RKT2_mEUliimE_RiSY_RmEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.g:                                             ; preds = %.lr.ph61
  %i.bq = load i32, ptr %i.c, align 4, !tbaa !50  ; 3 uses
  store i32 %i.bq, ptr %i.b, align 4, !tbaa !50
  %i.br = add nsw i32 %i.bq, %.sroa.speculated51
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %0, i32 %i.br)
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !50
  %i.bs = load i64, ptr %i.d, align 8, !tbaa !103 ; 2 uses
  %i.bt = add i64 %i.bs, 1
  store i64 %i.bt, ptr %i.d, align 8, !tbaa !103
  %i.bu = add i64 %i.bs, 2
  %i.bv = icmp ult i64 %i.bu, %i.g
  %i.bw = icmp slt i32 %i.bq, %0                  ; 2 uses
  %i.bx = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %i.bx, label %.lr.ph61, label %._crit_edge, !llvm.loop !1149

bb.h:                                             ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph61, %bb.i
  %lpad.loopexit.split-lp86 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %bb.p

._crit_edge:                                      ; preds = %bb.g
  br i1 %i.bw, label %bb.i, label %._crit_edge.thread

bb.i:                                             ; preds = %._crit_edge
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIiZNS4_12parallel_forIiZNS4_7cumprodIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEESA_EEvRKNS8_10MatrixBaseIT_EEiRNS8_15PlainObjectBaseIT0_EEEUliE0_EEbSC_RKSH_mEUlmE_ZNS6_IiSK_EEbSC_SM_mEUlimE_SN_EEbSC_SM_RKT1_RKT2_mEUliimE_RiRKiRmEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %._crit_edge.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

._crit_edge.thread:                               ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, %bb.i, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  %i.ca = load ptr, ptr %6, align 8, !tbaa !107   ; 3 uses
  %i.cb = load ptr, ptr %i.ao, align 8, !tbaa !107 ; 2 uses
  %.not62 = icmp eq ptr %i.ca, %i.cb
  br i1 %.not62, label %.preheader.thread, label %.lr.ph65

.preheader.thread:                                ; preds = %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i

.preheader:                                       ; preds = %bb.l
  %.pre = load ptr, ptr %6, align 8, !tbaa !101   ; 4 uses
  %.pre69 = load ptr, ptr %i.ao, align 8, !tbaa !102 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre69
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i

.lr.ph65:                                         ; preds = %._crit_edge.thread, %bb.l
  %.sroa.042.063 = phi ptr [ %i.cd, %bb.l ], [ %i.ca, %._crit_edge.thread ] ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.042.063, align 8, !tbaa !103
  %.not56 = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %.not56, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.lr.ph65
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.042.063)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %bb.j, %.lr.ph65
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.042.063, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cd, %i.cb
  br i1 %.not, label %.preheader, label %.lr.ph65

bb.m:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ce, %.pre69
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i, !llvm.loop !1

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i:          ; preds = %.preheader, %bb.m
  %.05.i.i.i = phi ptr [ %i.ce, %bb.m ], [ %.pre, %.preheader ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %.05.i.i.i, align 8, !tbaa !103
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  call void @_ZSt9terminatev() #21
end_hunk_1
