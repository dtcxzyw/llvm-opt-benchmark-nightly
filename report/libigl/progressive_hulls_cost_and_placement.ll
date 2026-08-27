Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/progressive_hulls_cost_and_placement?download=true
inline.NumInlined: 2464
inline.NumDeleted: 1355
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag:bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit51
  %i.aw = icmp eq i64 %i.m, 4
  br i1 %i.aw, label %bb.v, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.v:                                             ; preds = %bb.u
  %i.ax = load i32, ptr %2, align 4, !tbaa !35
  store i32 %i.ax, ptr %1, align 4, !tbaa !35
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.w:                                             ; preds = %bb.b
  %i.ay = load ptr, ptr %0, align 8, !tbaa !14    ; 5 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.ba = sub i64 %i.j, %i.az
  %i.bb = ashr exact i64 %i.ba, 2                 ; 4 uses
  %i.bc = sub nsw i64 2305843009213693951, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.d
  br i1 %i.bd, label %bb.x, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #20
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.d)
  %i.be = add nsw i64 %.sroa.speculated.i, %i.bb  ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bb
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 2305843009213693951)
  %i.bh = select i1 %i.bf, i64 2305843009213693951, i64 %i.bg ; 3 uses
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.bi = shl nuw nsw i64 %i.bh, 2
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #24
  br label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bk = phi ptr [ %i.bj, %bb.y ], [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bl = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bm = sub i64 %i.bl, %i.az                    ; 4 uses
  %i.bn = icmp sgt i64 %i.bm, 4
  br i1 %i.bn, label %bb.z, label %bb.aa, !prof !115

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bk, ptr align 4 %i.ay, i64 %i.bm, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit
  %i.bo = icmp eq i64 %i.bm, 4
  br i1 %i.bo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bp = load i32, ptr %i.ay, align 4, !tbaa !35
  store i32 %i.bp, ptr %i.bk, align 4, !tbaa !35
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bq = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm ; 3 uses
  %i.br = icmp sgt i64 %i.c, 4
  br i1 %i.br, label %bb.ad, label %bb.ae, !prof !115

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bq, ptr align 4 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bs = icmp eq i64 %i.c, 4
  br i1 %i.bs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bt = load i32, ptr %2, align 4, !tbaa !35
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !35
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.c ; 3 uses
  %i.bv = sub i64 %i.j, %i.bl                     ; 4 uses
  %i.bw = icmp sgt i64 %i.bv, 4
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !115

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bu, ptr align 4 %1, i64 %i.bv, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bx = icmp eq i64 %i.bv, 4
  br i1 %i.bx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.by = load i32, ptr %1, align 4, !tbaa !35
  store i32 %i.by, ptr %i.bu, align 4, !tbaa !35
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bz = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %.not.i55 = icmp eq ptr %i.ay, null
  br i1 %.not.i55, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !114
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.cc) #23
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bk, ptr %0, align 8, !tbaa !14
  store ptr %i.bz, ptr %i.g, align 8, !tbaa !12
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bh
  store ptr %i.cd, ptr %i.e, align 8, !tbaa !114
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !22
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.f) #18
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #18 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #19 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #18 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !21
  store i64 %3, ptr %i.c, align 8, !tbaa !22
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS3_INS_9TransposeIKNS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSI_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !116, !nonnull !101, !align !102
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !120, !nonnull !101, !align !102
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !121, !nonnull !101, !align !102 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17, !noalias !124 ; 27 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !21, !noalias !124 ; 25 uses
  %i.i = icmp eq i64 %i.h, 0
  %i.j = icmp sgt i64 %i.h, 1                     ; 3 uses
  br i1 %i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %1 = ptrtoint ptr %i.f to i64                   ; 2 uses
  %i.k = and i64 %1, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.b, label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.preheader: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false), !tbaa !36
  br label %.split12.us

.split12.us:                                      ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.2, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.preheader
  ret void

