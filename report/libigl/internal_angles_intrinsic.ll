Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/internal_angles_intrinsic?download=true
inline.NumInlined: 1175
inline.NumDeleted: 468
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN3igl25internal_angles_intrinsicIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %4, ptr %3, align 8, !tbaa !38
  %i.d = call noundef zeroext i1 @_ZN3igl12parallel_forIlZNS_12parallel_forIlZNS_25internal_angles_intrinsicIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERNS3_15PlainObjectBaseIT0_EEEUllE_EEbS8_RKSD_mEUlmE_ZNS1_IlSG_EEbS8_SI_mEUllmE_SJ_EEbS8_SI_RKT1_RKT2_m(i64 noundef %i.b, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef 1000) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
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
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !34
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !41
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !65
  tail call void @free(ptr noundef %i.i) #20
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !34
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 3
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #22 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !34
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !65
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !41
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !145
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !66
  tail call void @free(ptr noundef %i.f) #20
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !34
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #22 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !34
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !66
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !46
  store i64 %3, ptr %i.c, align 8, !tbaa !145
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl12parallel_forIlZNS_12parallel_forIlZNS_25internal_angles_intrinsicIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEENS4_IfLin1ELin1ELi0ELin1ELin1EEEEEvRKNS3_10MatrixBaseIT_EERNS3_15PlainObjectBaseIT0_EEEUllE_EEbS8_RKSD_mEUlmE_ZNS1_IlSG_EEbS8_SI_mEUllmE_SJ_EEbS8_SI_RKT1_RKT2_m(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %5 = alloca %class.anon.58, align 8             ; 6 uses
  %6 = alloca %"class.std::vector", align 8       ; 13 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !67
  %i.e = icmp eq i64 %0, 0
  br i1 %i.e, label %.loopexit58, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZN3igl19default_num_threadsEj(i32 noundef 0) ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp uge i64 %0, %4
  %i.i = icmp ugt i32 %i.f, 1
  %or.cond.not = and i1 %i.i, %i.h
  br i1 %or.cond.not, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i, label %.preheader57

.preheader57:                                     ; preds = %bb.b
  %i.j = icmp sgt i64 %0, 0
  br i1 %i.j, label %.lr.ph, label %.loopexit58

.lr.ph:                                           ; preds = %.preheader57
  %i.k = load ptr, ptr %2, align 8, !tbaa !69, !nonnull !70, !align !71 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !73, !nonnull !70
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !74
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !75, !nonnull !70, !align !71 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !46   ; 2 uses
  %.idx.i.i = shl i64 %i.r, 3
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.03360 = phi i64 [ 0, %.lr.ph ], [ %i.au, %bb.c ] ; 3 uses
  %i.s = getelementptr [4 x i8], ptr %i.m, i64 %.03360 ; 3 uses
  %i.t = getelementptr [4 x i8], ptr %i.p, i64 %.03360 ; 3 uses
  %i.u = load float, ptr %i.s, align 4, !tbaa !77 ; 4 uses
  %i.v = fmul float %i.u, 2.000000e+00
  %i.w = fsub float %i.v, %i.u
  %i.x = fmul float %i.u, %i.u
  %i.y = tail call float @llvm.sqrt.f32(float %i.x)
  %i.z = fmul float %i.y, 2.000000e+00
  %i.aa = fdiv float %i.w, %i.z
  %i.ab = tail call noundef float @acosf(float noundef %i.aa) #20
  store float %i.ab, ptr %i.t, align 4, !tbaa !77
  %i.ac = load float, ptr %i.s, align 4, !tbaa !77 ; 4 uses
  %i.ad = fmul float %i.ac, 2.000000e+00
  %i.ae = fsub float %i.ad, %i.ac
  %i.af = fmul float %i.ac, %i.ac
  %i.ag = tail call float @llvm.sqrt.f32(float %i.af)
  %i.ah = fmul float %i.ag, 2.000000e+00
  %i.ai = fdiv float %i.ae, %i.ah
  %i.aj = tail call noundef float @acosf(float noundef %i.ai) #20
  %i.ak = getelementptr [4 x i8], ptr %i.t, i64 %i.r
  store float %i.aj, ptr %i.ak, align 4, !tbaa !77
  %i.al = load float, ptr %i.s, align 4, !tbaa !77 ; 4 uses
  %i.am = fmul float %i.al, 2.000000e+00
  %i.an = fsub float %i.am, %i.al
  %i.ao = fmul float %i.al, %i.al
  %i.ap = tail call float @llvm.sqrt.f32(float %i.ao)
  %i.aq = fmul float %i.ap, 2.000000e+00
  %i.ar = fdiv float %i.an, %i.aq
  %i.as = tail call noundef float @acosf(float noundef %i.ar) #20
  %i.at = getelementptr i8, ptr %i.t, i64 %.idx.i.i
  store float %i.as, ptr %i.at, align 4, !tbaa !77
  %i.au = add nuw nsw i64 %.03360, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.au, %0
  br i1 %exitcond.not, label %.loopexit58, label %bb.c, !llvm.loop !146

_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.av = add nsw i64 %0, 1
  %i.aw = sitofp i64 %i.av to double
  %i.ax = uitofp i32 %i.f to double
  %i.ay = fdiv double %i.aw, %i.ax
  %i.az = tail call double @llvm.round.f64(double %i.ay)
  %i.ba = fptosi double %i.az to i64
  %.sroa.speculated51 = tail call i64 @llvm.smax.i64(i64 %i.ba, i64 1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %2, ptr %5, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.bd = shl nuw nsw i64 %i.g, 3
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #24
          to label %.noexc unwind label %bb.f     ; 4 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i
  %i.bf = load ptr, ptr %6, align 8, !tbaa !81    ; 5 uses
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !82 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bf, %i.bg
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i ], [ %i.be, %.noexc ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i ], [ %i.bf, %.noexc ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.bh = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !67, !alias.scope !152
  store i64 %i.bh, ptr %.012.i.i.i.i, align 8, !tbaa !67, !alias.scope !151
  store i64 0, ptr %.0911.i.i.i.i, align 8, !tbaa !67, !alias.scope !152
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bi, %i.bg
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc
  %.not.i8.i = icmp eq ptr %i.bf, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !83
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bf to i64
  %i.bn = sub i64 %i.bl, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bn) #25
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  store ptr %i.be, ptr %6, align 8, !tbaa !81
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !82
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.g
  store ptr %i.bo, ptr %i.bb, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 0, ptr %i.b, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %.sroa.speculated47 = tail call i64 @llvm.smin.i64(i64 %0, i64 %.sroa.speculated51)
  store i64 %.sroa.speculated47, ptr %i.c, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i64 0, ptr %i.d, align 8, !tbaa !67
  %i.bp = icmp sgt i64 %0, 0
  br i1 %i.bp, label %.lr.ph61, label %._crit_edge.thread

.lr.ph61:                                         ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, %bb.e
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZNS4_25internal_angles_intrinsicIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEENS9_IfLin1ELin1ELi0ELin1ELin1EEEEEvRKNS8_10MatrixBaseIT_EERNS8_15PlainObjectBaseIT0_EEEUllE_EEbSD_RKSI_mEUlmE_ZNS6_IlSL_EEbSD_SN_mEUllmE_SO_EEbSD_SN_RKT1_RKT2_mEUlllmE_RlSZ_RmEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.e:                                             ; preds = %.lr.ph61
  %i.br = load i64, ptr %i.c, align 8, !tbaa !67  ; 3 uses
  store i64 %i.br, ptr %i.b, align 8, !tbaa !67
  %i.bs = add nsw i64 %i.br, %.sroa.speculated51
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %0, i64 %i.bs)
  store i64 %.sroa.speculated, ptr %i.c, align 8, !tbaa !67
  %i.bt = load i64, ptr %i.d, align 8, !tbaa !67  ; 2 uses
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.d, align 8, !tbaa !67
  %i.bv = add i64 %i.bt, 2
  %i.bw = icmp ult i64 %i.bv, %i.g
  %i.bx = icmp slt i64 %i.br, %0                  ; 2 uses
  %i.by = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %i.by, label %.lr.ph61, label %._crit_edge, !llvm.loop !150

bb.f:                                             ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph61, %bb.g
  %lpad.loopexit.split-lp82 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.n

._crit_edge:                                      ; preds = %bb.e
  br i1 %i.bx, label %bb.g, label %._crit_edge.thread

bb.g:                                             ; preds = %._crit_edge
  %i.ca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZNS4_25internal_angles_intrinsicIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEENS9_IfLin1ELin1ELi0ELin1ELin1EEEEEvRKNS8_10MatrixBaseIT_EERNS8_15PlainObjectBaseIT0_EEEUllE_EEbSD_RKSI_mEUlmE_ZNS6_IlSL_EEbSD_SN_mEUllmE_SO_EEbSD_SN_RKT1_RKT2_mEUlllmE_RlRKlRmEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %._crit_edge.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

._crit_edge.thread:                               ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, %bb.g, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.cb = load ptr, ptr %6, align 8, !tbaa !84    ; 3 uses
  %i.cc = load ptr, ptr %i.bc, align 8, !tbaa !84 ; 2 uses
  %.not62 = icmp eq ptr %i.cb, %i.cc
  br i1 %.not62, label %.preheader.thread, label %.lr.ph65

.preheader.thread:                                ; preds = %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i

.preheader:                                       ; preds = %bb.j
  %.pre = load ptr, ptr %6, align 8, !tbaa !81    ; 4 uses
  %.pre68 = load ptr, ptr %i.bc, align 8, !tbaa !82 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre68
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i

.lr.ph65:                                         ; preds = %._crit_edge.thread, %bb.j
  %.sroa.042.063 = phi ptr [ %i.ce, %bb.j ], [ %i.cb, %._crit_edge.thread ] ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.042.063, align 8, !tbaa !67
  %.not56 = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %.not56, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph65
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.042.063)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.j:                                             ; preds = %bb.h, %.lr.ph65
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.042.063, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ce, %i.cc
  br i1 %.not, label %.preheader, label %.lr.ph65

bb.k:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cf, %.pre68
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i, !llvm.loop !1

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i:          ; preds = %.preheader, %bb.k
  %.05.i.i.i = phi ptr [ %i.cf, %bb.k ], [ %.pre, %.preheader ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %.05.i.i.i, align 8, !tbaa !67
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  call void @_ZSt9terminatev() #23
  unreachable

_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %bb.k, %.preheader.thread, %.preheader
  %i.cg = phi ptr [ %i.cb, %.preheader.thread ], [ %.pre, %.preheader ], [ %.pre, %bb.k ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i
  %i.ch = load ptr, ptr %i.bb, align 8, !tbaa !83
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.ck) #25
  br label %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit

_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %.loopexit58

bb.n:                                             ; preds = %bb.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp82, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.cd, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.bz, %bb.f ]
  call void @_ZNSt6vectorISt6threadSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %.pn.pn

.loopexit58:                                      ; preds = %bb.c, %.preheader57, %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit, %bb.a
  %.135 = phi i1 [ false, %bb.a ], [ true, %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit ], [ false, %.preheader57 ], [ false, %bb.c ]
  ret i1 %.135
}
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZNS4_25internal_angles_intrinsicIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEENS9_IfLin1ELin1ELi0ELin1ELin1EEEEEvRKNS8_10MatrixBaseIT_EERNS8_15PlainObjectBaseIT0_EEEUllE_EEbSD_RKSI_mEUlmE_ZNS6_IlSL_EEbSD_SN_mEUllmE_SO_EEbSD_SN_RKT1_RKT2_mEUlllmE_RlSZ_RmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 0, ptr %i.q, align 8, !tbaa !86
  %i.r = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24
          to label %.noexc unwind label %bb.g     ; 6 uses

.noexc:                                           ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_25internal_angles_intrinsicIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEENS8_IfLin1ELin1ELi0ELin1ELin1EEEEEvRKNS7_10MatrixBaseIT_EERNS7_15PlainObjectBaseIT0_EEEUllE_EEbSC_RKSH_mEUlmE_ZNS5_IlSK_EEbSC_SM_mEUllmE_SN_EEbSC_SM_RKT1_RKT2_mEUlllmE_llmEEEEEE, i64 16), ptr %i.r, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %5, align 8, !tbaa !67
  store i64 %i.t, ptr %i.s, align 8, !tbaa !88
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load i64, ptr %4, align 8, !tbaa !67
  store i64 %i.v, ptr %i.u, align 8, !tbaa !90
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.x = load i64, ptr %3, align 8, !tbaa !67
  store i64 %i.x, ptr %i.w, align 8, !tbaa !92
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.z = load i64, ptr %2, align 8, !tbaa !38
  store i64 %i.z, ptr %i.y, align 8, !tbaa !38
  store ptr %i.r, ptr %6, align 8, !tbaa !94
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 %6, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.aa = load ptr, ptr %6, align 8, !tbaa !94    ; 3 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !34
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #20, !inline_history !2
  br label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.ae = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !94    ; 3 uses
  %.not.i8.i = icmp eq ptr %i.af, null
  br i1 %.not.i8.i, label %bb.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i: ; preds = %bb.d
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #20, !inline_history !2
  br label %bb.i

bb.e:                                             ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %i.p, %bb.e ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %i.c, %bb.e ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.aj = load i64, ptr %.0911.i.i.i, align 8, !tbaa !67, !alias.scope !160
  store i64 %i.aj, ptr %.012.i.i.i, align 8, !tbaa !67, !alias.scope !159
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !67, !alias.scope !160
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.al, %.lr.ph.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 8 ; 2 uses
  %.not10.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i29, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %.lr.ph.i.i.i30
  %.012.i.i.i31 = phi ptr [ %i.ap, %.lr.ph.i.i.i30 ], [ %i.am, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 2 uses
  %.0911.i.i.i32 = phi ptr [ %i.ao, %.lr.ph.i.i.i30 ], [ %1, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.an = load i64, ptr %.0911.i.i.i32, align 8, !tbaa !67, !alias.scope !162
  store i64 %i.an, ptr %.012.i.i.i31, align 8, !tbaa !67, !alias.scope !161
  store i64 0, ptr %.0911.i.i.i32, align 8, !tbaa !67, !alias.scope !162
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 8 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30, !llvm.loop !0

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35: ; preds = %.lr.ph.i.i.i30, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.am, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.ap, %.lr.ph.i.i.i30 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !83
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.at) #25
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !81
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !82
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !83
  ret void

bb.g:                                             ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %bb.d, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.av, %bb.g ], [ %i.ae, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i ], [ %i.ae, %bb.d ]
  %i.ax = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ay = call ptr @__cxa_begin_catch(ptr %i.ax) #20 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #25
  invoke void @__cxa_rethrow() #21
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.aw

bb.k:                                             ; preds = %bb.h
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #23
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable
}