bb.b:                                             ; preds = %.split.preheader
  %i.l = lshr exact i64 %1, 3
  %i.m = and i64 %i.l, 1
  %i.n = tail call i64 @llvm.smin.i64(i64 %i.m, i64 %i.h)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i: ; preds = %bb.b, %.split.preheader
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.n, %bb.b ], [ %i.h, %.split.preheader ] ; 10 uses
  %i.o = sub nsw i64 %i.h, %.0.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.p = sdiv i64 %i.o, 4
  %i.q = shl nsw i64 %i.p, 2                      ; 2 uses
  %i.r = sdiv i64 %i.o, 2
  %i.s = shl nsw i64 %i.r, 1                      ; 2 uses
  %i.t = add nsw i64 %i.q, %.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.u = add nsw i64 %i.s, %.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.off.i.i.i.i.i.i.i = add i64 %i.o, 1
  %.not.i.i.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i
  %i.v = getelementptr [8 x i8], ptr %i.f, i64 %.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.w = load <2 x double>, ptr %i.v, align 1, !tbaa !74 ; 3 uses
  %i.x = icmp sgt i64 %i.o, 3
  br i1 %i.x, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr i8, ptr %i.v, i64 16
  %i.z = load <2 x double>, ptr %i.y, align 1, !tbaa !74 ; 2 uses
  %i.aa = icmp samesign ugt i64 %i.o, 7
  br i1 %i.aa, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.d
  %.05478.i.i.i.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 4
  br label %.lr.ph.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d
  %.076.lcssa.i.i.i.i.i.i.i = phi <2 x double> [ %i.z, %bb.d ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ]
  %.073.lcssa.i.i.i.i.i.i.i = phi <2 x double> [ %i.w, %bb.d ], [ %i.af, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ab = fadd <2 x double> %.076.lcssa.i.i.i.i.i.i.i, %.073.lcssa.i.i.i.i.i.i.i ; 2 uses
  %i.ac = icmp sgt i64 %i.s, %i.q
  br i1 %i.ac, label %bb.e, label %bb.f

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.05482.i.i.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.05478.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %.054.in81.i.i.i.i.i.i.i = phi i64 [ %.05482.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i ]
  %.07380.i.i.i.i.i.i.i = phi <2 x double> [ %i.af, %.lr.ph.i.i.i.i.i.i.i ], [ %i.w, %.lr.ph.preheader.i.i.i.i.i.i.i ]
  %.07679.i.i.i.i.i.i.i = phi <2 x double> [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ], [ %i.z, %.lr.ph.preheader.i.i.i.i.i.i.i ]
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.05482.i.i.i.i.i.i.i
  %i.ae = load <2 x double>, ptr %i.ad, align 1, !tbaa !74
  %i.af = fadd <2 x double> %.07380.i.i.i.i.i.i.i, %i.ae ; 2 uses
  %i.ag = getelementptr [8 x i8], ptr %i.f, i64 %.054.in81.i.i.i.i.i.i.i
  %i.ah = getelementptr i8, ptr %i.ag, i64 48
  %i.ai = load <2 x double>, ptr %i.ah, align 1, !tbaa !74
  %i.aj = fadd <2 x double> %.07679.i.i.i.i.i.i.i, %i.ai ; 2 uses
  %.054.i.i.i.i.i.i.i = add nsw i64 %.05482.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.ak = icmp slt i64 %.054.i.i.i.i.i.i.i, %i.t
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !127

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.al = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.t
  %i.am = load <2 x double>, ptr %i.al, align 1, !tbaa !74
  %i.an = fadd <2 x double> %i.ab, %i.am
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i.i.i.i, %bb.c
  %.275.i.i.i.i.i.i.i = phi <2 x double> [ %i.w, %bb.c ], [ %i.an, %bb.e ], [ %i.ab, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %shift = shufflevector <2 x double> %.275.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %.275.i.i.i.i.i.i.i, %shift
  %i.ao = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.ap = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ap, label %.lr.ph87.i.i.i.i.i.i.i.preheader, label %.preheader.i.i.i.i.i.i.i

.lr.ph87.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.f
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 7 ; 3 uses
  %i.aq = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.aq, label %.lr.ph87.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph87.i.i.i.i.i.i.i.preheader.new

.lr.ph87.i.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph87.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775800
  br label %.lr.ph87.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.loopexit.unr-lcssa:      ; preds = %.lr.ph87.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.i.i.i.i.i, label %.lr.ph87.i.i.i.i.i.i.i.epil.preheader

.lr.ph87.i.i.i.i.i.i.i.epil.preheader:            ; preds = %.preheader.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph87.i.i.i.i.i.i.i.preheader
  %.05385.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.preheader ], [ %i.cb, %.preheader.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.07284.i.i.i.i.i.i.i.epil.init = phi double [ %i.ao, %.lr.ph87.i.i.i.i.i.i.i.preheader ], [ %i.ca, %.preheader.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod84 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod84)
  br label %.lr.ph87.i.i.i.i.i.i.i.epil

.lr.ph87.i.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph87.i.i.i.i.i.i.i.epil, %.lr.ph87.i.i.i.i.i.i.i.epil.preheader
  %.05385.i.i.i.i.i.i.i.epil = phi i64 [ %i.au, %.lr.ph87.i.i.i.i.i.i.i.epil ], [ %.05385.i.i.i.i.i.i.i.epil.init, %.lr.ph87.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.07284.i.i.i.i.i.i.i.epil = phi double [ %i.at, %.lr.ph87.i.i.i.i.i.i.i.epil ], [ %.07284.i.i.i.i.i.i.i.epil.init, %.lr.ph87.i.i.i.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph87.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph87.i.i.i.i.i.i.i.epil.preheader ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05385.i.i.i.i.i.i.i.epil
  %i.as = load double, ptr %i.ar, align 8, !tbaa !36
  %i.at = fadd double %.07284.i.i.i.i.i.i.i.epil, %i.as ; 2 uses
  %i.au = add nuw nsw i64 %.05385.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i.i.i.i.i.i.i, label %.lr.ph87.i.i.i.i.i.i.i.epil, !llvm.loop !128

.preheader.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph87.i.i.i.i.i.i.i.epil, %bb.f
  %.072.lcssa.i.i.i.i.i.i.i = phi double [ %i.ao, %bb.f ], [ %i.ca, %.preheader.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.at, %.lr.ph87.i.i.i.i.i.i.i.epil ] ; 2 uses
  %i.av = icmp slt i64 %i.u, %i.h
  br i1 %i.av, label %.lr.ph91.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit

.lr.ph87.i.i.i.i.i.i.i:                           ; preds = %.lr.ph87.i.i.i.i.i.i.i, %.lr.ph87.i.i.i.i.i.i.i.preheader.new
  %.05385.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.preheader.new ], [ %i.cb, %.lr.ph87.i.i.i.i.i.i.i ] ; 9 uses
  %.07284.i.i.i.i.i.i.i = phi double [ %i.ao, %.lr.ph87.i.i.i.i.i.i.i.preheader.new ], [ %i.ca, %.lr.ph87.i.i.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph87.i.i.i.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05385.i.i.i.i.i.i.i
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !36
  %i.ay = fadd double %.07284.i.i.i.i.i.i.i, %i.ax
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05385.i.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !36
  %i.bc = fadd double %i.ay, %i.bb
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05385.i.i.i.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load double, ptr %i.be, align 8, !tbaa !36
  %i.bg = fadd double %i.bc, %i.bf
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05385.i.i.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !36
  %i.bk = fadd double %i.bg, %i.bj
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05385.i.i.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !36
  %i.bo = fadd double %i.bk, %i.bn
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05385.i.i.i.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.br = load double, ptr %i.bq, align 8, !tbaa !36
  %i.bs = fadd double %i.bo, %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05385.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !36
  %i.bw = fadd double %i.bs, %i.bv
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05385.i.i.i.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %i.bz = load double, ptr %i.by, align 8, !tbaa !36
  %i.ca = fadd double %i.bw, %i.bz                ; 3 uses
  %i.cb = add nuw nsw i64 %.05385.i.i.i.i.i.i.i, 8 ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph87.i.i.i.i.i.i.i, !llvm.loop !129

.lr.ph91.i.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i.i, %.lr.ph91.i.i.i.i.i.i.i
  %.05290.i.i.i.i.i.i.i = phi i64 [ %i.cf, %.lr.ph91.i.i.i.i.i.i.i ], [ %i.u, %.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.189.i.i.i.i.i.i.i = phi double [ %i.ce, %.lr.ph91.i.i.i.i.i.i.i ], [ %.072.lcssa.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i ]
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.05290.i.i.i.i.i.i.i
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !36
  %i.ce = fadd double %.189.i.i.i.i.i.i.i, %i.cd  ; 2 uses
  %i.cf = add nsw i64 %.05290.i.i.i.i.i.i.i, 1    ; 2 uses
  %i.cg = icmp slt i64 %i.cf, %i.h
  br i1 %i.cg, label %.lr.ph91.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit, !llvm.loop !130

bb.g:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i
  %i.ch = load double, ptr %i.f, align 8, !tbaa !36 ; 3 uses
  br i1 %i.j, label %.lr.ph96.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit

.lr.ph96.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.g
  %i.ci = add nsw i64 %i.h, -1                    ; 2 uses
  %i.cj = add nsw i64 %i.h, -2
  %xtraiter93 = and i64 %i.ci, 7                  ; 3 uses
  %i.ck = icmp ult i64 %i.cj, 7
  br i1 %i.ck, label %.lr.ph96.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph96.i.i.i.i.i.i.i.preheader.new

.lr.ph96.i.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph96.i.i.i.i.i.i.i.preheader
  %unroll_iter98 = and i64 %i.ci, -8
  br label %.lr.ph96.i.i.i.i.i.i.i

.lr.ph96.i.i.i.i.i.i.i:                           ; preds = %.lr.ph96.i.i.i.i.i.i.i, %.lr.ph96.i.i.i.i.i.i.i.preheader.new
  %.094.i.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph96.i.i.i.i.i.i.i.preheader.new ], [ %i.dq, %.lr.ph96.i.i.i.i.i.i.i ] ; 9 uses
  %.293.i.i.i.i.i.i.i = phi double [ %i.ch, %.lr.ph96.i.i.i.i.i.i.i.preheader.new ], [ %i.dp, %.lr.ph96.i.i.i.i.i.i.i ]
  %niter99 = phi i64 [ 0, %.lr.ph96.i.i.i.i.i.i.i.preheader.new ], [ %niter99.next.7, %.lr.ph96.i.i.i.i.i.i.i ]
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.094.i.i.i.i.i.i.i
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !36
  %i.cn = fadd double %.293.i.i.i.i.i.i.i, %i.cm
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.094.i.i.i.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !36
  %i.cr = fadd double %i.cn, %i.cq
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.094.i.i.i.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !36
  %i.cv = fadd double %i.cr, %i.cu
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.094.i.i.i.i.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !36
  %i.cz = fadd double %i.cv, %i.cy
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.094.i.i.i.i.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dc = load double, ptr %i.db, align 8, !tbaa !36
  %i.dd = fadd double %i.cz, %i.dc
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.094.i.i.i.i.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.dg = load double, ptr %i.df, align 8, !tbaa !36
  %i.dh = fadd double %i.dd, %i.dg
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.094.i.i.i.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !36
  %i.dl = fadd double %i.dh, %i.dk
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.094.i.i.i.i.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  %i.do = load double, ptr %i.dn, align 8, !tbaa !36
  %i.dp = fadd double %i.dl, %i.do                ; 3 uses
  %i.dq = add nuw nsw i64 %.094.i.i.i.i.i.i.i, 8  ; 2 uses
  %niter99.next.7 = add i64 %niter99, 8           ; 2 uses
  %niter99.ncmp.7 = icmp eq i64 %niter99.next.7, %unroll_iter98
  br i1 %niter99.ncmp.7, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.unr-lcssa, label %.lr.ph96.i.i.i.i.i.i.i, !llvm.loop !131

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.unr-lcssa: ; preds = %.lr.ph96.i.i.i.i.i.i.i
  %lcmp.mod95.not = icmp eq i64 %xtraiter93, 0
  br i1 %lcmp.mod95.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit, label %.lr.ph96.i.i.i.i.i.i.i.epil.preheader

.lr.ph96.i.i.i.i.i.i.i.epil.preheader:            ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.unr-lcssa, %.lr.ph96.i.i.i.i.i.i.i.preheader
  %.094.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph96.i.i.i.i.i.i.i.preheader ], [ %i.dq, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.unr-lcssa ]
  %.293.i.i.i.i.i.i.i.epil.init = phi double [ %i.ch, %.lr.ph96.i.i.i.i.i.i.i.preheader ], [ %i.dp, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.unr-lcssa ]
  %lcmp.mod97 = icmp ne i64 %xtraiter93, 0
  tail call void @llvm.assume(i1 %lcmp.mod97)
  br label %.lr.ph96.i.i.i.i.i.i.i.epil

.lr.ph96.i.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph96.i.i.i.i.i.i.i.epil, %.lr.ph96.i.i.i.i.i.i.i.epil.preheader
  %.094.i.i.i.i.i.i.i.epil = phi i64 [ %i.du, %.lr.ph96.i.i.i.i.i.i.i.epil ], [ %.094.i.i.i.i.i.i.i.epil.init, %.lr.ph96.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.293.i.i.i.i.i.i.i.epil = phi double [ %i.dt, %.lr.ph96.i.i.i.i.i.i.i.epil ], [ %.293.i.i.i.i.i.i.i.epil.init, %.lr.ph96.i.i.i.i.i.i.i.epil.preheader ]
  %epil.iter94 = phi i64 [ %epil.iter94.next, %.lr.ph96.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph96.i.i.i.i.i.i.i.epil.preheader ]
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.094.i.i.i.i.i.i.i.epil
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !36
  %i.dt = fadd double %.293.i.i.i.i.i.i.i.epil, %i.ds ; 2 uses
  %i.du = add nuw nsw i64 %.094.i.i.i.i.i.i.i.epil, 1
  %epil.iter94.next = add i64 %epil.iter94, 1     ; 2 uses
  %epil.iter94.cmp.not = icmp eq i64 %epil.iter94.next, %xtraiter93
  br i1 %epil.iter94.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit, label %.lr.ph96.i.i.i.i.i.i.i.epil, !llvm.loop !132

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit: ; preds = %.lr.ph91.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.unr-lcssa, %.lr.ph96.i.i.i.i.i.i.i.epil, %.preheader.i.i.i.i.i.i.i, %bb.g
  %.0.i.i.i.i.i = phi double [ %i.dt, %.lr.ph96.i.i.i.i.i.i.i.epil ], [ %.072.lcssa.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i ], [ %i.ch, %bb.g ], [ %i.dp, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.unr-lcssa ], [ %i.ce, %.lr.ph91.i.i.i.i.i.i.i ]
  store double %.0.i.i.i.i.i, ptr %i.b, align 8, !tbaa !36
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.h ; 25 uses
  %2 = ptrtoint ptr %i.dv to i64                  ; 2 uses
  %3 = and i64 %2, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %3, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.1, label %bb.h, label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.1

bb.h:                                             ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit
  %i.dw = lshr exact i64 %2, 3
  %i.dx = and i64 %i.dw, 1
  %i.dy = tail call i64 @llvm.smin.i64(i64 %i.dx, i64 %i.h)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.1

_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.1: ; preds = %bb.h, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit
  %.0.i.i.i.i.i.i.i.i.i.i.i.1 = phi i64 [ %i.dy, %bb.h ], [ %i.h, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit ] ; 10 uses
  %i.dz = sub nsw i64 %i.h, %.0.i.i.i.i.i.i.i.i.i.i.i.1 ; 5 uses
  %i.ea = sdiv i64 %i.dz, 4
  %i.eb = shl nsw i64 %i.ea, 2                    ; 2 uses
  %i.ec = sdiv i64 %i.dz, 2
  %i.ed = shl nsw i64 %i.ec, 1                    ; 2 uses
  %i.ee = add nsw i64 %i.eb, %.0.i.i.i.i.i.i.i.i.i.i.i.1 ; 2 uses
  %i.ef = add nsw i64 %i.ed, %.0.i.i.i.i.i.i.i.i.i.i.i.1 ; 2 uses
  %.off.i.i.i.i.i.i.i.1 = add i64 %i.dz, 1
  %.not.i.i.i.i.i.i.i.1 = icmp ult i64 %.off.i.i.i.i.i.i.i.1, 3
  br i1 %.not.i.i.i.i.i.i.i.1, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.1
  %i.eg = getelementptr [8 x i8], ptr %i.dv, i64 %.0.i.i.i.i.i.i.i.i.i.i.i.1 ; 2 uses
  %i.eh = load <2 x double>, ptr %i.eg, align 1, !tbaa !74 ; 3 uses
  %i.ei = icmp sgt i64 %i.dz, 3
  br i1 %i.ei, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ej = getelementptr i8, ptr %i.eg, i64 16
  %i.ek = load <2 x double>, ptr %i.ej, align 1, !tbaa !74 ; 2 uses
  %i.el = icmp samesign ugt i64 %i.dz, 7
  br i1 %i.el, label %.lr.ph.preheader.i.i.i.i.i.i.i.1, label %._crit_edge.i.i.i.i.i.i.i.1

.lr.ph.preheader.i.i.i.i.i.i.i.1:                 ; preds = %bb.j
  %.05478.i.i.i.i.i.i.i.1 = add nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.1, 4
  br label %.lr.ph.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.1:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.1, %.lr.ph.preheader.i.i.i.i.i.i.i.1
  %.05482.i.i.i.i.i.i.i.1 = phi i64 [ %.054.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.1 ], [ %.05478.i.i.i.i.i.i.i.1, %.lr.ph.preheader.i.i.i.i.i.i.i.1 ] ; 3 uses
  %.054.in81.i.i.i.i.i.i.i.1 = phi i64 [ %.05482.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.1 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.preheader.i.i.i.i.i.i.i.1 ]
  %.07380.i.i.i.i.i.i.i.1 = phi <2 x double> [ %i.eo, %.lr.ph.i.i.i.i.i.i.i.1 ], [ %i.eh, %.lr.ph.preheader.i.i.i.i.i.i.i.1 ]
  %.07679.i.i.i.i.i.i.i.1 = phi <2 x double> [ %i.es, %.lr.ph.i.i.i.i.i.i.i.1 ], [ %i.ek, %.lr.ph.preheader.i.i.i.i.i.i.i.1 ]
  %i.em = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %.05482.i.i.i.i.i.i.i.1
  %i.en = load <2 x double>, ptr %i.em, align 1, !tbaa !74
  %i.eo = fadd <2 x double> %.07380.i.i.i.i.i.i.i.1, %i.en ; 2 uses
  %i.ep = getelementptr [8 x i8], ptr %i.dv, i64 %.054.in81.i.i.i.i.i.i.i.1
  %i.eq = getelementptr i8, ptr %i.ep, i64 48
  %i.er = load <2 x double>, ptr %i.eq, align 1, !tbaa !74
  %i.es = fadd <2 x double> %.07679.i.i.i.i.i.i.i.1, %i.er ; 2 uses
  %.054.i.i.i.i.i.i.i.1 = add nsw i64 %.05482.i.i.i.i.i.i.i.1, 4 ; 2 uses
  %i.et = icmp slt i64 %.054.i.i.i.i.i.i.i.1, %i.ee
  br i1 %i.et, label %.lr.ph.i.i.i.i.i.i.i.1, label %._crit_edge.i.i.i.i.i.i.i.1, !llvm.loop !127

._crit_edge.i.i.i.i.i.i.i.1:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.1, %bb.j
  %.076.lcssa.i.i.i.i.i.i.i.1 = phi <2 x double> [ %i.ek, %bb.j ], [ %i.es, %.lr.ph.i.i.i.i.i.i.i.1 ]
  %.073.lcssa.i.i.i.i.i.i.i.1 = phi <2 x double> [ %i.eh, %bb.j ], [ %i.eo, %.lr.ph.i.i.i.i.i.i.i.1 ]
  %i.eu = fadd <2 x double> %.076.lcssa.i.i.i.i.i.i.i.1, %.073.lcssa.i.i.i.i.i.i.i.1 ; 2 uses
  %i.ev = icmp sgt i64 %i.ed, %i.eb
  br i1 %i.ev, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.1
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.ee
  %i.ex = load <2 x double>, ptr %i.ew, align 1, !tbaa !74
  %i.ey = fadd <2 x double> %i.eu, %i.ex
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i.i.i.i.1, %bb.i
  %.275.i.i.i.i.i.i.i.1 = phi <2 x double> [ %i.eh, %bb.i ], [ %i.ey, %bb.k ], [ %i.eu, %._crit_edge.i.i.i.i.i.i.i.1 ] ; 2 uses
  %shift60 = shufflevector <2 x double> %.275.i.i.i.i.i.i.i.1, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop61 = fadd <2 x double> %.275.i.i.i.i.i.i.i.1, %shift60
  %i.ez = extractelement <2 x double> %foldExtExtBinop61, i64 0 ; 3 uses
  %i.fa = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.1, 0
  br i1 %i.fa, label %.lr.ph87.i.i.i.i.i.i.i.1.preheader, label %.preheader.i.i.i.i.i.i.i.1

.lr.ph87.i.i.i.i.i.i.i.1.preheader:               ; preds = %bb.l
  %xtraiter108 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.1, 7 ; 3 uses
  %i.fb = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.1, 8
  br i1 %i.fb, label %.lr.ph87.i.i.i.i.i.i.i.1.epil.preheader, label %.lr.ph87.i.i.i.i.i.i.i.1.preheader.new

.lr.ph87.i.i.i.i.i.i.i.1.preheader.new:           ; preds = %.lr.ph87.i.i.i.i.i.i.i.1.preheader
  %unroll_iter113 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.1, 9223372036854775800
  br label %.lr.ph87.i.i.i.i.i.i.i.1

.lr.ph87.i.i.i.i.i.i.i.1:                         ; preds = %.lr.ph87.i.i.i.i.i.i.i.1, %.lr.ph87.i.i.i.i.i.i.i.1.preheader.new
  %.05385.i.i.i.i.i.i.i.1 = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.1.preheader.new ], [ %i.gh, %.lr.ph87.i.i.i.i.i.i.i.1 ] ; 9 uses
  %.07284.i.i.i.i.i.i.i.1 = phi double [ %i.ez, %.lr.ph87.i.i.i.i.i.i.i.1.preheader.new ], [ %i.gg, %.lr.ph87.i.i.i.i.i.i.i.1 ]
  %niter114 = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.1.preheader.new ], [ %niter114.next.7, %.lr.ph87.i.i.i.i.i.i.i.1 ]
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.05385.i.i.i.i.i.i.i.1
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !36
  %i.fe = fadd double %.07284.i.i.i.i.i.i.i.1, %i.fd
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.05385.i.i.i.i.i.i.i.1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !36
  %i.fi = fadd double %i.fe, %i.fh
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.05385.i.i.i.i.i.i.i.1
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !36
  %i.fm = fadd double %i.fi, %i.fl
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.05385.i.i.i.i.i.i.i.1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !36
  %i.fq = fadd double %i.fm, %i.fp
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.05385.i.i.i.i.i.i.i.1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 32
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !36
  %i.fu = fadd double %i.fq, %i.ft
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.05385.i.i.i.i.i.i.i.1
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 40
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !36
  %i.fy = fadd double %i.fu, %i.fx
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.05385.i.i.i.i.i.i.i.1
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 48
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !36
  %i.gc = fadd double %i.fy, %i.gb
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.05385.i.i.i.i.i.i.i.1
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 56
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !36
  %i.gg = fadd double %i.gc, %i.gf                ; 3 uses
  %i.gh = add nuw nsw i64 %.05385.i.i.i.i.i.i.i.1, 8 ; 2 uses
  %niter114.next.7 = add nuw nsw i64 %niter114, 8 ; 2 uses
  %niter114.ncmp.7 = icmp eq i64 %niter114.next.7, %unroll_iter113
  br i1 %niter114.ncmp.7, label %.preheader.i.i.i.i.i.i.i.1.loopexit.unr-lcssa, label %.lr.ph87.i.i.i.i.i.i.i.1, !llvm.loop !129

.preheader.i.i.i.i.i.i.i.1.loopexit.unr-lcssa:    ; preds = %.lr.ph87.i.i.i.i.i.i.i.1
  %lcmp.mod110.not = icmp eq i64 %xtraiter108, 0
  br i1 %lcmp.mod110.not, label %.preheader.i.i.i.i.i.i.i.1, label %.lr.ph87.i.i.i.i.i.i.i.1.epil.preheader

.lr.ph87.i.i.i.i.i.i.i.1.epil.preheader:          ; preds = %.preheader.i.i.i.i.i.i.i.1.loopexit.unr-lcssa, %.lr.ph87.i.i.i.i.i.i.i.1.preheader
  %.05385.i.i.i.i.i.i.i.1.epil.init = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.1.preheader ], [ %i.gh, %.preheader.i.i.i.i.i.i.i.1.loopexit.unr-lcssa ]
  %.07284.i.i.i.i.i.i.i.1.epil.init = phi double [ %i.ez, %.lr.ph87.i.i.i.i.i.i.i.1.preheader ], [ %i.gg, %.preheader.i.i.i.i.i.i.i.1.loopexit.unr-lcssa ]
  %lcmp.mod112 = icmp ne i64 %xtraiter108, 0
  tail call void @llvm.assume(i1 %lcmp.mod112)
  br label %.lr.ph87.i.i.i.i.i.i.i.1.epil

.lr.ph87.i.i.i.i.i.i.i.1.epil:                    ; preds = %.lr.ph87.i.i.i.i.i.i.i.1.epil, %.lr.ph87.i.i.i.i.i.i.i.1.epil.preheader
  %.05385.i.i.i.i.i.i.i.1.epil = phi i64 [ %i.gl, %.lr.ph87.i.i.i.i.i.i.i.1.epil ], [ %.05385.i.i.i.i.i.i.i.1.epil.init, %.lr.ph87.i.i.i.i.i.i.i.1.epil.preheader ] ; 2 uses
  %.07284.i.i.i.i.i.i.i.1.epil = phi double [ %i.gk, %.lr.ph87.i.i.i.i.i.i.i.1.epil ], [ %.07284.i.i.i.i.i.i.i.1.epil.init, %.lr.ph87.i.i.i.i.i.i.i.1.epil.preheader ]
  %epil.iter109 = phi i64 [ %epil.iter109.next, %.lr.ph87.i.i.i.i.i.i.i.1.epil ], [ 0, %.lr.ph87.i.i.i.i.i.i.i.1.epil.preheader ]
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.05385.i.i.i.i.i.i.i.1.epil
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !36
  %i.gk = fadd double %.07284.i.i.i.i.i.i.i.1.epil, %i.gj ; 2 uses
  %i.gl = add nuw nsw i64 %.05385.i.i.i.i.i.i.i.1.epil, 1
  %epil.iter109.next = add i64 %epil.iter109, 1   ; 2 uses
  %epil.iter109.cmp.not = icmp eq i64 %epil.iter109.next, %xtraiter108
  br i1 %epil.iter109.cmp.not, label %.preheader.i.i.i.i.i.i.i.1, label %.lr.ph87.i.i.i.i.i.i.i.1.epil, !llvm.loop !133

.preheader.i.i.i.i.i.i.i.1:                       ; preds = %.preheader.i.i.i.i.i.i.i.1.loopexit.unr-lcssa, %.lr.ph87.i.i.i.i.i.i.i.1.epil, %bb.l
  %.072.lcssa.i.i.i.i.i.i.i.1 = phi double [ %i.ez, %bb.l ], [ %i.gg, %.preheader.i.i.i.i.i.i.i.1.loopexit.unr-lcssa ], [ %i.gk, %.lr.ph87.i.i.i.i.i.i.i.1.epil ] ; 2 uses
  %i.gm = icmp slt i64 %i.ef, %i.h
  br i1 %i.gm, label %.lr.ph91.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.1

.lr.ph91.i.i.i.i.i.i.i.1:                         ; preds = %.preheader.i.i.i.i.i.i.i.1, %.lr.ph91.i.i.i.i.i.i.i.1
  %.05290.i.i.i.i.i.i.i.1 = phi i64 [ %i.gq, %.lr.ph91.i.i.i.i.i.i.i.1 ], [ %i.ef, %.preheader.i.i.i.i.i.i.i.1 ] ; 2 uses
  %.189.i.i.i.i.i.i.i.1 = phi double [ %i.gp, %.lr.ph91.i.i.i.i.i.i.i.1 ], [ %.072.lcssa.i.i.i.i.i.i.i.1, %.preheader.i.i.i.i.i.i.i.1 ]
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %.05290.i.i.i.i.i.i.i.1
  %i.go = load double, ptr %i.gn, align 8, !tbaa !36
  %i.gp = fadd double %.189.i.i.i.i.i.i.i.1, %i.go ; 2 uses
  %i.gq = add nsw i64 %.05290.i.i.i.i.i.i.i.1, 1  ; 2 uses
  %i.gr = icmp slt i64 %i.gq, %i.h
  br i1 %i.gr, label %.lr.ph91.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.1, !llvm.loop !130

bb.m:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.1
  %i.gs = load double, ptr %i.dv, align 8, !tbaa !36 ; 3 uses
  br i1 %i.j, label %.lr.ph96.i.i.i.i.i.i.i.1.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.1

.lr.ph96.i.i.i.i.i.i.i.1.preheader:               ; preds = %bb.m
  %i.gt = add nsw i64 %i.h, -1                    ; 2 uses
  %i.gu = add nsw i64 %i.h, -2
  %xtraiter115 = and i64 %i.gt, 7                 ; 3 uses
  %i.gv = icmp ult i64 %i.gu, 7
  br i1 %i.gv, label %.lr.ph96.i.i.i.i.i.i.i.1.epil.preheader, label %.lr.ph96.i.i.i.i.i.i.i.1.preheader.new

.lr.ph96.i.i.i.i.i.i.i.1.preheader.new:           ; preds = %.lr.ph96.i.i.i.i.i.i.i.1.preheader
  %unroll_iter120 = and i64 %i.gt, -8
  br label %.lr.ph96.i.i.i.i.i.i.i.1

.lr.ph96.i.i.i.i.i.i.i.1:                         ; preds = %.lr.ph96.i.i.i.i.i.i.i.1, %.lr.ph96.i.i.i.i.i.i.i.1.preheader.new
  %.094.i.i.i.i.i.i.i.1 = phi i64 [ 1, %.lr.ph96.i.i.i.i.i.i.i.1.preheader.new ], [ %i.ib, %.lr.ph96.i.i.i.i.i.i.i.1 ] ; 9 uses
  %.293.i.i.i.i.i.i.i.1 = phi double [ %i.gs, %.lr.ph96.i.i.i.i.i.i.i.1.preheader.new ], [ %i.ia, %.lr.ph96.i.i.i.i.i.i.i.1 ]
  %niter121 = phi i64 [ 0, %.lr.ph96.i.i.i.i.i.i.i.1.preheader.new ], [ %niter121.next.7, %.lr.ph96.i.i.i.i.i.i.i.1 ]
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.094.i.i.i.i.i.i.i.1
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !36
  %i.gy = fadd double %.293.i.i.i.i.i.i.i.1, %i.gx
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.094.i.i.i.i.i.i.i.1
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !36
  %i.hc = fadd double %i.gy, %i.hb
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.094.i.i.i.i.i.i.i.1
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = load double, ptr %i.he, align 8, !tbaa !36
  %i.hg = fadd double %i.hc, %i.hf
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.094.i.i.i.i.i.i.i.1
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !36
  %i.hk = fadd double %i.hg, %i.hj
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.094.i.i.i.i.i.i.i.1
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 32
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !36
  %i.ho = fadd double %i.hk, %i.hn
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.094.i.i.i.i.i.i.i.1
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 40
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !36
  %i.hs = fadd double %i.ho, %i.hr
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.094.i.i.i.i.i.i.i.1
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 48
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !36
  %i.hw = fadd double %i.hs, %i.hv
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.094.i.i.i.i.i.i.i.1
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 56
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !36
  %i.ia = fadd double %i.hw, %i.hz                ; 3 uses
  %i.ib = add nuw nsw i64 %.094.i.i.i.i.i.i.i.1, 8 ; 2 uses
  %niter121.next.7 = add i64 %niter121, 8         ; 2 uses
  %niter121.ncmp.7 = icmp eq i64 %niter121.next.7, %unroll_iter120
  br i1 %niter121.ncmp.7, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.1.loopexit.unr-lcssa, label %.lr.ph96.i.i.i.i.i.i.i.1, !llvm.loop !131

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.1.loopexit.unr-lcssa: ; preds = %.lr.ph96.i.i.i.i.i.i.i.1
  %lcmp.mod117.not = icmp eq i64 %xtraiter115, 0
  br i1 %lcmp.mod117.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.1, label %.lr.ph96.i.i.i.i.i.i.i.1.epil.preheader

.lr.ph96.i.i.i.i.i.i.i.1.epil.preheader:          ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.1.loopexit.unr-lcssa, %.lr.ph96.i.i.i.i.i.i.i.1.preheader
  %.094.i.i.i.i.i.i.i.1.epil.init = phi i64 [ 1, %.lr.ph96.i.i.i.i.i.i.i.1.preheader ], [ %i.ib, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.1.loopexit.unr-lcssa ]
  %.293.i.i.i.i.i.i.i.1.epil.init = phi double [ %i.gs, %.lr.ph96.i.i.i.i.i.i.i.1.preheader ], [ %i.ia, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.1.loopexit.unr-lcssa ]
  %lcmp.mod119 = icmp ne i64 %xtraiter115, 0
  tail call void @llvm.assume(i1 %lcmp.mod119)
  br label %.lr.ph96.i.i.i.i.i.i.i.1.epil

.lr.ph96.i.i.i.i.i.i.i.1.epil:                    ; preds = %.lr.ph96.i.i.i.i.i.i.i.1.epil, %.lr.ph96.i.i.i.i.i.i.i.1.epil.preheader
  %.094.i.i.i.i.i.i.i.1.epil = phi i64 [ %i.if, %.lr.ph96.i.i.i.i.i.i.i.1.epil ], [ %.094.i.i.i.i.i.i.i.1.epil.init, %.lr.ph96.i.i.i.i.i.i.i.1.epil.preheader ] ; 2 uses
  %.293.i.i.i.i.i.i.i.1.epil = phi double [ %i.ie, %.lr.ph96.i.i.i.i.i.i.i.1.epil ], [ %.293.i.i.i.i.i.i.i.1.epil.init, %.lr.ph96.i.i.i.i.i.i.i.1.epil.preheader ]
  %epil.iter116 = phi i64 [ %epil.iter116.next, %.lr.ph96.i.i.i.i.i.i.i.1.epil ], [ 0, %.lr.ph96.i.i.i.i.i.i.i.1.epil.preheader ]
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.094.i.i.i.i.i.i.i.1.epil
  %i.id = load double, ptr %i.ic, align 8, !tbaa !36
  %i.ie = fadd double %.293.i.i.i.i.i.i.i.1.epil, %i.id ; 2 uses
  %i.if = add nuw nsw i64 %.094.i.i.i.i.i.i.i.1.epil, 1
  %epil.iter116.next = add i64 %epil.iter116, 1   ; 2 uses
  %epil.iter116.cmp.not = icmp eq i64 %epil.iter116.next, %xtraiter115
  br i1 %epil.iter116.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.1, label %.lr.ph96.i.i.i.i.i.i.i.1.epil, !llvm.loop !134

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.1: ; preds = %.lr.ph91.i.i.i.i.i.i.i.1, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.1.loopexit.unr-lcssa, %.lr.ph96.i.i.i.i.i.i.i.1.epil, %bb.m, %.preheader.i.i.i.i.i.i.i.1
  %.0.i.i.i.i.i.1 = phi double [ %i.ie, %.lr.ph96.i.i.i.i.i.i.i.1.epil ], [ %.072.lcssa.i.i.i.i.i.i.i.1, %.preheader.i.i.i.i.i.i.i.1 ], [ %i.gs, %bb.m ], [ %i.ia, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.1.loopexit.unr-lcssa ], [ %i.gp, %.lr.ph91.i.i.i.i.i.i.i.1 ]
  %i.ig = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %.0.i.i.i.i.i.1, ptr %i.ig, align 8, !tbaa !36
  %.idx = shl nsw i64 %i.h, 4
  %i.ih = getelementptr inbounds i8, ptr %i.f, i64 %.idx ; 25 uses
  %4 = ptrtoint ptr %i.ih to i64                  ; 2 uses
  %5 = and i64 %4, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.2 = icmp eq i64 %5, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.2, label %bb.n, label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.2

bb.n:                                             ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.1
  %i.ii = lshr exact i64 %4, 3
  %i.ij = and i64 %i.ii, 1
  %i.ik = tail call i64 @llvm.smin.i64(i64 %i.ij, i64 %i.h)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.2

_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.2: ; preds = %bb.n, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.1
  %.0.i.i.i.i.i.i.i.i.i.i.i.2 = phi i64 [ %i.ik, %bb.n ], [ %i.h, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.1 ] ; 10 uses
  %i.il = sub nsw i64 %i.h, %.0.i.i.i.i.i.i.i.i.i.i.i.2 ; 5 uses
  %i.im = sdiv i64 %i.il, 4
  %i.in = shl nsw i64 %i.im, 2                    ; 2 uses
  %i.io = sdiv i64 %i.il, 2
  %i.ip = shl nsw i64 %i.io, 1                    ; 2 uses
  %i.iq = add nsw i64 %i.in, %.0.i.i.i.i.i.i.i.i.i.i.i.2 ; 2 uses
  %i.ir = add nsw i64 %i.ip, %.0.i.i.i.i.i.i.i.i.i.i.i.2 ; 2 uses
  %.off.i.i.i.i.i.i.i.2 = add i64 %i.il, 1
  %.not.i.i.i.i.i.i.i.2 = icmp ult i64 %.off.i.i.i.i.i.i.i.2, 3
  br i1 %.not.i.i.i.i.i.i.i.2, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.2
  %i.is = getelementptr [8 x i8], ptr %i.ih, i64 %.0.i.i.i.i.i.i.i.i.i.i.i.2 ; 2 uses
  %i.it = load <2 x double>, ptr %i.is, align 1, !tbaa !74 ; 3 uses
  %i.iu = icmp sgt i64 %i.il, 3
  br i1 %i.iu, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.iv = getelementptr i8, ptr %i.is, i64 16
  %i.iw = load <2 x double>, ptr %i.iv, align 1, !tbaa !74 ; 2 uses
  %i.ix = icmp samesign ugt i64 %i.il, 7
  br i1 %i.ix, label %.lr.ph.preheader.i.i.i.i.i.i.i.2, label %._crit_edge.i.i.i.i.i.i.i.2

.lr.ph.preheader.i.i.i.i.i.i.i.2:                 ; preds = %bb.p
  %.05478.i.i.i.i.i.i.i.2 = add nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.2, 4
  br label %.lr.ph.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.2:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.2, %.lr.ph.preheader.i.i.i.i.i.i.i.2
  %.05482.i.i.i.i.i.i.i.2 = phi i64 [ %.054.i.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.i.2 ], [ %.05478.i.i.i.i.i.i.i.2, %.lr.ph.preheader.i.i.i.i.i.i.i.2 ] ; 3 uses
  %.054.in81.i.i.i.i.i.i.i.2 = phi i64 [ %.05482.i.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.i.2 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.2, %.lr.ph.preheader.i.i.i.i.i.i.i.2 ]
  %.07380.i.i.i.i.i.i.i.2 = phi <2 x double> [ %i.ja, %.lr.ph.i.i.i.i.i.i.i.2 ], [ %i.it, %.lr.ph.preheader.i.i.i.i.i.i.i.2 ]
  %.07679.i.i.i.i.i.i.i.2 = phi <2 x double> [ %i.je, %.lr.ph.i.i.i.i.i.i.i.2 ], [ %i.iw, %.lr.ph.preheader.i.i.i.i.i.i.i.2 ]
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %.05482.i.i.i.i.i.i.i.2
  %i.iz = load <2 x double>, ptr %i.iy, align 1, !tbaa !74
  %i.ja = fadd <2 x double> %.07380.i.i.i.i.i.i.i.2, %i.iz ; 2 uses
  %i.jb = getelementptr [8 x i8], ptr %i.ih, i64 %.054.in81.i.i.i.i.i.i.i.2
  %i.jc = getelementptr i8, ptr %i.jb, i64 48
  %i.jd = load <2 x double>, ptr %i.jc, align 1, !tbaa !74
  %i.je = fadd <2 x double> %.07679.i.i.i.i.i.i.i.2, %i.jd ; 2 uses
  %.054.i.i.i.i.i.i.i.2 = add nsw i64 %.05482.i.i.i.i.i.i.i.2, 4 ; 2 uses
  %i.jf = icmp slt i64 %.054.i.i.i.i.i.i.i.2, %i.iq
  br i1 %i.jf, label %.lr.ph.i.i.i.i.i.i.i.2, label %._crit_edge.i.i.i.i.i.i.i.2, !llvm.loop !127

._crit_edge.i.i.i.i.i.i.i.2:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.2, %bb.p
  %.076.lcssa.i.i.i.i.i.i.i.2 = phi <2 x double> [ %i.iw, %bb.p ], [ %i.je, %.lr.ph.i.i.i.i.i.i.i.2 ]
  %.073.lcssa.i.i.i.i.i.i.i.2 = phi <2 x double> [ %i.it, %bb.p ], [ %i.ja, %.lr.ph.i.i.i.i.i.i.i.2 ]
  %i.jg = fadd <2 x double> %.076.lcssa.i.i.i.i.i.i.i.2, %.073.lcssa.i.i.i.i.i.i.i.2 ; 2 uses
  %i.jh = icmp sgt i64 %i.ip, %i.in
  br i1 %i.jh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.2
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.iq
  %i.jj = load <2 x double>, ptr %i.ji, align 1, !tbaa !74
  %i.jk = fadd <2 x double> %i.jg, %i.jj
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i.i.i.i.i.2, %bb.o
  %.275.i.i.i.i.i.i.i.2 = phi <2 x double> [ %i.it, %bb.o ], [ %i.jk, %bb.q ], [ %i.jg, %._crit_edge.i.i.i.i.i.i.i.2 ] ; 2 uses
  %shift63 = shufflevector <2 x double> %.275.i.i.i.i.i.i.i.2, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop64 = fadd <2 x double> %.275.i.i.i.i.i.i.i.2, %shift63
  %i.jl = extractelement <2 x double> %foldExtExtBinop64, i64 0 ; 3 uses
  %i.jm = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.2, 0
  br i1 %i.jm, label %.lr.ph87.i.i.i.i.i.i.i.2.preheader, label %.preheader.i.i.i.i.i.i.i.2

.lr.ph87.i.i.i.i.i.i.i.2.preheader:               ; preds = %bb.r
  %xtraiter122 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.2, 7 ; 3 uses
  %i.jn = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.2, 8
  br i1 %i.jn, label %.lr.ph87.i.i.i.i.i.i.i.2.epil.preheader, label %.lr.ph87.i.i.i.i.i.i.i.2.preheader.new

.lr.ph87.i.i.i.i.i.i.i.2.preheader.new:           ; preds = %.lr.ph87.i.i.i.i.i.i.i.2.preheader
  %unroll_iter127 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.2, 9223372036854775800
  br label %.lr.ph87.i.i.i.i.i.i.i.2

.lr.ph87.i.i.i.i.i.i.i.2:                         ; preds = %.lr.ph87.i.i.i.i.i.i.i.2, %.lr.ph87.i.i.i.i.i.i.i.2.preheader.new
  %.05385.i.i.i.i.i.i.i.2 = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.2.preheader.new ], [ %i.kt, %.lr.ph87.i.i.i.i.i.i.i.2 ] ; 9 uses
  %.07284.i.i.i.i.i.i.i.2 = phi double [ %i.jl, %.lr.ph87.i.i.i.i.i.i.i.2.preheader.new ], [ %i.ks, %.lr.ph87.i.i.i.i.i.i.i.2 ]
  %niter128 = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.2.preheader.new ], [ %niter128.next.7, %.lr.ph87.i.i.i.i.i.i.i.2 ]
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %.05385.i.i.i.i.i.i.i.2
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !36
  %i.jq = fadd double %.07284.i.i.i.i.i.i.i.2, %i.jp
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %.05385.i.i.i.i.i.i.i.2
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jt = load double, ptr %i.js, align 8, !tbaa !36
  %i.ju = fadd double %i.jq, %i.jt
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %.05385.i.i.i.i.i.i.i.2
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !36
  %i.jy = fadd double %i.ju, %i.jx
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %.05385.i.i.i.i.i.i.i.2
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !36
  %i.kc = fadd double %i.jy, %i.kb
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %.05385.i.i.i.i.i.i.i.2
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 32
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !36
  %i.kg = fadd double %i.kc, %i.kf
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %.05385.i.i.i.i.i.i.i.2
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 40
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !36
  %i.kk = fadd double %i.kg, %i.kj
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %.05385.i.i.i.i.i.i.i.2
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 48
  %i.kn = load double, ptr %i.km, align 8, !tbaa !36
  %i.ko = fadd double %i.kk, %i.kn
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %.05385.i.i.i.i.i.i.i.2
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 56
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !36
  %i.ks = fadd double %i.ko, %i.kr                ; 3 uses
  %i.kt = add nuw nsw i64 %.05385.i.i.i.i.i.i.i.2, 8 ; 2 uses
  %niter128.next.7 = add nuw nsw i64 %niter128, 8 ; 2 uses
  %niter128.ncmp.7 = icmp eq i64 %niter128.next.7, %unroll_iter127
  br i1 %niter128.ncmp.7, label %.preheader.i.i.i.i.i.i.i.2.loopexit.unr-lcssa, label %.lr.ph87.i.i.i.i.i.i.i.2, !llvm.loop !129