declare void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef align 8, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6thread24_M_thread_deps_never_runEv() #11 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_25internal_angles_intrinsicIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEENS8_IfLin1ELin1ELi0ELin1ELin1EEEEEvRKNS7_10MatrixBaseIT_EERNS7_15PlainObjectBaseIT0_EEEUllE_EEbSC_RKSH_mEUlmE_ZNS5_IlSK_EEbSC_SM_mEUllmE_SN_EEbSC_SM_RKT1_RKT2_mEUlllmE_llmEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_25internal_angles_intrinsicIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEENS8_IfLin1ELin1ELi0ELin1ELin1EEEEEvRKNS7_10MatrixBaseIT_EERNS7_15PlainObjectBaseIT0_EEEUllE_EEbSC_RKSH_mEUlmE_ZNS5_IlSK_EEbSC_SM_mEUllmE_SN_EEbSC_SM_RKT1_RKT2_mEUlllmE_llmEEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.d = load i64, ptr %i.b, align 8, !tbaa !67   ; 2 uses
  %i.e = icmp slt i64 %i.c, %i.d
  br i1 %i.e, label %.lr.ph.i.i.i.i.i, label %_ZNSt6thread8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS2_12parallel_forIlZNS2_25internal_angles_intrinsicIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEENS7_IfLin1ELin1ELi0ELin1ELin1EEEEEvRKNS6_10MatrixBaseIT_EERNS6_15PlainObjectBaseIT0_EEEUllE_EEbSB_RKSG_mEUlmE_ZNS4_IlSJ_EEbSB_SL_mEUllmE_SM_EEbSB_SL_RKT1_RKT2_mEUlllmE_llmEEEclEv.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !165, !nonnull !70, !align !71
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !69, !nonnull !70, !align !71 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !73, !nonnull !70
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !74
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !75, !nonnull !70, !align !71 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !66
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !46   ; 2 uses
  %.idx.i.i.i.i.i.i.i = shl i64 %i.o, 3
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi i64 [ %i.c, %.lr.ph.i.i.i.i.i ], [ %i.ar, %bb.b ] ; 3 uses
  %i.p = getelementptr [4 x i8], ptr %i.j, i64 %.06.i.i.i.i.i ; 3 uses
  %i.q = getelementptr [4 x i8], ptr %i.m, i64 %.06.i.i.i.i.i ; 3 uses
  %i.r = load float, ptr %i.p, align 4, !tbaa !77 ; 4 uses
  %i.s = fmul float %i.r, 2.000000e+00
  %i.t = fsub float %i.s, %i.r
  %i.u = fmul float %i.r, %i.r
  %i.v = tail call float @llvm.sqrt.f32(float %i.u)
  %i.w = fmul float %i.v, 2.000000e+00
  %i.x = fdiv float %i.t, %i.w
  %i.y = tail call noundef float @acosf(float noundef %i.x) #20
  store float %i.y, ptr %i.q, align 4, !tbaa !77
  %i.z = load float, ptr %i.p, align 4, !tbaa !77 ; 4 uses
  %i.aa = fmul float %i.z, 2.000000e+00
  %i.ab = fsub float %i.aa, %i.z
  %i.ac = fmul float %i.z, %i.z
  %i.ad = tail call float @llvm.sqrt.f32(float %i.ac)
  %i.ae = fmul float %i.ad, 2.000000e+00
  %i.af = fdiv float %i.ab, %i.ae
  %i.ag = tail call noundef float @acosf(float noundef %i.af) #20
  %i.ah = getelementptr [4 x i8], ptr %i.q, i64 %i.o
  store float %i.ag, ptr %i.ah, align 4, !tbaa !77
  %i.ai = load float, ptr %i.p, align 4, !tbaa !77 ; 4 uses
  %i.aj = fmul float %i.ai, 2.000000e+00
  %i.ak = fsub float %i.aj, %i.ai
  %i.al = fmul float %i.ai, %i.ai
  %i.am = tail call float @llvm.sqrt.f32(float %i.al)
  %i.an = fmul float %i.am, 2.000000e+00
  %i.ao = fdiv float %i.ak, %i.an
  %i.ap = tail call noundef float @acosf(float noundef %i.ao) #20
  %i.aq = getelementptr i8, ptr %i.q, i64 %.idx.i.i.i.i.i.i.i
  store float %i.ap, ptr %i.aq, align 4, !tbaa !77
  %i.ar = add nsw i64 %.06.i.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ar, %i.d
  br i1 %exitcond.not.i.i.i.i.i, label %_ZNSt6thread8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS2_12parallel_forIlZNS2_25internal_angles_intrinsicIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEENS7_IfLin1ELin1ELi0ELin1ELin1EEEEEvRKNS6_10MatrixBaseIT_EERNS6_15PlainObjectBaseIT0_EEEUllE_EEbSB_RKSG_mEUlmE_ZNS4_IlSJ_EEbSB_SL_mEUllmE_SM_EEbSB_SL_RKT1_RKT2_mEUlllmE_llmEEEclEv.exit, label %bb.b, !llvm.loop !163

_ZNSt6thread8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS2_12parallel_forIlZNS2_25internal_angles_intrinsicIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEENS7_IfLin1ELin1ELi0ELin1ELin1EEEEEvRKNS6_10MatrixBaseIT_EERNS6_15PlainObjectBaseIT0_EEEUllE_EEbSB_RKSG_mEUlmE_ZNS4_IlSJ_EEbSB_SL_mEUllmE_SM_EEbSB_SL_RKT1_RKT2_mEUlllmE_llmEEEclEv.exit: ; preds = %bb.b, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZNS4_25internal_angles_intrinsicIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEENS9_IfLin1ELin1ELi0ELin1ELin1EEEEEvRKNS8_10MatrixBaseIT_EERNS8_15PlainObjectBaseIT0_EEEUllE_EEbSD_RKSI_mEUlmE_ZNS6_IlSL_EEbSD_SN_mEUllmE_SO_EEbSD_SN_RKT1_RKT2_mEUlllmE_RlRKlRmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !81     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 0, ptr %i.q, align 8, !tbaa !86
  %i.r = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24
          to label %.noexc unwind label %bb.g     ; 6 uses

.noexc:                                           ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_25internal_angles_intrinsicIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEENS8_IfLin1ELin1ELi0ELin1ELin1EEEEEvRKNS7_10MatrixBaseIT_EERNS7_15PlainObjectBaseIT0_EEEUllE_EEbSC_RKSH_mEUlmE_ZNS5_IlSK_EEbSC_SM_mEUllmE_SN_EEbSC_SM_RKT1_RKT2_mEUlllmE_llmEEEEEE, i64 16), ptr %i.r, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %5, align 8, !tbaa !67
  store i64 %i.t, ptr %i.s, align 8, !tbaa !88
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load i64, ptr %4, align 8, !tbaa !67
  store i64 %i.v, ptr %i.u, align 8, !tbaa !90
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.x = load i64, ptr %3, align 8, !tbaa !67
  store i64 %i.x, ptr %i.w, align 8, !tbaa !92
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.z = load i64, ptr %2, align 8, !tbaa !38
  store i64 %i.z, ptr %i.y, align 8, !tbaa !38
  store ptr %i.r, ptr %6, align 8, !tbaa !94
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 %6, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.aa = load ptr, ptr %6, align 8, !tbaa !94    ; 3 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !34
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #20, !inline_history !3
  br label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.ae = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !94    ; 3 uses
  %.not.i8.i = icmp eq ptr %i.af, null
  br i1 %.not.i8.i, label %bb.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i: ; preds = %bb.d
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #20, !inline_history !3
  br label %bb.i

bb.e:                                             ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %i.p, %bb.e ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %i.c, %bb.e ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !172)
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.aj = load i64, ptr %.0911.i.i.i, align 8, !tbaa !67, !alias.scope !173
  store i64 %i.aj, ptr %.012.i.i.i, align 8, !tbaa !67, !alias.scope !172
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !67, !alias.scope !173
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.al, %.lr.ph.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 8 ; 2 uses
  %.not10.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i29, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %.lr.ph.i.i.i30
  %.012.i.i.i31 = phi ptr [ %i.ap, %.lr.ph.i.i.i30 ], [ %i.am, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 2 uses
  %.0911.i.i.i32 = phi ptr [ %i.ao, %.lr.ph.i.i.i30 ], [ %1, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !174)
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.an = load i64, ptr %.0911.i.i.i32, align 8, !tbaa !67, !alias.scope !175
  store i64 %i.an, ptr %.012.i.i.i31, align 8, !tbaa !67, !alias.scope !174
  store i64 0, ptr %.0911.i.i.i32, align 8, !tbaa !67, !alias.scope !175
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 8 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30, !llvm.loop !0

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35: ; preds = %.lr.ph.i.i.i30, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.am, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.ap, %.lr.ph.i.i.i30 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !83
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.at) #25
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !81
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !82
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !83
  ret void

bb.g:                                             ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %bb.d, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.av, %bb.g ], [ %i.ae, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i ], [ %i.ae, %bb.d ]
  %i.ax = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ay = call ptr @__cxa_begin_catch(ptr %i.ax) #20 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #25
  invoke void @__cxa_rethrow() #21
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.aw

bb.k:                                             ; preds = %bb.h
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #23
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !176
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !95
  tail call void @free(ptr noundef %i.f) #20
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !34
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #22 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !34
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !95
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !54
  store i64 %3, ptr %i.c, align 8, !tbaa !176
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl12parallel_forIlZNS_12parallel_forIlZNS_25internal_angles_intrinsicIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS4_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS3_10MatrixBaseIT_EERNS3_15PlainObjectBaseIT0_EEEUllE_EEbS8_RKSD_mEUlmE_ZNS1_IlSG_EEbS8_SI_mEUllmE_SJ_EEbS8_SI_RKT1_RKT2_m(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %5 = alloca %class.anon.79, align 8             ; 6 uses
  %6 = alloca %"class.std::vector", align 8       ; 13 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !67
  %i.e = icmp eq i64 %0, 0
  br i1 %i.e, label %.loopexit58, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZN3igl19default_num_threadsEj(i32 noundef 0) ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp uge i64 %0, %4
  %i.i = icmp ugt i32 %i.f, 1
  %or.cond.not = and i1 %i.i, %i.h
  br i1 %or.cond.not, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i, label %.preheader57

.preheader57:                                     ; preds = %bb.b
  %i.j = icmp sgt i64 %0, 0
  br i1 %i.j, label %.lr.ph, label %.loopexit58

.lr.ph:                                           ; preds = %.preheader57
  %i.k = load ptr, ptr %2, align 8, !tbaa !97, !nonnull !70, !align !71 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !99, !nonnull !70
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !65
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !100, !nonnull !70, !align !71 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !95
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !54   ; 2 uses
  %.idx.i.i = shl i64 %i.r, 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.03360 = phi i64 [ 0, %.lr.ph ], [ %i.au, %bb.c ] ; 3 uses
  %i.s = getelementptr [8 x i8], ptr %i.m, i64 %.03360 ; 3 uses
  %i.t = getelementptr [8 x i8], ptr %i.p, i64 %.03360 ; 3 uses
  %i.u = load double, ptr %i.s, align 8, !tbaa !102 ; 4 uses
  %i.v = fmul double %i.u, 2.000000e+00
  %i.w = fsub double %i.v, %i.u
  %i.x = fmul double %i.u, %i.u
  %i.y = tail call double @llvm.sqrt.f64(double %i.x)
  %i.z = fmul double %i.y, 2.000000e+00
  %i.aa = fdiv double %i.w, %i.z
  %i.ab = tail call double @acos(double noundef %i.aa) #20
  store double %i.ab, ptr %i.t, align 8, !tbaa !102
  %i.ac = load double, ptr %i.s, align 8, !tbaa !102 ; 4 uses
  %i.ad = fmul double %i.ac, 2.000000e+00
  %i.ae = fsub double %i.ad, %i.ac
  %i.af = fmul double %i.ac, %i.ac
  %i.ag = tail call double @llvm.sqrt.f64(double %i.af)
  %i.ah = fmul double %i.ag, 2.000000e+00
  %i.ai = fdiv double %i.ae, %i.ah
  %i.aj = tail call double @acos(double noundef %i.ai) #20
  %i.ak = getelementptr [8 x i8], ptr %i.t, i64 %i.r
  store double %i.aj, ptr %i.ak, align 8, !tbaa !102
  %i.al = load double, ptr %i.s, align 8, !tbaa !102 ; 4 uses
  %i.am = fmul double %i.al, 2.000000e+00
  %i.an = fsub double %i.am, %i.al
  %i.ao = fmul double %i.al, %i.al
  %i.ap = tail call double @llvm.sqrt.f64(double %i.ao)
  %i.aq = fmul double %i.ap, 2.000000e+00
  %i.ar = fdiv double %i.an, %i.aq
  %i.as = tail call double @acos(double noundef %i.ar) #20
  %i.at = getelementptr i8, ptr %i.t, i64 %.idx.i.i
  store double %i.as, ptr %i.at, align 8, !tbaa !102
  %i.au = add nuw nsw i64 %.03360, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.au, %0
  br i1 %exitcond.not, label %.loopexit58, label %bb.c, !llvm.loop !177

_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.av = add nsw i64 %0, 1
  %i.aw = sitofp i64 %i.av to double
  %i.ax = uitofp i32 %i.f to double
  %i.ay = fdiv double %i.aw, %i.ax
  %i.az = tail call double @llvm.round.f64(double %i.ay)
  %i.ba = fptosi double %i.az to i64
  %.sroa.speculated51 = tail call i64 @llvm.smax.i64(i64 %i.ba, i64 1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %2, ptr %5, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.bd = shl nuw nsw i64 %i.g, 3
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #24
          to label %.noexc unwind label %bb.f     ; 4 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i
  %i.bf = load ptr, ptr %6, align 8, !tbaa !81    ; 5 uses
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !82 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bf, %i.bg
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i ], [ %i.be, %.noexc ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i ], [ %i.bf, %.noexc ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %i.bh = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !67, !alias.scope !183
  store i64 %i.bh, ptr %.012.i.i.i.i, align 8, !tbaa !67, !alias.scope !182
  store i64 0, ptr %.0911.i.i.i.i, align 8, !tbaa !67, !alias.scope !183
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bi, %i.bg
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc
  %.not.i8.i = icmp eq ptr %i.bf, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !83
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bf to i64
  %i.bn = sub i64 %i.bl, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bn) #25
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  store ptr %i.be, ptr %6, align 8, !tbaa !81
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !82
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.g
  store ptr %i.bo, ptr %i.bb, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 0, ptr %i.b, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %.sroa.speculated47 = tail call i64 @llvm.smin.i64(i64 %0, i64 %.sroa.speculated51)
  store i64 %.sroa.speculated47, ptr %i.c, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i64 0, ptr %i.d, align 8, !tbaa !67
  %i.bp = icmp sgt i64 %0, 0
  br i1 %i.bp, label %.lr.ph61, label %._crit_edge.thread

.lr.ph61:                                         ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, %bb.e
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZNS4_25internal_angles_intrinsicIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS9_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS8_10MatrixBaseIT_EERNS8_15PlainObjectBaseIT0_EEEUllE_EEbSD_RKSI_mEUlmE_ZNS6_IlSL_EEbSD_SN_mEUllmE_SO_EEbSD_SN_RKT1_RKT2_mEUlllmE_RlSZ_RmEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.e:                                             ; preds = %.lr.ph61
  %i.br = load i64, ptr %i.c, align 8, !tbaa !67  ; 3 uses
  store i64 %i.br, ptr %i.b, align 8, !tbaa !67
  %i.bs = add nsw i64 %i.br, %.sroa.speculated51
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %0, i64 %i.bs)
  store i64 %.sroa.speculated, ptr %i.c, align 8, !tbaa !67
  %i.bt = load i64, ptr %i.d, align 8, !tbaa !67  ; 2 uses
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.d, align 8, !tbaa !67
  %i.bv = add i64 %i.bt, 2
  %i.bw = icmp ult i64 %i.bv, %i.g
  %i.bx = icmp slt i64 %i.br, %0                  ; 2 uses
  %i.by = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %i.by, label %.lr.ph61, label %._crit_edge, !llvm.loop !181

bb.f:                                             ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE11_M_allocateEm.exit.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph61, %bb.g
  %lpad.loopexit.split-lp82 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.n

._crit_edge:                                      ; preds = %bb.e
  br i1 %i.bx, label %bb.g, label %._crit_edge.thread

bb.g:                                             ; preds = %._crit_edge
  %i.ca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZNS4_25internal_angles_intrinsicIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS9_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS8_10MatrixBaseIT_EERNS8_15PlainObjectBaseIT0_EEEUllE_EEbSD_RKSI_mEUlmE_ZNS6_IlSL_EEbSD_SN_mEUllmE_SO_EEbSD_SN_RKT1_RKT2_mEUlllmE_RlRKlRmEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %._crit_edge.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

._crit_edge.thread:                               ; preds = %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit.i, %bb.g, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.cb = load ptr, ptr %6, align 8, !tbaa !84    ; 3 uses
  %i.cc = load ptr, ptr %i.bc, align 8, !tbaa !84 ; 2 uses
  %.not62 = icmp eq ptr %i.cb, %i.cc
  br i1 %.not62, label %.preheader.thread, label %.lr.ph65

.preheader.thread:                                ; preds = %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i

.preheader:                                       ; preds = %bb.j
  %.pre = load ptr, ptr %6, align 8, !tbaa !81    ; 4 uses
  %.pre68 = load ptr, ptr %i.bc, align 8, !tbaa !82 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre68
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i

.lr.ph65:                                         ; preds = %._crit_edge.thread, %bb.j
  %.sroa.042.063 = phi ptr [ %i.ce, %bb.j ], [ %i.cb, %._crit_edge.thread ] ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.042.063, align 8, !tbaa !67
  %.not56 = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %.not56, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph65
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.042.063)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.j:                                             ; preds = %bb.h, %.lr.ph65
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.042.063, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ce, %i.cc
  br i1 %.not, label %.preheader, label %.lr.ph65