.preheader.i.i.i.i.i.i.i.2.loopexit.unr-lcssa:    ; preds = %.lr.ph87.i.i.i.i.i.i.i.2
  %lcmp.mod124.not = icmp eq i64 %xtraiter122, 0
  br i1 %lcmp.mod124.not, label %.preheader.i.i.i.i.i.i.i.2, label %.lr.ph87.i.i.i.i.i.i.i.2.epil.preheader

.lr.ph87.i.i.i.i.i.i.i.2.epil.preheader:          ; preds = %.preheader.i.i.i.i.i.i.i.2.loopexit.unr-lcssa, %.lr.ph87.i.i.i.i.i.i.i.2.preheader
  %.05385.i.i.i.i.i.i.i.2.epil.init = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.2.preheader ], [ %i.kt, %.preheader.i.i.i.i.i.i.i.2.loopexit.unr-lcssa ]
  %.07284.i.i.i.i.i.i.i.2.epil.init = phi double [ %i.jl, %.lr.ph87.i.i.i.i.i.i.i.2.preheader ], [ %i.ks, %.preheader.i.i.i.i.i.i.i.2.loopexit.unr-lcssa ]
  %lcmp.mod126 = icmp ne i64 %xtraiter122, 0
  tail call void @llvm.assume(i1 %lcmp.mod126)
  br label %.lr.ph87.i.i.i.i.i.i.i.2.epil