bb.k:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cf, %.pre68
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i, !llvm.loop !1

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i:          ; preds = %.preheader, %bb.k
  %.05.i.i.i = phi ptr [ %i.cf, %bb.k ], [ %.pre, %.preheader ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %.05.i.i.i, align 8, !tbaa !67
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i
  call void @_ZSt9terminatev() #23
  unreachable

_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %bb.k, %.preheader.thread, %.preheader
  %i.cg = phi ptr [ %i.cb, %.preheader.thread ], [ %.pre, %.preheader ], [ %.pre, %bb.k ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i
  %i.ch = load ptr, ptr %i.bb, align 8, !tbaa !83
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.ck) #25
  br label %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit

_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %.loopexit58

bb.n:                                             ; preds = %bb.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp82, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.cd, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.bz, %bb.f ]
  call void @_ZNSt6vectorISt6threadSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %.pn.pn

.loopexit58:                                      ; preds = %bb.c, %.preheader57, %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit, %bb.a
  %.135 = phi i1 [ false, %bb.a ], [ true, %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit ], [ false, %.preheader57 ], [ false, %bb.c ]
  ret i1 %.135
}
end_hunk_1
begin_hunk_2_@_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZNS4_25internal_angles_intrinsicIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS9_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS8_10MatrixBaseIT_EERNS8_15PlainObjectBaseIT0_EEEUllE_EEbSD_RKSI_mEUlmE_ZNS6_IlSL_EEbSD_SN_mEUllmE_SO_EEbSD_SN_RKT1_RKT2_mEUlllmE_RlSZ_RmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:bb.a
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 0, ptr %i.q, align 8, !tbaa !86
  %i.r = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24
          to label %.noexc unwind label %bb.g     ; 6 uses

.noexc:                                           ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_25internal_angles_intrinsicIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS8_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS7_10MatrixBaseIT_EERNS7_15PlainObjectBaseIT0_EEEUllE_EEbSC_RKSH_mEUlmE_ZNS5_IlSK_EEbSC_SM_mEUllmE_SN_EEbSC_SM_RKT1_RKT2_mEUlllmE_llmEEEEEE, i64 16), ptr %i.r, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %5, align 8, !tbaa !67
  store i64 %i.t, ptr %i.s, align 8, !tbaa !88
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load i64, ptr %4, align 8, !tbaa !67
  store i64 %i.v, ptr %i.u, align 8, !tbaa !90
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.x = load i64, ptr %3, align 8, !tbaa !67
  store i64 %i.x, ptr %i.w, align 8, !tbaa !92
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.z = load i64, ptr %2, align 8, !tbaa !38
  store i64 %i.z, ptr %i.y, align 8, !tbaa !38
  store ptr %i.r, ptr %6, align 8, !tbaa !94
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 %6, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.aa = load ptr, ptr %6, align 8, !tbaa !94    ; 3 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !34
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #20, !inline_history !4
  br label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.ae = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !94    ; 3 uses
  %.not.i8.i = icmp eq ptr %i.af, null
  br i1 %.not.i8.i, label %bb.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i: ; preds = %bb.d
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #20, !inline_history !4
  br label %bb.i

bb.e:                                             ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %i.p, %bb.e ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %i.c, %bb.e ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !190)
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.aj = load i64, ptr %.0911.i.i.i, align 8, !tbaa !67, !alias.scope !191
  store i64 %i.aj, ptr %.012.i.i.i, align 8, !tbaa !67, !alias.scope !190
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !67, !alias.scope !191
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.al, %.lr.ph.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 8 ; 2 uses
  %.not10.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i29, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %.lr.ph.i.i.i30
  %.012.i.i.i31 = phi ptr [ %i.ap, %.lr.ph.i.i.i30 ], [ %i.am, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 2 uses
  %.0911.i.i.i32 = phi ptr [ %i.ao, %.lr.ph.i.i.i30 ], [ %1, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !192)
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.an = load i64, ptr %.0911.i.i.i32, align 8, !tbaa !67, !alias.scope !193
  store i64 %i.an, ptr %.012.i.i.i31, align 8, !tbaa !67, !alias.scope !192
  store i64 0, ptr %.0911.i.i.i32, align 8, !tbaa !67, !alias.scope !193
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 8 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30, !llvm.loop !0

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35: ; preds = %.lr.ph.i.i.i30, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.am, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.ap, %.lr.ph.i.i.i30 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !83
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.at) #25
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !81
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !82
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !83
  ret void

bb.g:                                             ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %bb.d, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.av, %bb.g ], [ %i.ae, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i ], [ %i.ae, %bb.d ]
  %i.ax = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ay = call ptr @__cxa_begin_catch(ptr %i.ax) #20 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #25
  invoke void @__cxa_rethrow() #21
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.aw

bb.k:                                             ; preds = %bb.h
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #23
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_25internal_angles_intrinsicIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS8_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS7_10MatrixBaseIT_EERNS7_15PlainObjectBaseIT0_EEEUllE_EEbSC_RKSH_mEUlmE_ZNS5_IlSK_EEbSC_SM_mEUllmE_SN_EEbSC_SM_RKT1_RKT2_mEUlllmE_llmEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_25internal_angles_intrinsicIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS8_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS7_10MatrixBaseIT_EERNS7_15PlainObjectBaseIT0_EEEUllE_EEbSC_RKSH_mEUlmE_ZNS5_IlSK_EEbSC_SM_mEUllmE_SN_EEbSC_SM_RKT1_RKT2_mEUlllmE_llmEEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.d = load i64, ptr %i.b, align 8, !tbaa !67   ; 2 uses
  %i.e = icmp slt i64 %i.c, %i.d
  br i1 %i.e, label %.lr.ph.i.i.i.i.i, label %_ZNSt6thread8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS2_12parallel_forIlZNS2_25internal_angles_intrinsicIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS7_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS6_10MatrixBaseIT_EERNS6_15PlainObjectBaseIT0_EEEUllE_EEbSB_RKSG_mEUlmE_ZNS4_IlSJ_EEbSB_SL_mEUllmE_SM_EEbSB_SL_RKT1_RKT2_mEUlllmE_llmEEEclEv.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !196, !nonnull !70, !align !71
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !97, !nonnull !70, !align !71 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !99, !nonnull !70
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !65
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !100, !nonnull !70, !align !71 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !95
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !54   ; 2 uses
  %.idx.i.i.i.i.i.i.i = shl i64 %i.o, 4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi i64 [ %i.c, %.lr.ph.i.i.i.i.i ], [ %i.ar, %bb.b ] ; 3 uses
  %i.p = getelementptr [8 x i8], ptr %i.j, i64 %.06.i.i.i.i.i ; 3 uses
  %i.q = getelementptr [8 x i8], ptr %i.m, i64 %.06.i.i.i.i.i ; 3 uses
  %i.r = load double, ptr %i.p, align 8, !tbaa !102 ; 4 uses
  %i.s = fmul double %i.r, 2.000000e+00
  %i.t = fsub double %i.s, %i.r
  %i.u = fmul double %i.r, %i.r
  %i.v = tail call double @llvm.sqrt.f64(double %i.u)
  %i.w = fmul double %i.v, 2.000000e+00
  %i.x = fdiv double %i.t, %i.w
  %i.y = tail call double @acos(double noundef %i.x) #20
  store double %i.y, ptr %i.q, align 8, !tbaa !102
  %i.z = load double, ptr %i.p, align 8, !tbaa !102 ; 4 uses
  %i.aa = fmul double %i.z, 2.000000e+00
  %i.ab = fsub double %i.aa, %i.z
  %i.ac = fmul double %i.z, %i.z
  %i.ad = tail call double @llvm.sqrt.f64(double %i.ac)
  %i.ae = fmul double %i.ad, 2.000000e+00
  %i.af = fdiv double %i.ab, %i.ae
  %i.ag = tail call double @acos(double noundef %i.af) #20
  %i.ah = getelementptr [8 x i8], ptr %i.q, i64 %i.o
  store double %i.ag, ptr %i.ah, align 8, !tbaa !102
  %i.ai = load double, ptr %i.p, align 8, !tbaa !102 ; 4 uses
  %i.aj = fmul double %i.ai, 2.000000e+00
  %i.ak = fsub double %i.aj, %i.ai
  %i.al = fmul double %i.ai, %i.ai
  %i.am = tail call double @llvm.sqrt.f64(double %i.al)
  %i.an = fmul double %i.am, 2.000000e+00
  %i.ao = fdiv double %i.ak, %i.an
  %i.ap = tail call double @acos(double noundef %i.ao) #20
  %i.aq = getelementptr i8, ptr %i.q, i64 %.idx.i.i.i.i.i.i.i
  store double %i.ap, ptr %i.aq, align 8, !tbaa !102
  %i.ar = add nsw i64 %.06.i.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ar, %i.d
  br i1 %exitcond.not.i.i.i.i.i, label %_ZNSt6thread8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS2_12parallel_forIlZNS2_25internal_angles_intrinsicIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS7_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS6_10MatrixBaseIT_EERNS6_15PlainObjectBaseIT0_EEEUllE_EEbSB_RKSG_mEUlmE_ZNS4_IlSJ_EEbSB_SL_mEUllmE_SM_EEbSB_SL_RKT1_RKT2_mEUlllmE_llmEEEclEv.exit, label %bb.b, !llvm.loop !194