.lr.ph87.i.i.i.i.i.i.i.2.epil:                    ; preds = %.lr.ph87.i.i.i.i.i.i.i.2.epil, %.lr.ph87.i.i.i.i.i.i.i.2.epil.preheader
  %.05385.i.i.i.i.i.i.i.2.epil = phi i64 [ %i.kx, %.lr.ph87.i.i.i.i.i.i.i.2.epil ], [ %.05385.i.i.i.i.i.i.i.2.epil.init, %.lr.ph87.i.i.i.i.i.i.i.2.epil.preheader ] ; 2 uses
  %.07284.i.i.i.i.i.i.i.2.epil = phi double [ %i.kw, %.lr.ph87.i.i.i.i.i.i.i.2.epil ], [ %.07284.i.i.i.i.i.i.i.2.epil.init, %.lr.ph87.i.i.i.i.i.i.i.2.epil.preheader ]
  %epil.iter123 = phi i64 [ %epil.iter123.next, %.lr.ph87.i.i.i.i.i.i.i.2.epil ], [ 0, %.lr.ph87.i.i.i.i.i.i.i.2.epil.preheader ]
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %.05385.i.i.i.i.i.i.i.2.epil
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !36
  %i.kw = fadd double %.07284.i.i.i.i.i.i.i.2.epil, %i.kv ; 2 uses
  %i.kx = add nuw nsw i64 %.05385.i.i.i.i.i.i.i.2.epil, 1
  %epil.iter123.next = add i64 %epil.iter123, 1   ; 2 uses
  %epil.iter123.cmp.not = icmp eq i64 %epil.iter123.next, %xtraiter122
  br i1 %epil.iter123.cmp.not, label %.preheader.i.i.i.i.i.i.i.2, label %.lr.ph87.i.i.i.i.i.i.i.2.epil, !llvm.loop !135