_ZNSt6thread8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS2_12parallel_forIlZNS2_25internal_angles_intrinsicIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS7_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS6_10MatrixBaseIT_EERNS6_15PlainObjectBaseIT0_EEEUllE_EEbSB_RKSG_mEUlmE_ZNS4_IlSJ_EEbSB_SL_mEUllmE_SM_EEbSB_SL_RKT1_RKT2_mEUlllmE_llmEEEclEv.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZNS4_25internal_angles_intrinsicIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS9_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS8_10MatrixBaseIT_EERNS8_15PlainObjectBaseIT0_EEEUllE_EEbSD_RKSI_mEUlmE_ZNS6_IlSL_EEbSD_SN_mEUllmE_SO_EEbSD_SN_RKT1_RKT2_mEUlllmE_RlRKlRmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !81     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 0, ptr %i.q, align 8, !tbaa !86
  %i.r = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24
          to label %.noexc unwind label %bb.g     ; 6 uses

.noexc:                                           ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_25internal_angles_intrinsicIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS8_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS7_10MatrixBaseIT_EERNS7_15PlainObjectBaseIT0_EEEUllE_EEbSC_RKSH_mEUlmE_ZNS5_IlSK_EEbSC_SM_mEUllmE_SN_EEbSC_SM_RKT1_RKT2_mEUlllmE_llmEEEEEE, i64 16), ptr %i.r, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %5, align 8, !tbaa !67
  store i64 %i.t, ptr %i.s, align 8, !tbaa !88
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load i64, ptr %4, align 8, !tbaa !67
  store i64 %i.v, ptr %i.u, align 8, !tbaa !90
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.x = load i64, ptr %3, align 8, !tbaa !67
  store i64 %i.x, ptr %i.w, align 8, !tbaa !92
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.z = load i64, ptr %2, align 8, !tbaa !38
  store i64 %i.z, ptr %i.y, align 8, !tbaa !38
  store ptr %i.r, ptr %6, align 8, !tbaa !94
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 %6, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.aa = load ptr, ptr %6, align 8, !tbaa !94    ; 3 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !34
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #20, !inline_history !5
  br label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.ae = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !94    ; 3 uses
  %.not.i8.i = icmp eq ptr %i.af, null
  br i1 %.not.i8.i, label %bb.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i: ; preds = %bb.d
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #20, !inline_history !5
  br label %bb.i

bb.e:                                             ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %i.p, %bb.e ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %i.c, %bb.e ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !203)
  call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %i.aj = load i64, ptr %.0911.i.i.i, align 8, !tbaa !67, !alias.scope !204
  store i64 %i.aj, ptr %.012.i.i.i, align 8, !tbaa !67, !alias.scope !203
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !67, !alias.scope !204
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.al, %.lr.ph.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 8 ; 2 uses
  %.not10.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i29, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %.lr.ph.i.i.i30
  %.012.i.i.i31 = phi ptr [ %i.ap, %.lr.ph.i.i.i30 ], [ %i.am, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 2 uses
  %.0911.i.i.i32 = phi ptr [ %i.ao, %.lr.ph.i.i.i30 ], [ %1, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !205)
  call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.an = load i64, ptr %.0911.i.i.i32, align 8, !tbaa !67, !alias.scope !206
  store i64 %i.an, ptr %.012.i.i.i31, align 8, !tbaa !67, !alias.scope !205
  store i64 0, ptr %.0911.i.i.i32, align 8, !tbaa !67, !alias.scope !206
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 8 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30, !llvm.loop !0

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35: ; preds = %.lr.ph.i.i.i30, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.am, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.ap, %.lr.ph.i.i.i30 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !83
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.at) #25
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !81
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !82
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !83
  ret void

bb.g:                                             ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %bb.d, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.av, %bb.g ], [ %i.ae, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i ], [ %i.ae, %bb.d ]
  %i.ax = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ay = call ptr @__cxa_begin_catch(ptr %i.ax) #20 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #25
  invoke void @__cxa_rethrow() #21
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.aw

bb.k:                                             ; preds = %bb.h
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #23
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl12parallel_forIlZNS_12parallel_forIlZNS_25internal_angles_intrinsicIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEES5_EEvRKNS3_10MatrixBaseIT_EERNS3_15PlainObjectBaseIT0_EEEUllE_EEbS7_RKSC_mEUlmE_ZNS1_IlSF_EEbS7_SH_mEUllmE_SI_EEbS7_SH_RKT1_RKT2_m(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %5 = alloca %class.anon.98, align 8             ; 6 uses
  %6 = alloca %"class.std::vector", align 8       ; 13 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !67
  %i.e = icmp eq i64 %0, 0
  br i1 %i.e, label %.loopexit58, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZN3igl19default_num_threadsEj(i32 noundef 0) ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp uge i64 %0, %4
end_hunk_2
begin_hunk_3_@_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_25internal_angles_intrinsicIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS7_10MatrixBaseIT_EERNS7_15PlainObjectBaseIT0_EEEUllE_EEbSC_RKSH_mEUlmE_ZNS5_IlSK_EEbSC_SM_mEUllmE_SN_EEbSC_SM_RKT1_RKT2_mEUlllmE_llmEEEEE6_M_runEv:bb.a
  %i.ad = load double, ptr %i.p, align 8, !tbaa !102 ; 2 uses
  %i.ae = load double, ptr %i.s, align 8, !tbaa !102 ; 2 uses
  %i.af = fadd double %i.ad, %i.ae
  %i.ag = load double, ptr %i.r, align 8, !tbaa !102
  %i.ah = fsub double %i.af, %i.ag
  %i.ai = fmul double %i.ad, %i.ae
  %i.aj = tail call double @sqrt(double noundef %i.ai) #20
  %i.ak = fmul double %i.aj, 2.000000e+00
  %i.al = fdiv double %i.ah, %i.ak
  %i.am = tail call double @acos(double noundef %i.al) #20
  store double %i.am, ptr %i.q, align 8, !tbaa !102
  %i.an = load double, ptr %i.r, align 8, !tbaa !102 ; 2 uses
  %i.ao = load double, ptr %i.p, align 8, !tbaa !102 ; 2 uses
  %i.ap = fadd double %i.an, %i.ao
  %i.aq = load double, ptr %i.s, align 8, !tbaa !102
  %i.ar = fsub double %i.ap, %i.aq
  %i.as = fmul double %i.an, %i.ao
  %i.at = tail call double @sqrt(double noundef %i.as) #20
  %i.au = fmul double %i.at, 2.000000e+00
  %i.av = fdiv double %i.ar, %i.au
  %i.aw = tail call double @acos(double noundef %i.av) #20
  store double %i.aw, ptr %i.q, align 8, !tbaa !102
  %i.ax = add nsw i64 %.06.i.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ax, %i.d
  br i1 %exitcond.not.i.i.i.i.i, label %_ZNSt6thread8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS2_12parallel_forIlZNS2_25internal_angles_intrinsicIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_10MatrixBaseIT_EERNS6_15PlainObjectBaseIT0_EEEUllE_EEbSB_RKSG_mEUlmE_ZNS4_IlSJ_EEbSB_SL_mEUllmE_SM_EEbSB_SL_RKT1_RKT2_mEUlllmE_llmEEEclEv.exit, label %bb.b, !llvm.loop !404

_ZNSt6thread8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS2_12parallel_forIlZNS2_25internal_angles_intrinsicIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_10MatrixBaseIT_EERNS6_15PlainObjectBaseIT0_EEEUllE_EEbSB_RKSG_mEUlmE_ZNS4_IlSJ_EEbSB_SL_mEUllmE_SM_EEbSB_SL_RKT1_RKT2_mEUlllmE_llmEEEclEv.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZNS4_25internal_angles_intrinsicIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS9_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS8_10MatrixBaseIT_EERNS8_15PlainObjectBaseIT0_EEEUllE_EEbSD_RKSI_mEUlmE_ZNS6_IlSL_EEbSD_SN_mEUllmE_SO_EEbSD_SN_RKT1_RKT2_mEUlllmE_RlRKlRmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !81     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 0, ptr %i.q, align 8, !tbaa !86
  %i.r = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24
          to label %.noexc unwind label %bb.g     ; 6 uses

.noexc:                                           ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_25internal_angles_intrinsicIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS7_10MatrixBaseIT_EERNS7_15PlainObjectBaseIT0_EEEUllE_EEbSC_RKSH_mEUlmE_ZNS5_IlSK_EEbSC_SM_mEUllmE_SN_EEbSC_SM_RKT1_RKT2_mEUlllmE_llmEEEEEE, i64 16), ptr %i.r, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %5, align 8, !tbaa !67
  store i64 %i.t, ptr %i.s, align 8, !tbaa !88
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load i64, ptr %4, align 8, !tbaa !67
  store i64 %i.v, ptr %i.u, align 8, !tbaa !90
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.x = load i64, ptr %3, align 8, !tbaa !67
  store i64 %i.x, ptr %i.w, align 8, !tbaa !92
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.z = load i64, ptr %2, align 8, !tbaa !38
  store i64 %i.z, ptr %i.y, align 8, !tbaa !38
  store ptr %i.r, ptr %6, align 8, !tbaa !94
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 %6, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.aa = load ptr, ptr %6, align 8, !tbaa !94    ; 3 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !34
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #20, !inline_history !19
  br label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.ae = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !94    ; 3 uses
  %.not.i8.i = icmp eq ptr %i.af, null
  br i1 %.not.i8.i, label %bb.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i: ; preds = %bb.d
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #20, !inline_history !19
  br label %bb.i