.preheader.i.i.i.i.i.i.i.2:                       ; preds = %.preheader.i.i.i.i.i.i.i.2.loopexit.unr-lcssa, %.lr.ph87.i.i.i.i.i.i.i.2.epil, %bb.r
  %.072.lcssa.i.i.i.i.i.i.i.2 = phi double [ %i.jl, %bb.r ], [ %i.ks, %.preheader.i.i.i.i.i.i.i.2.loopexit.unr-lcssa ], [ %i.kw, %.lr.ph87.i.i.i.i.i.i.i.2.epil ] ; 2 uses
  %i.ky = icmp slt i64 %i.ir, %i.h
  br i1 %i.ky, label %.lr.ph91.i.i.i.i.i.i.i.2, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.2

.lr.ph91.i.i.i.i.i.i.i.2:                         ; preds = %.preheader.i.i.i.i.i.i.i.2, %.lr.ph91.i.i.i.i.i.i.i.2
  %.05290.i.i.i.i.i.i.i.2 = phi i64 [ %i.lc, %.lr.ph91.i.i.i.i.i.i.i.2 ], [ %i.ir, %.preheader.i.i.i.i.i.i.i.2 ] ; 2 uses
  %.189.i.i.i.i.i.i.i.2 = phi double [ %i.lb, %.lr.ph91.i.i.i.i.i.i.i.2 ], [ %.072.lcssa.i.i.i.i.i.i.i.2, %.preheader.i.i.i.i.i.i.i.2 ]
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %.05290.i.i.i.i.i.i.i.2
  %i.la = load double, ptr %i.kz, align 8, !tbaa !36
  %i.lb = fadd double %.189.i.i.i.i.i.i.i.2, %i.la ; 2 uses
  %i.lc = add nsw i64 %.05290.i.i.i.i.i.i.i.2, 1  ; 2 uses
  %i.ld = icmp slt i64 %i.lc, %i.h
  br i1 %i.ld, label %.lr.ph91.i.i.i.i.i.i.i.2, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.2, !llvm.loop !130

bb.s:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.2
  %i.le = load double, ptr %i.ih, align 8, !tbaa !36 ; 3 uses
  br i1 %i.j, label %.lr.ph96.i.i.i.i.i.i.i.2.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS2_INS_9TransposeIKNS_16PartialReduxExprINS3_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.2

.lr.ph96.i.i.i.i.i.i.i.2.preheader:               ; preds = %bb.s
  %i.lf = add nsw i64 %i.h, -1                    ; 2 uses
  %i.lg = add nsw i64 %i.h, -2
  %xtraiter129 = and i64 %i.lf, 7                 ; 3 uses
  %i.lh = icmp ult i64 %i.lg, 7
  br i1 %i.lh, label %.lr.ph96.i.i.i.i.i.i.i.2.epil.preheader, label %.lr.ph96.i.i.i.i.i.i.i.2.preheader.new

.lr.ph96.i.i.i.i.i.i.i.2.preheader.new:           ; preds = %.lr.ph96.i.i.i.i.i.i.i.2.preheader
  %unroll_iter134 = and i64 %i.lf, -8
  br label %.lr.ph96.i.i.i.i.i.i.i.2

.lr.ph96.i.i.i.i.i.i.i.2:                         ; preds = %.lr.ph96.i.i.i.i.i.i.i.2, %.lr.ph96.i.i.i.i.i.i.i.2.preheader.new
  %.094.i.i.i.i.i.i.i.2 = phi i64 [ 1, %.lr.ph96.i.i.i.i.i.i.i.2.preheader.new ], [ %i.mn, %.lr.ph96.i.i.i.i.i.i.i.2 ] ; 9 uses
  %.293.i.i.i.i.i.i.i.2 = phi double [ %i.le, %.lr.ph96.i.i.i.i.i.i.i.2.preheader.new ], [ %i.mm, %.lr.ph96.i.i.i.i.i.i.i.2 ]
  %niter135 = phi i64 [ 0, %.lr.ph96.i.i.i.i.i.i.i.2.preheader.new ], [ %niter135.next.7, %.lr.ph96.i.i.i.i.i.i.i.2 ]
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %.094.i.i.i.i.i.i.i.2
  %i.lj = load double, ptr %i.li, align 8, !tbaa !36
  %i.lk = fadd double %.293.i.i.i.i.i.i.i.2, %i.lj
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %.094.i.i.i.i.i.i.i.2
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !36
  %i.lo = fadd double %i.lk, %i.ln
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %.094.i.i.i.i.i.i.i.2
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !36
  %i.ls = fadd double %i.lo, %i.lr
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %.094.i.i.i.i.i.i.i.2
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 24
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !36
  %i.lw = fadd double %i.ls, %i.lv
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %.094.i.i.i.i.i.i.i.2
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 32
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !36
  %i.ma = fadd double %i.lw, %i.lz
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %.094.i.i.i.i.i.i.i.2
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 40
  %i.md = load double, ptr %i.mc, align 8, !tbaa !36
  %i.me = fadd double %i.ma, %i.md
end_hunk_0