bb.e:                                             ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %i.p, %bb.e ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %i.c, %bb.e ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !413)
  call void @llvm.experimental.noalias.scope.decl(metadata !414)
  %i.aj = load i64, ptr %.0911.i.i.i, align 8, !tbaa !67, !alias.scope !414
  store i64 %i.aj, ptr %.012.i.i.i, align 8, !tbaa !67, !alias.scope !413
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !67, !alias.scope !414
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.al, %.lr.ph.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 8 ; 2 uses
  %.not10.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i29, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %.lr.ph.i.i.i30
  %.012.i.i.i31 = phi ptr [ %i.ap, %.lr.ph.i.i.i30 ], [ %i.am, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 2 uses
  %.0911.i.i.i32 = phi ptr [ %i.ao, %.lr.ph.i.i.i30 ], [ %1, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !415)
  call void @llvm.experimental.noalias.scope.decl(metadata !416)
  %i.an = load i64, ptr %.0911.i.i.i32, align 8, !tbaa !67, !alias.scope !416
  store i64 %i.an, ptr %.012.i.i.i31, align 8, !tbaa !67, !alias.scope !415
  store i64 0, ptr %.0911.i.i.i32, align 8, !tbaa !67, !alias.scope !416
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 8 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30, !llvm.loop !0

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35: ; preds = %.lr.ph.i.i.i30, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.am, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.ap, %.lr.ph.i.i.i30 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !83
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.at) #25
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !81
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !82
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !83
  ret void

bb.g:                                             ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %bb.d, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.av, %bb.g ], [ %i.ae, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i ], [ %i.ae, %bb.d ]
  %i.ax = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ay = call ptr @__cxa_begin_catch(ptr %i.ax) #20 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #25
  invoke void @__cxa_rethrow() #21
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.aw

bb.k:                                             ; preds = %bb.h
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #23
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { noreturn nounwind }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { builtin nounwind }

!llvm.module.flags = !{!20, !21, !22}
!llvm.ident = !{!23}
!llvm.errno.tbaa = !{!28}

!0 = distinct !{!0, !78}
!1 = distinct !{!1, !78}
!2 = distinct !{null, null, null}
!3 = distinct !{null, null, null}
!4 = distinct !{null, null, null}
!5 = distinct !{null, null, null}
!6 = distinct !{null, null, null}
!7 = distinct !{null, null, null}
!8 = distinct !{null, null, null}
!9 = distinct !{null, null, null}
!10 = distinct !{null, null, null}
!11 = distinct !{null, null, null}
!12 = distinct !{null, null, null}
!13 = distinct !{null, null, null}
!14 = distinct !{null, null, null}
!15 = distinct !{null, null, null}
!16 = distinct !{null, null, null}
!17 = distinct !{null, null, null}
!18 = distinct !{null, null, null}
!19 = distinct !{null, null, null}
!20 = !{i32 8, !"PIC Level", i32 2}
!21 = !{i32 7, !"PIE Level", i32 2}
!22 = !{i32 7, !"uwtable", i32 2}
!23 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!24 = !{!"Simple C++ TBAA"}
!25 = !{!"omnipotent char", !24, i64 0}
!26 = !{!"int", !25, i64 0}
!27 = !{!"__libc_errno", !26, i64 0}
!28 = !{!27, !26, i64 0}
!29 = !{!"any pointer", !25, i64 0}
!30 = !{!"p1 float", !29, i64 0}
!31 = !{!"long", !25, i64 0}
!32 = !{!"_ZTSN5Eigen12DenseStorageIfLin1ELin1ELi1ELi0EEE", !30, i64 0, !31, i64 8}
!33 = !{!"vtable pointer", !24, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"p1 _ZTSN5Eigen10MatrixBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEEE", !29, i64 0}
!36 = !{!"p1 _ZTSN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEE", !29, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!29, !29, i64 0}
!39 = !{!"p1 double", !29, i64 0}
!40 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EEE", !39, i64 0, !31, i64 8}
!41 = !{!40, !31, i64 8}
!42 = !{!"p1 _ZTSN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEE", !29, i64 0}
!43 = !{!"p1 _ZTSN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEE", !29, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"_ZTSN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EEE", !30, i64 0, !31, i64 8, !31, i64 16}
!46 = !{!45, !31, i64 8}
!47 = !{!"p1 _ZTSN5Eigen10MatrixBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEE", !29, i64 0}
!48 = !{!"_ZTSN5Eigen12DenseStorageIfLin1ELin1ELi3ELi0EEE", !30, i64 0, !31, i64 8}
!49 = !{!48, !31, i64 8}
!50 = !{!"p1 _ZTSN5Eigen10MatrixBaseINS_6MatrixIfLin1ELi3ELi0ELin1ELi3EEEEE", !29, i64 0}
!51 = !{!"p1 _ZTSN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi0ELin1ELi3EEEEE", !29, i64 0}
!52 = !{!48, !30, i64 0}
!53 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !39, i64 0, !31, i64 8, !31, i64 16}
!54 = !{!53, !31, i64 8}
!55 = !{!"p1 _ZTSN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEE", !29, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{!"p1 _ZTSN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEEE", !29, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi3ELi0EEE", !39, i64 0, !31, i64 8}
!60 = !{!59, !31, i64 8}
!61 = !{!59, !39, i64 0}
!62 = !{!"p1 _ZTSN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEEE", !29, i64 0}
!63 = !{!62, !62, i64 0}
!64 = !{!"p1 _ZTSN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEE", !29, i64 0}
!65 = !{!40, !39, i64 0}
!66 = !{!45, !30, i64 0}
!67 = !{!31, !31, i64 0}
!68 = !{!"_ZTSZN3igl12parallel_forIlZNS_25internal_angles_intrinsicIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEENS3_IfLin1ELin1ELi0ELin1ELin1EEEEEvRKNS2_10MatrixBaseIT_EERNS2_15PlainObjectBaseIT0_EEEUllE_EEbS7_RKSC_mEUllmE_", !29, i64 0}
!69 = !{!68, !29, i64 0}
!70 = !{}
!71 = !{i64 8}
!72 = !{!"_ZTSZN3igl25internal_angles_intrinsicIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEENS2_IfLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EEEUllE_", !35, i64 0, !36, i64 8}
!73 = !{!72, !35, i64 0}
!74 = !{!32, !30, i64 0}
!75 = !{!72, !36, i64 8}
!76 = !{!"float", !25, i64 0}
!77 = !{!76, !76, i64 0}
!78 = !{!"llvm.loop.mustprogress"}
!79 = !{!"p1 _ZTSSt6thread", !29, i64 0}
!80 = !{!"_ZTSNSt12_Vector_baseISt6threadSaIS0_EE17_Vector_impl_dataE", !79, i64 0, !79, i64 8, !79, i64 16}
!81 = !{!80, !79, i64 0}
!82 = !{!80, !79, i64 8}
!83 = !{!80, !79, i64 16}
!84 = !{!79, !79, i64 0}
!85 = !{!"_ZTSNSt6thread2idE", !31, i64 0}
!86 = !{!85, !31, i64 0}
!87 = !{!"_ZTSSt10_Head_baseILm3EmLb0EE", !31, i64 0}
!88 = !{!87, !31, i64 0}
!89 = !{!"_ZTSSt10_Head_baseILm2ElLb0EE", !31, i64 0}
!90 = !{!89, !31, i64 0}
!91 = !{!"_ZTSSt10_Head_baseILm1ElLb0EE", !31, i64 0}
!92 = !{!91, !31, i64 0}
!93 = !{!"p1 _ZTSNSt6thread6_StateE", !29, i64 0}
!94 = !{!93, !93, i64 0}
!95 = !{!53, !39, i64 0}
!96 = !{!"_ZTSZN3igl12parallel_forIlZNS_25internal_angles_intrinsicIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS3_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS2_10MatrixBaseIT_EERNS2_15PlainObjectBaseIT0_EEEUllE_EEbS7_RKSC_mEUllmE_", !29, i64 0}
!97 = !{!96, !29, i64 0}
!98 = !{!"_ZTSZN3igl25internal_angles_intrinsicIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EEEUllE_", !42, i64 0, !43, i64 8}
!99 = !{!98, !42, i64 0}
!100 = !{!98, !43, i64 8}
!101 = !{!"double", !25, i64 0}
!102 = !{!101, !101, i64 0}
!103 = !{!"_ZTSZN3igl12parallel_forIlZNS_25internal_angles_intrinsicIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEES4_EEvRKNS2_10MatrixBaseIT_EERNS2_15PlainObjectBaseIT0_EEEUllE_EEbS6_RKSB_mEUllmE_", !29, i64 0}
!104 = !{!103, !29, i64 0}
!105 = !{!"_ZTSZN3igl25internal_angles_intrinsicIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EEEUllE_", !47, i64 0, !36, i64 8}
!106 = !{!105, !47, i64 0}
!107 = !{!105, !36, i64 8}
!108 = !{!"_ZTSZN3igl12parallel_forIlZNS_25internal_angles_intrinsicIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEES4_EEvRKNS2_10MatrixBaseIT_EERNS2_15PlainObjectBaseIT0_EEEUllE_EEbS6_RKSB_mEUllmE_", !29, i64 0}
!109 = !{!108, !29, i64 0}
!110 = !{!"_ZTSZN3igl25internal_angles_intrinsicIN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EEEUllE_", !50, i64 0, !51, i64 8}
!111 = !{!110, !50, i64 0}
!112 = !{!110, !51, i64 8}
!113 = !{!"_ZTSZN3igl12parallel_forIlZNS_25internal_angles_intrinsicIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS3_IdLin1ELi3ELi0ELin1ELi3EEEEEvRKNS2_10MatrixBaseIT_EERNS2_15PlainObjectBaseIT0_EEEUllE_EEbS7_RKSC_mEUllmE_", !29, i64 0}
!114 = !{!113, !29, i64 0}
!115 = !{!"_ZTSZN3igl25internal_angles_intrinsicIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EEEUllE_", !55, i64 0, !57, i64 8}
!116 = !{!115, !55, i64 0}
!117 = !{!115, !57, i64 8}
!118 = !{!"_ZTSZN3igl12parallel_forIlZNS_25internal_angles_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES4_EEvRKNS2_10MatrixBaseIT_EERNS2_15PlainObjectBaseIT0_EEEUllE_EEbS6_RKSB_mEUllmE_", !29, i64 0}
!119 = !{!118, !29, i64 0}
!120 = !{!"_ZTSZN3igl25internal_angles_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EEEUllE_", !62, i64 0, !57, i64 8}
!121 = !{!120, !62, i64 0}
!122 = !{!120, !57, i64 8}
!123 = !{!"_ZTSZN3igl12parallel_forIlZNS_25internal_angles_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS3_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS2_10MatrixBaseIT_EERNS2_15PlainObjectBaseIT0_EEEUllE_EEbS7_RKSC_mEUllmE_", !29, i64 0}
!124 = !{!123, !29, i64 0}
!125 = !{!"_ZTSZN3igl25internal_angles_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EEEUllE_", !62, i64 0, !43, i64 8}
!126 = !{!125, !62, i64 0}
!127 = !{!125, !43, i64 8}
!128 = !{!"_ZTSZN3igl12parallel_forIlZNS_25internal_angles_intrinsicIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES4_EEvRKNS2_10MatrixBaseIT_EERNS2_15PlainObjectBaseIT0_EEEUllE_EEbS6_RKSB_mEUllmE_", !29, i64 0}
!129 = !{!128, !29, i64 0}
!130 = !{!"_ZTSZN3igl25internal_angles_intrinsicIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EEEUllE_", !55, i64 0, !43, i64 8}
!131 = !{!130, !55, i64 0}
!132 = !{!130, !43, i64 8}
!133 = !{!"_ZTSZN3igl12parallel_forIlZNS_25internal_angles_intrinsicIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS3_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_10MatrixBaseIT_EERNS2_15PlainObjectBaseIT0_EEEUllE_EEbS7_RKSC_mEUllmE_", !29, i64 0}
!134 = !{!133, !29, i64 0}
!135 = !{!"_ZTSZN3igl25internal_angles_intrinsicIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EEEUllE_", !55, i64 0, !64, i64 8}
!136 = !{!135, !55, i64 0}
!137 = !{!135, !64, i64 8}
!138 = !{!32, !31, i64 8}
!139 = !{!35, !35, i64 0}
!140 = !{!42, !42, i64 0}
!141 = !{!47, !47, i64 0}
!142 = !{!50, !50, i64 0}
!143 = !{!51, !51, i64 0}
!144 = !{!64, !64, i64 0}
!145 = !{!45, !31, i64 16}
!146 = distinct !{!146, !78}
!147 = distinct !{!147, i1 true, !"_ZSt19__relocate_object_aISt6threadS0_SaIS0_EEvPT_PT0_RT1_"}
!148 = distinct !{!148, !147, !"_ZSt19__relocate_object_aISt6threadS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!149 = distinct !{!149, !147, !"_ZSt19__relocate_object_aISt6threadS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!150 = distinct !{!150, !78}
!151 = !{!148}
!152 = !{!149}
!153 = distinct !{!153, i1 true, !"_ZSt19__relocate_object_aISt6threadS0_SaIS0_EEvPT_PT0_RT1_"}
!154 = distinct !{!154, !153, !"_ZSt19__relocate_object_aISt6threadS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!155 = distinct !{!155, !153, !"_ZSt19__relocate_object_aISt6threadS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!156 = distinct !{!156, i1 true, !"_ZSt19__relocate_object_aISt6threadS0_SaIS0_EEvPT_PT0_RT1_"}
!157 = distinct !{!157, !156, !"_ZSt19__relocate_object_aISt6threadS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!158 = distinct !{!158, !156, !"_ZSt19__relocate_object_aISt6threadS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!159 = !{!154}
!160 = !{!155}
!161 = !{!157}
!162 = !{!158}
!163 = distinct !{!163, !78}
!164 = !{!"_ZTSZN3igl12parallel_forIlZNS_12parallel_forIlZNS_25internal_angles_intrinsicIN5Eigen6MatrixIfLin1ELi1ELi0ELin1ELi1EEENS4_IfLin1ELin1ELi0ELin1ELin1EEEEEvRKNS3_10MatrixBaseIT_EERNS3_15PlainObjectBaseIT0_EEEUllE_EEbS8_RKSD_mEUlmE_ZNS1_IlSG_EEbS8_SI_mEUllmE_SJ_EEbS8_SI_RKT1_RKT2_mEUlllmE_", !29, i64 0}
!165 = !{!164, !29, i64 0}
!166 = distinct !{!166, i1 true, !"_ZSt19__relocate_object_aISt6threadS0_SaIS0_EEvPT_PT0_RT1_"}
!167 = distinct !{!167, !166, !"_ZSt19__relocate_object_aISt6threadS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!168 = distinct !{!168, !166, !"_ZSt19__relocate_object_aISt6threadS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
end_hunk_3
