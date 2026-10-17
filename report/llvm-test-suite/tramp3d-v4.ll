Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/tramp3d-v4?download=true
inline.NumInlined: 28160
inline.NumDeleted: 8420
loop-unroll.NumCompletelyUnrolled: 144
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 167
begin_hunk_0_@_ZN18CanonicalCenteringILi1EE8addValueERSt6vectorI3LocILi1EESaIS3_EERS1_I6VectorILi1Ed4FullESaIS9_EERKS3_RKS9_
define weak_odr dso_local void @_ZN18CanonicalCenteringILi1EE8addValueERSt6vectorI3LocILi1EESaIS3_EERS1_I6VectorILi1Ed4FullESaIS9_EERKS3_RKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !335  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !338
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %2, align 4, !tbaa !340
  store i32 %i.e, ptr %i.b, align 4, !tbaa !165
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.f, ptr %i.a, align 8, !tbaa !335
  br label %_ZNSt6vectorI3LocILi1EESaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !336    ; 7 uses
  %i.h = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775804
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorI3LocILi1EESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI3LocILi1EESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 2305843009213693951)
  %i.p = select i1 %i.n, i64 2305843009213693951, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #45 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j
  %i.t = load i32, ptr %2, align 4, !tbaa !340
  store i32 %i.t, ptr %i.s, align 4, !tbaa !165
  %.not9.i.i.i.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not9.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi1EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorI3LocILi1EESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.u = add i64 %i.h, -4
  %i.v = sub i64 %i.u, %i.i                       ; 2 uses
  %i.w = lshr i64 %i.v, 2
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader28, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.x, 9223372036854775800      ; 3 uses
  %i.y = shl i64 %n.vec, 2                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.r, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.g, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.ab ; 2 uses
  %next.gep25 = getelementptr i8, ptr %i.g, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep25, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep25, align 4, !tbaa !340
  %wide.load26 = load <4 x i32>, ptr %i.ac, align 4, !tbaa !340
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !165
  store <4 x i32> %wide.load26, ptr %i.ad, align 4, !tbaa !165
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !1261

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi1EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader28

.lr.ph.i.i.i.i.i.i.i.preheader28:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.i.i.i.ph = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0810.i.i.i.i.i.i.i.ph = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader28, %.lr.ph.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i ], [ %.011.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader28 ] ; 2 uses
  %.0810.i.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.i ], [ %.0810.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader28 ] ; 2 uses
  %i.af = load i32, ptr %.0810.i.i.i.i.i.i.i, align 4, !tbaa !340
  store i32 %i.af, ptr %.011.i.i.i.i.i.i.i, align 4, !tbaa !165
  %i.ag = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi1EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1262

_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi1EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorI3LocILi1EESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorI3LocILi1EESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.z, %middle.block ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 4
  %.not.i25.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i25.i.i, label %_ZNSt6vectorI3LocILi1EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi1EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i.i
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !338
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.al) #48
  br label %_ZNSt6vectorI3LocILi1EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI3LocILi1EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.e, %_ZSt34__uninitialized_move_if_noexcept_aIP3LocILi1EES2_SaIS1_EET0_T_S5_S4_RT1_.exit24.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !336
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !335
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.p
  store ptr %i.am, ptr %i.c, align 8, !tbaa !338
  br label %_ZNSt6vectorI3LocILi1EESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI3LocILi1EESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.b, %_ZNSt6vectorI3LocILi1EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !345 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !348
  %.not.i4 = icmp eq ptr %i.ao, %i.aq
  br i1 %.not.i4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EE9push_backERKS1_.exit
  %i.ar = load double, ptr %3, align 8, !tbaa !350
  store double %i.ar, ptr %i.ao, align 8, !tbaa !350
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.as, ptr %i.an, align 8, !tbaa !345
  br label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE9push_backERKS2_.exit

bb.g:                                             ; preds = %_ZNSt6vectorI3LocILi1EESaIS1_EE9push_backERKS1_.exit
  %i.at = load ptr, ptr %1, align 8, !tbaa !346   ; 5 uses
  %i.au = ptrtoint ptr %i.ao to i64
  %i.av = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.aw = sub i64 %i.au, %i.av                    ; 3 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775800
  br i1 %i.ax, label %bb.h, label %_ZNKSt6vectorI6VectorILi1Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorI6VectorILi1Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ay = ashr exact i64 %i.aw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i.i5, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.az, i64 1152921504606846975)
  %i.bc = select i1 %i.ba, i64 1152921504606846975, i64 %i.bb ; 3 uses
  %.not.i.i.i6 = icmp ne i64 %i.bc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i6)
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #45 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.aw
  %i.bg = load double, ptr %3, align 8, !tbaa !350
  store double %i.bg, ptr %i.bf, align 8, !tbaa !350
  %.not9.i.i.i.i.i.i.i7 = icmp eq ptr %i.at, %i.ao
  br i1 %.not9.i.i.i.i.i.i.i7, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi1Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i.i, label %.lr.ph.i.i.i.i.i.i.i8

.lr.ph.i.i.i.i.i.i.i8:                            ; preds = %_ZNKSt6vectorI6VectorILi1Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i.i.i8
  %.011.i.i.i.i.i.i.i9 = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i.i8 ], [ %i.be, %_ZNKSt6vectorI6VectorILi1Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0810.i.i.i.i.i.i.i10 = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i.i8 ], [ %i.at, %_ZNKSt6vectorI6VectorILi1Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %i.bh = load double, ptr %.0810.i.i.i.i.i.i.i10, align 8, !tbaa !350
  store double %i.bh, ptr %.011.i.i.i.i.i.i.i9, align 8, !tbaa !350
  %i.bi = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i10, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i9, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i11 = icmp eq ptr %i.bi, %i.ao
  br i1 %.not.i.i.i.i.i.i.i11, label %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi1Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i.i, label %.lr.ph.i.i.i.i.i.i.i8, !llvm.loop !15

_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi1Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i8, %_ZNKSt6vectorI6VectorILi1Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i.i12 = phi ptr [ %i.be, %_ZNKSt6vectorI6VectorILi1Ed4FullESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bj, %.lr.ph.i.i.i.i.i.i.i8 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i12, i64 8
  %.not.i25.i.i13 = icmp eq ptr %i.at, null
  br i1 %.not.i25.i.i13, label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi1Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i.i
  %i.bl = load ptr, ptr %i.ap, align 8, !tbaa !348
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = sub i64 %i.bm, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.bn) #48
  br label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.i, %_ZSt34__uninitialized_move_if_noexcept_aIP6VectorILi1Ed4FullES3_SaIS2_EET0_T_S6_S5_RT1_.exit24.i.i
  store ptr %i.be, ptr %1, align 8, !tbaa !346
  store ptr %i.bk, ptr %i.an, align 8, !tbaa !345
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  store ptr %i.bo, ptr %i.ap, align 8, !tbaa !348
  br label %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.f, %_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi1EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !335  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !336    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 6 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !338
  %i.j = load ptr, ptr %0, align 8, !tbaa !336    ; 13 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 6 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.o, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !201

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #45 ; 4 uses
  %i.p = add i64 %i.d, -4
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -4
  %i.s = add i64 %i.r, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr align 4 %i.c, i64 %i.s, i1 false), !tbaa !165
  %3 = load ptr, ptr %0, align 8, !tbaa !336      ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !338
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %3 to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.w) #48
  br label %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseI3LocILi1EESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !336
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.x, ptr %i.h, align 8, !tbaa !338
  br label %_ZSt22__uninitialized_copy_aIP3LocILi1EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !335  ; 4 uses
  %i.aa = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ab = sub i64 %i.aa, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp sgt i64 %i.g, 0
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aIP3LocILi1EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.g, 8
  %i.ad = sub i64 %i.e, %i.l
  %diff.check = icmp ugt i64 %i.ad, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader90, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.g, 9223372036854775800      ; 3 uses
  %i.ae = and i64 %i.g, 7
  %i.af = shl i64 %n.vec, 2                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.j, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.ai ; 2 uses
  %next.gep43 = getelementptr i8, ptr %i.c, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep43, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep43, align 4, !tbaa !340
  %wide.load44 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !340
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !165
  store <4 x i32> %wide.load44, ptr %i.ak, align 4, !tbaa !165
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !1263

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIP3LocILi1EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.preheader90

.lr.ph.i.i.i.i.i.preheader90:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi i64 [ %i.g, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader90, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader90 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader90 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader90 ] ; 2 uses
  %i.am = load i32, ptr %.0910.i.i.i.i.i, align 4, !tbaa !340
  store i32 %i.am, ptr %.0811.i.i.i.i.i, align 4, !tbaa !165
  %i.an = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 4
  %i.ap = add nsw i64 %.012.i.i.i.i.i, -1
  %i.aq = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIP3LocILi1EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, !llvm.loop !1264

bb.h:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ab ; 4 uses
  %i.as = ashr exact i64 %i.ab, 2                 ; 6 uses
  %i.at = icmp sgt i64 %i.as, 0
  br i1 %i.at, label %.lr.ph.i.i.i.i.i26.preheader, label %_ZSt4copyIP3LocILi1EES2_ET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i26.preheader:                     ; preds = %bb.h
  %min.iters.check50 = icmp ult i64 %i.as, 8
  %i.au = sub i64 %i.e, %i.l
  %diff.check52 = icmp ugt i64 %i.au, -32
  %or.cond86 = or i1 %min.iters.check50, %diff.check52
  br i1 %or.cond86, label %.lr.ph.i.i.i.i.i26.preheader89, label %vector.ph53

vector.ph53:                                      ; preds = %.lr.ph.i.i.i.i.i26.preheader
  %n.vec54 = and i64 %i.as, 9223372036854775800   ; 3 uses
  %i.av = and i64 %i.as, 7
  %i.aw = shl i64 %n.vec54, 2                     ; 2 uses
  %i.ax = getelementptr i8, ptr %i.j, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.c, i64 %i.aw
  br label %vector.body55

vector.body55:                                    ; preds = %vector.body55, %vector.ph53
  %index56 = phi i64 [ 0, %vector.ph53 ], [ %index.next61, %vector.body55 ] ; 2 uses
  %i.az = shl i64 %index56, 2                     ; 2 uses
  %next.gep57 = getelementptr i8, ptr %i.j, i64 %i.az ; 2 uses
  %next.gep58 = getelementptr i8, ptr %i.c, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep58, i64 16
  %wide.load59 = load <4 x i32>, ptr %next.gep58, align 4, !tbaa !340
  %wide.load60 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !340
  %i.bb = getelementptr i8, ptr %next.gep57, i64 16
  store <4 x i32> %wide.load59, ptr %next.gep57, align 4, !tbaa !165
  store <4 x i32> %wide.load60, ptr %i.bb, align 4, !tbaa !165
  %index.next61 = add nuw i64 %index56, 8         ; 2 uses
  %i.bc = icmp eq i64 %index.next61, %n.vec54
  br i1 %i.bc, label %middle.block62, label %vector.body55, !llvm.loop !1265

middle.block62:                                   ; preds = %vector.body55
  %cmp.n63 = icmp eq i64 %i.as, %n.vec54
  br i1 %cmp.n63, label %_ZSt4copyIP3LocILi1EES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i.i26.preheader89

.lr.ph.i.i.i.i.i26.preheader89:                   ; preds = %.lr.ph.i.i.i.i.i26.preheader, %middle.block62
  %.012.i.i.i.i.i27.ph = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.av, %middle.block62 ]
  %.0811.i.i.i.i.i28.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.ax, %middle.block62 ]
  %.0910.i.i.i.i.i29.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.ay, %middle.block62 ]
  br label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %.lr.ph.i.i.i.i.i26.preheader89, %.lr.ph.i.i.i.i.i26
  %.012.i.i.i.i.i27 = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.i26 ], [ %.012.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i26.preheader89 ] ; 2 uses
  %.0811.i.i.i.i.i28 = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i26 ], [ %.0811.i.i.i.i.i28.ph, %.lr.ph.i.i.i.i.i26.preheader89 ] ; 2 uses
  %.0910.i.i.i.i.i29 = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i26 ], [ %.0910.i.i.i.i.i29.ph, %.lr.ph.i.i.i.i.i26.preheader89 ] ; 2 uses
  %i.bd = load i32, ptr %.0910.i.i.i.i.i29, align 4, !tbaa !340
  store i32 %i.bd, ptr %.0811.i.i.i.i.i28, align 4, !tbaa !165
  %i.be = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 4
  %i.bg = add nsw i64 %.012.i.i.i.i.i27, -1
  %i.bh = icmp samesign ugt i64 %.012.i.i.i.i.i27, 1
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIP3LocILi1EES2_ET0_T_S4_S3_.exit, !llvm.loop !1266

_ZSt4copyIP3LocILi1EES2_ET0_T_S4_S3_.exit:        ; preds = %.lr.ph.i.i.i.i.i26, %middle.block62, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.ar, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIP3LocILi1EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIP3LocILi1EES2_ET0_T_S4_S3_.exit
  %i.bi = add i64 %i.d, %i.l
  %i.bj = add i64 %i.bi, -4
  %i.bk = add i64 %i.aa, %i.e
  %i.bl = sub i64 %i.bj, %i.bk                    ; 2 uses
  %i.bm = lshr i64 %i.bl, 2
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check70 = icmp ult i64 %i.bl, 44
  %i.bo = sub i64 %i.e, %i.l
  %diff.check72 = icmp ugt i64 %i.bo, -32
  %or.cond87 = or i1 %min.iters.check70, %diff.check72
  br i1 %or.cond87, label %.lr.ph.i.i.i.i.preheader88, label %vector.ph73

vector.ph73:                                      ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec74 = and i64 %i.bn, 9223372036854775800   ; 3 uses
  %i.bp = shl i64 %n.vec74, 2                     ; 2 uses
  %i.bq = getelementptr i8, ptr %i.z, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.ar, i64 %i.bp
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph73
  %index76 = phi i64 [ 0, %vector.ph73 ], [ %index.next81, %vector.body75 ] ; 2 uses
  %i.bs = shl i64 %index76, 2                     ; 2 uses
  %next.gep77 = getelementptr i8, ptr %i.z, i64 %i.bs ; 2 uses
  %next.gep78 = getelementptr i8, ptr %i.ar, i64 %i.bs ; 2 uses
  %i.bt = getelementptr i8, ptr %next.gep78, i64 16
  %wide.load79 = load <4 x i32>, ptr %next.gep78, align 4, !tbaa !340
  %wide.load80 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !340
  %i.bu = getelementptr i8, ptr %next.gep77, i64 16
  store <4 x i32> %wide.load79, ptr %next.gep77, align 4, !tbaa !165
  store <4 x i32> %wide.load80, ptr %i.bu, align 4, !tbaa !165
  %index.next81 = add nuw i64 %index76, 8         ; 2 uses
  %i.bv = icmp eq i64 %index.next81, %n.vec74
  br i1 %i.bv, label %middle.block82, label %vector.body75, !llvm.loop !1267

middle.block82:                                   ; preds = %vector.body75
  %cmp.n83 = icmp eq i64 %i.bn, %n.vec74
  br i1 %cmp.n83, label %_ZSt22__uninitialized_copy_aIP3LocILi1EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader88

.lr.ph.i.i.i.i.preheader88:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block82
  %.011.i.i.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.preheader ], [ %i.bq, %middle.block82 ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.preheader ], [ %i.br, %middle.block82 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader88, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader88 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader88 ] ; 2 uses
  %i.bw = load i32, ptr %.0810.i.i.i.i, align 4, !tbaa !340
  store i32 %i.bw, ptr %.011.i.i.i.i, align 4, !tbaa !165
  %i.bx = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.bx, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIP3LocILi1EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1268

_ZSt22__uninitialized_copy_aIP3LocILi1EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i, %middle.block, %middle.block82, %bb.g, %_ZSt4copyIP3LocILi1EES2_ET0_T_S4_S3_.exit, %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.bz = phi ptr [ %i.j, %middle.block82 ], [ %2, %_ZNSt12_Vector_baseI3LocILi1EESaIS1_EE13_M_deallocateEPS1_m.exit ], [ %i.j, %bb.g ], [ %i.j, %_ZSt4copyIP3LocILi1EES2_ET0_T_S4_S3_.exit ], [ %i.j, %middle.block ], [ %i.j, %.lr.ph.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.f
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !335
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIP3LocILi1EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi1Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !345  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !346    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !348
  %i.j = load ptr, ptr %0, align 8, !tbaa !346    ; 10 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.o, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !201

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #45 ; 4 uses
  %i.p = add i64 %i.d, -8
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.s, i1 false), !tbaa !350
  %3 = load ptr, ptr %0, align 8, !tbaa !346      ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !348
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %3 to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.w) #48
  br label %_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseI6VectorILi1Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !346
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.x, ptr %i.h, align 8, !tbaa !348
  br label %_ZSt22__uninitialized_copy_aIP6VectorILi1Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !345  ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp sgt i64 %i.g, 0
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aIP6VectorILi1Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g
  %xtraiter = and i64 %i.g, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol
  %.012.i.i.i.i.i.prol = phi i64 [ %i.ag, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol ], [ %i.g, %.lr.ph.i.i.i.i.i.preheader ]
  %.0811.i.i.i.i.i.prol = phi ptr [ %i.af, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.prol = phi ptr [ %i.ae, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %.not.i.i.i.i.i.i.prol = icmp eq ptr %.0811.i.i.i.i.i.prol, %.0910.i.i.i.i.i.prol
  br i1 %.not.i.i.i.i.i.i.prol, label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol, label %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.prol

_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.prol: ; preds = %.lr.ph.i.i.i.i.i.prol
  %i.ad = load double, ptr %.0910.i.i.i.i.i.prol, align 8, !tbaa !350
  store double %i.ad, ptr %.0811.i.i.i.i.i.prol, align 8, !tbaa !350
  br label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol

_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol: ; preds = %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol
  %i.ae = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.ag = add nsw i64 %.012.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1269

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.unr = phi i64 [ %i.g, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol ]
  %i.ah = icmp ult i64 %i.g, 4
  br i1 %i.ah, label %_ZSt22__uninitialized_copy_aIP6VectorILi1Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.3
  %.012.i.i.i.i.i = phi i64 [ %i.au, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.3 ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.at, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.3 ], [ %.0811.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.as, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.3 ], [ %.0910.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.0811.i.i.i.i.i, %.0910.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i, label %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i

_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = load double, ptr %.0910.i.i.i.i.i, align 8, !tbaa !350
  store double %i.ai, ptr %.0811.i.i.i.i.i, align 8, !tbaa !350
  br label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i

_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i:    ; preds = %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.not.i.i.i.i.i.i.1 = icmp eq ptr %.0811.i.i.i.i.i, %.0910.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.1, label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.1, label %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.1

_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.1: ; preds = %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.al = load double, ptr %i.ak, align 8, !tbaa !350
  store double %i.al, ptr %i.aj, align 8, !tbaa !350
  br label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.1

_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.1:  ; preds = %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.1, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i
  %.not.i.i.i.i.i.i.2 = icmp eq ptr %.0811.i.i.i.i.i, %.0910.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.2, label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.2, label %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.2

_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.2: ; preds = %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.1
  %i.am = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ao = load double, ptr %i.an, align 8, !tbaa !350
  store double %i.ao, ptr %i.am, align 8, !tbaa !350
  br label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.2

_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.2:  ; preds = %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.2, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.1
  %.not.i.i.i.i.i.i.3 = icmp eq ptr %.0811.i.i.i.i.i, %.0910.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.3, label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.3, label %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.3

_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.3: ; preds = %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.2
  %i.ap = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !350
  store double %i.ar, ptr %i.ap, align 8, !tbaa !350
  br label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.3

_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.3:  ; preds = %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.3, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.2
  %i.as = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.au = add nsw i64 %.012.i.i.i.i.i, -4
  %i.av = icmp sgt i64 %.012.i.i.i.i.i, 4
  br i1 %i.av, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIP6VectorILi1Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, !llvm.loop !1270

bb.h:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ab ; 2 uses
  %i.ax = ashr exact i64 %i.ab, 3                 ; 5 uses
  %i.ay = icmp sgt i64 %i.ax, 0
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i26.preheader, label %_ZSt4copyIP6VectorILi1Ed4FullES3_ET0_T_S5_S4_.exit

.lr.ph.i.i.i.i.i26.preheader:                     ; preds = %bb.h
  %xtraiter47 = and i64 %i.ax, 3                  ; 2 uses
  %lcmp.mod48.not = icmp eq i64 %xtraiter47, 0
  br i1 %lcmp.mod48.not, label %.lr.ph.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i26.prol

.lr.ph.i.i.i.i.i26.prol:                          ; preds = %.lr.ph.i.i.i.i.i26.preheader, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.prol
  %.012.i.i.i.i.i27.prol = phi i64 [ %i.bc, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.prol ], [ %i.ax, %.lr.ph.i.i.i.i.i26.preheader ]
  %.0811.i.i.i.i.i28.prol = phi ptr [ %i.bb, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.prol ], [ %i.j, %.lr.ph.i.i.i.i.i26.preheader ] ; 3 uses
  %.0910.i.i.i.i.i29.prol = phi ptr [ %i.ba, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.prol ], [ %i.c, %.lr.ph.i.i.i.i.i26.preheader ] ; 3 uses
  %prol.iter49 = phi i64 [ %prol.iter49.next, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.prol ], [ 0, %.lr.ph.i.i.i.i.i26.preheader ]
  %.not.i.i.i.i.i.i30.prol = icmp eq ptr %.0811.i.i.i.i.i28.prol, %.0910.i.i.i.i.i29.prol
  br i1 %.not.i.i.i.i.i.i30.prol, label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.prol, label %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i31.prol

_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i31.prol: ; preds = %.lr.ph.i.i.i.i.i26.prol
  %i.az = load double, ptr %.0910.i.i.i.i.i29.prol, align 8, !tbaa !350
  store double %i.az, ptr %.0811.i.i.i.i.i28.prol, align 8, !tbaa !350
  br label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.prol

_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.prol: ; preds = %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i31.prol, %.lr.ph.i.i.i.i.i26.prol
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29.prol, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28.prol, i64 8 ; 2 uses
  %i.bc = add nsw i64 %.012.i.i.i.i.i27.prol, -1  ; 2 uses
  %prol.iter49.next = add i64 %prol.iter49, 1     ; 2 uses
  %prol.iter49.cmp.not = icmp eq i64 %prol.iter49.next, %xtraiter47
  br i1 %prol.iter49.cmp.not, label %.lr.ph.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i26.prol, !llvm.loop !1271

.lr.ph.i.i.i.i.i26.prol.loopexit:                 ; preds = %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.prol, %.lr.ph.i.i.i.i.i26.preheader
  %.012.i.i.i.i.i27.unr = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bc, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.prol ]
  %.0811.i.i.i.i.i28.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bb, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.prol ]
  %.0910.i.i.i.i.i29.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.ba, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.prol ]
  %i.bd = icmp ult i64 %i.ax, 4
  br i1 %i.bd, label %_ZSt4copyIP6VectorILi1Ed4FullES3_ET0_T_S5_S4_.exit, label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %.lr.ph.i.i.i.i.i26.prol.loopexit, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.3
  %.012.i.i.i.i.i27 = phi i64 [ %i.bq, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.3 ], [ %.012.i.i.i.i.i27.unr, %.lr.ph.i.i.i.i.i26.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i28 = phi ptr [ %i.bp, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.3 ], [ %.0811.i.i.i.i.i28.unr, %.lr.ph.i.i.i.i.i26.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i29 = phi ptr [ %i.bo, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.3 ], [ %.0910.i.i.i.i.i29.unr, %.lr.ph.i.i.i.i.i26.prol.loopexit ] ; 9 uses
  %.not.i.i.i.i.i.i30 = icmp eq ptr %.0811.i.i.i.i.i28, %.0910.i.i.i.i.i29
  br i1 %.not.i.i.i.i.i.i30, label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32, label %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i31

_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i31: ; preds = %.lr.ph.i.i.i.i.i26
  %i.be = load double, ptr %.0910.i.i.i.i.i29, align 8, !tbaa !350
  store double %i.be, ptr %.0811.i.i.i.i.i28, align 8, !tbaa !350
  br label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32

_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32:  ; preds = %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i31, %.lr.ph.i.i.i.i.i26
  %.not.i.i.i.i.i.i30.1 = icmp eq ptr %.0811.i.i.i.i.i28, %.0910.i.i.i.i.i29
  br i1 %.not.i.i.i.i.i.i30.1, label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.1, label %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i31.1

_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i31.1: ; preds = %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32
  %i.bf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 8
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !350
  store double %i.bh, ptr %i.bf, align 8, !tbaa !350
  br label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.1

_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.1: ; preds = %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i31.1, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32
  %.not.i.i.i.i.i.i30.2 = icmp eq ptr %.0811.i.i.i.i.i28, %.0910.i.i.i.i.i29
  br i1 %.not.i.i.i.i.i.i30.2, label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.2, label %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i31.2

_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i31.2: ; preds = %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.1
  %i.bi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 16
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !350
  store double %i.bk, ptr %i.bi, align 8, !tbaa !350
  br label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.2

_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.2: ; preds = %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i31.2, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.1
  %.not.i.i.i.i.i.i30.3 = icmp eq ptr %.0811.i.i.i.i.i28, %.0910.i.i.i.i.i29
  br i1 %.not.i.i.i.i.i.i30.3, label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.3, label %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i31.3

_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i31.3: ; preds = %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.2
  %i.bl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 24
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !350
  store double %i.bn, ptr %i.bl, align 8, !tbaa !350
  br label %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.3

_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.3: ; preds = %_ZN12VectorEngineILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i.i31.3, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.2
  %i.bo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 32
  %i.bq = add nsw i64 %.012.i.i.i.i.i27, -4
  %i.br = icmp sgt i64 %.012.i.i.i.i.i27, 4
  br i1 %i.br, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIP6VectorILi1Ed4FullES3_ET0_T_S5_S4_.exit, !llvm.loop !1272

_ZSt4copyIP6VectorILi1Ed4FullES3_ET0_T_S5_S4_.exit: ; preds = %.lr.ph.i.i.i.i.i26.prol.loopexit, %_ZN6VectorILi1Ed4FullEaSERKS1_.exit.i.i.i.i.i32.3, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.aw, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIP6VectorILi1Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIP6VectorILi1Ed4FullES3_ET0_T_S5_S4_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i ], [ %i.z, %_ZSt4copyIP6VectorILi1Ed4FullES3_ET0_T_S5_S4_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i ], [ %i.aw, %_ZSt4copyIP6VectorILi1Ed4FullES3_ET0_T_S5_S4_.exit ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN18CanonicalCenteringILi2EEC2Ev:bb.a
  %i.bum = sub i64 %i.buk, %i.bul
  call void @_ZdlPvm(ptr noundef nonnull %i.bto, i64 noundef %i.bum) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit233

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit233: ; preds = %_ZN9CenteringILi2EE8addValueERK3LocILi2EERK6VectorILi2Ed4FullE.exit227, %bb.fn
  %i.bun = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.buo = load ptr, ptr %i.bun, align 16, !tbaa !366 ; 3 uses
  %.not.i.i.i232.1 = icmp eq ptr %i.buo, null
  br i1 %.not.i.i.i232.1, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit233.1, label %bb.fo

bb.fo:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit233
  %i.bup = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.buq = load ptr, ptr %i.bup, align 16, !tbaa !368
  %i.bur = ptrtoint ptr %i.buq to i64
  %i.bus = ptrtoint ptr %i.buo to i64
  %i.but = sub i64 %i.bur, %i.bus
  call void @_ZdlPvm(ptr noundef nonnull %i.buo, i64 noundef %i.but) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit233.1

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit233.1: ; preds = %bb.fo, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit233
  %i.buu = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.buv = load ptr, ptr %i.buu, align 8, !tbaa !366 ; 3 uses
  %.not.i.i.i232.2 = icmp eq ptr %i.buv, null
  br i1 %.not.i.i.i232.2, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit233.2, label %bb.fp

bb.fp:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit233.1
  %i.buw = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bux = load ptr, ptr %i.buw, align 8, !tbaa !368
  %i.buy = ptrtoint ptr %i.bux to i64
  %i.buz = ptrtoint ptr %i.buv to i64
  %i.bva = sub i64 %i.buy, %i.buz
  call void @_ZdlPvm(ptr noundef nonnull %i.buv, i64 noundef %i.bva) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit233.2

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit233.2: ; preds = %bb.fp, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit233.1
  %i.bvb = load ptr, ptr %3, align 16, !tbaa !366 ; 3 uses
  %.not.i.i.i232.3 = icmp eq ptr %i.bvb, null
  br i1 %.not.i.i.i232.3, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit233.3, label %bb.fq

bb.fq:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit233.2
  %i.bvc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bvd = load ptr, ptr %i.bvc, align 16, !tbaa !368
  %i.bve = ptrtoint ptr %i.bvd to i64
  %i.bvf = ptrtoint ptr %i.bvb to i64
  %i.bvg = sub i64 %i.bve, %i.bvf
  call void @_ZdlPvm(ptr noundef nonnull %i.bvb, i64 noundef %i.bvg) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit233.3

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit233.3: ; preds = %bb.fq, %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit233.2
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  %i.bvh = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bvi = load ptr, ptr %i.bvh, align 8, !tbaa !360 ; 3 uses
  %.not.i.i.i234 = icmp eq ptr %i.bvi, null
  br i1 %.not.i.i.i234, label %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit235, label %bb.fr

bb.fr:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit233.3
  %i.bvj = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bvk = load ptr, ptr %i.bvj, align 8, !tbaa !362
  %i.bvl = ptrtoint ptr %i.bvk to i64
  %i.bvm = ptrtoint ptr %i.bvi to i64
  %i.bvn = sub i64 %i.bvl, %i.bvm
  call void @_ZdlPvm(ptr noundef nonnull %i.bvi, i64 noundef %i.bvn) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit235

_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit235:      ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit233.3, %bb.fr
  %i.bvo = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bvp = load ptr, ptr %i.bvo, align 16, !tbaa !360 ; 3 uses
  %.not.i.i.i234.1 = icmp eq ptr %i.bvp, null
  br i1 %.not.i.i.i234.1, label %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit235.1, label %bb.fs

bb.fs:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit235
  %i.bvq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bvr = load ptr, ptr %i.bvq, align 16, !tbaa !362
  %i.bvs = ptrtoint ptr %i.bvr to i64
  %i.bvt = ptrtoint ptr %i.bvp to i64
  %i.bvu = sub i64 %i.bvs, %i.bvt
  call void @_ZdlPvm(ptr noundef nonnull %i.bvp, i64 noundef %i.bvu) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit235.1

_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit235.1:    ; preds = %bb.fs, %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit235
  %i.bvv = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bvw = load ptr, ptr %i.bvv, align 8, !tbaa !360 ; 3 uses
  %.not.i.i.i234.2 = icmp eq ptr %i.bvw, null
  br i1 %.not.i.i.i234.2, label %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit235.2, label %bb.ft

bb.ft:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit235.1
  %i.bvx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bvy = load ptr, ptr %i.bvx, align 8, !tbaa !362
  %i.bvz = ptrtoint ptr %i.bvy to i64
  %i.bwa = ptrtoint ptr %i.bvw to i64
  %i.bwb = sub i64 %i.bvz, %i.bwa
  call void @_ZdlPvm(ptr noundef nonnull %i.bvw, i64 noundef %i.bwb) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit235.2

_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit235.2:    ; preds = %bb.ft, %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit235.1
  %i.bwc = load ptr, ptr %2, align 16, !tbaa !360 ; 3 uses
  %.not.i.i.i234.3 = icmp eq ptr %i.bwc, null
  br i1 %.not.i.i.i234.3, label %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit235.3, label %bb.fu

bb.fu:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit235.2
  %i.bwd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bwe = load ptr, ptr %i.bwd, align 16, !tbaa !362
  %i.bwf = ptrtoint ptr %i.bwe to i64
  %i.bwg = ptrtoint ptr %i.bwc to i64
  %i.bwh = sub i64 %i.bwf, %i.bwg
  call void @_ZdlPvm(ptr noundef nonnull %i.bwc, i64 noundef %i.bwh) #48
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit235.3

_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit235.3:    ; preds = %bb.fu, %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit235.2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  %i.bwi = load ptr, ptr %i.ck, align 8, !tbaa !366 ; 3 uses
  %.not.i.i.i.i236 = icmp eq ptr %i.bwi, null
  br i1 %.not.i.i.i.i236, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i237, label %bb.fv

bb.fv:                                            ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit235.3
  %i.bwj = load ptr, ptr %i.eu, align 8, !tbaa !368
  %i.bwk = ptrtoint ptr %i.bwj to i64
  %i.bwl = ptrtoint ptr %i.bwi to i64
  %i.bwm = sub i64 %i.bwk, %i.bwl
  call void @_ZdlPvm(ptr noundef nonnull %i.bwi, i64 noundef %i.bwm) #48
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i237

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i237: ; preds = %bb.fv, %_ZNSt6vectorI3LocILi2EESaIS1_EED2Ev.exit235.3
  %i.bwn = load ptr, ptr %i.b, align 8, !tbaa !360 ; 3 uses
  %.not.i.i.i1.i238 = icmp eq ptr %i.bwn, null
  br i1 %.not.i.i.i1.i238, label %_ZN9CenteringILi2EED2Ev.exit239, label %bb.fw

bb.fw:                                            ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i237
  %i.bwo = load ptr, ptr %i.db, align 8, !tbaa !362
  %i.bwp = ptrtoint ptr %i.bwo to i64
  %i.bwq = ptrtoint ptr %i.bwn to i64
  %i.bwr = sub i64 %i.bwp, %i.bwq
  call void @_ZdlPvm(ptr noundef nonnull %i.bwn, i64 noundef %i.bwr) #48
  br label %_ZN9CenteringILi2EED2Ev.exit239

_ZN9CenteringILi2EED2Ev.exit239:                  ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EED2Ev.exit.i237, %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN18CanonicalCenteringILi2EE8addValueERSt6vectorI3LocILi2EESaIS3_EERS1_I6VectorILi2Ed4FullESaIS9_EERKS3_RKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !359  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !362
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %2, align 4, !tbaa !340
  store i32 %i.e, ptr %i.b, align 4, !tbaa !165
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !340
  store i32 %i.h, ptr %i.f, align 4, !tbaa !165
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %i.a, align 8, !tbaa !359
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorI3LocILi2EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 4 dereferenceable(8) %2)
  br label %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !365  ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !368
  %.not.i4 = icmp eq ptr %i.k, %i.m
  br i1 %.not.i4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit
  %i.n = load double, ptr %3, align 8, !tbaa !350
  store double %i.n, ptr %i.k, align 8, !tbaa !350
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load double, ptr %i.p, align 8, !tbaa !350
  store double %i.q, ptr %i.o, align 8, !tbaa !350
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.r, ptr %i.j, align 8, !tbaa !365
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE9push_backERKS2_.exit

bb.e:                                             ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE9push_backERKS1_.exit
  tail call void @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.k, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi2EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !359  ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !360    ; 23 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !362
  %i.j = load ptr, ptr %0, align 8, !tbaa !360    ; 20 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.o, label %bb.d, label %.lr.ph.i.i.i.i.i.preheader, !prof !201

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #45 ; 10 uses
  %i.p = add i64 %i.d, -8
  %i.q = sub i64 %i.p, %i.e                       ; 3 uses
  %i.r = lshr i64 %i.q, 3
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check127 = icmp ult i64 %i.q, 120
  br i1 %min.iters.check127, label %.lr.ph.i.i.i.i.i.preheader153, label %vector.memcheck128

vector.memcheck128:                               ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.t = and i64 %i.q, -8
  %i.u = add i64 %i.t, 8                          ; 2 uses
  %i.v = getelementptr i8, ptr %2, i64 %i.u
  %i.w = getelementptr i8, ptr %i.c, i64 %i.u
  %bound0129 = icmp ult ptr %2, %i.w
  %bound1130 = icmp ult ptr %i.c, %i.v
  %found.conflict131 = and i1 %bound0129, %bound1130
  br i1 %found.conflict131, label %.lr.ph.i.i.i.i.i.preheader153, label %vector.ph132

vector.ph132:                                     ; preds = %vector.memcheck128
  %n.vec133 = and i64 %i.s, 4611686018427387900   ; 3 uses
  %i.x = shl i64 %n.vec133, 3                     ; 2 uses
  %i.y = getelementptr i8, ptr %2, i64 %i.x
  %i.z = getelementptr i8, ptr %i.c, i64 %i.x
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph132
  %index135 = phi i64 [ 0, %vector.ph132 ], [ %index.next148, %vector.body134 ] ; 2 uses
  %i.aa = shl i64 %index135, 3                    ; 3 uses
  %i.ab = or disjoint i64 %i.aa, 16               ; 2 uses
  %next.gep136 = getelementptr i8, ptr %2, i64 %i.aa
  %next.gep137 = getelementptr i8, ptr %2, i64 %i.ab
  %next.gep138 = getelementptr i8, ptr %i.c, i64 %i.aa
  %next.gep139 = getelementptr i8, ptr %i.c, i64 %i.ab
  %wide.vec140 = load <4 x i32>, ptr %next.gep138, align 4, !tbaa !340, !alias.scope !1558
  %wide.vec143 = load <4 x i32>, ptr %next.gep139, align 4, !tbaa !340, !alias.scope !1558
  store <4 x i32> %wide.vec140, ptr %next.gep136, align 4, !tbaa !165, !alias.scope !1559, !noalias !1558
  store <4 x i32> %wide.vec143, ptr %next.gep137, align 4, !tbaa !165, !alias.scope !1559, !noalias !1558
  %index.next148 = add nuw i64 %index135, 4       ; 2 uses
  %i.ac = icmp eq i64 %index.next148, %n.vec133
  br i1 %i.ac, label %middle.block149, label %vector.body134, !llvm.loop !1541

middle.block149:                                  ; preds = %vector.body134
  %cmp.n150 = icmp eq i64 %i.s, %n.vec133
  br i1 %cmp.n150, label %_ZNSt6vectorI3LocILi2EESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.i.preheader153

.lr.ph.i.i.i.i.i.preheader153:                    ; preds = %vector.memcheck128, %.lr.ph.i.i.i.i.i.preheader, %middle.block149
  %.09.i.i.i.i.i.ph = phi ptr [ %2, %vector.memcheck128 ], [ %2, %.lr.ph.i.i.i.i.i.preheader ], [ %i.y, %middle.block149 ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck128 ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.z, %middle.block149 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader153, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader153 ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader153 ] ; 3 uses
  %i.ad = load i32, ptr %.sroa.04.08.i.i.i.i.i, align 4, !tbaa !340
  store i32 %i.ad, ptr %.09.i.i.i.i.i, align 4, !tbaa !165
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !340
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !165
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI3LocILi2EESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1542

_ZNSt6vectorI3LocILi2EESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block149
  %i.aj = load ptr, ptr %0, align 8, !tbaa !360   ; 3 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !362
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.an) #48
  br label %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorI3LocILi2EESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !360
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.ao, ptr %i.h, align 8, !tbaa !362
  br label %_ZSt22__uninitialized_copy_aIP3LocILi2EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !359 ; 9 uses
  %i.ar = ptrtoint ptr %i.aq to i64               ; 3 uses
  %i.as = sub i64 %i.ar, %i.l                     ; 4 uses
  %.not24 = icmp ult i64 %i.as, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = icmp sgt i64 %i.g, 0
  br i1 %i.at, label %.lr.ph.i.i.i.i.i25.preheader, label %_ZSt22__uninitialized_copy_aIP3LocILi2EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

.lr.ph.i.i.i.i.i25.preheader:                     ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.g, 6
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i25.preheader156, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i25.preheader
  %i.au = getelementptr i8, ptr %i.j, i64 %i.f
  %bound0 = icmp ult ptr %i.j, %i.b
  %bound1 = icmp ult ptr %i.c, %i.au
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i25.preheader156, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, 9223372036854775804      ; 3 uses
  %i.av = and i64 %i.g, 3
  %i.aw = shl i64 %n.vec, 3                       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.j, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.c, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 3                       ; 3 uses
  %i.ba = or disjoint i64 %i.az, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.az
  %next.gep46 = getelementptr i8, ptr %i.j, i64 %i.ba
  %next.gep47 = getelementptr i8, ptr %i.c, i64 %i.az
  %next.gep48 = getelementptr i8, ptr %i.c, i64 %i.ba
  %wide.vec = load <4 x i32>, ptr %next.gep47, align 4, !tbaa !340, !alias.scope !1560
  %wide.vec50 = load <4 x i32>, ptr %next.gep48, align 4, !tbaa !340, !alias.scope !1560
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !165, !alias.scope !1561, !noalias !1560
  store <4 x i32> %wide.vec50, ptr %next.gep46, align 4, !tbaa !165, !alias.scope !1561, !noalias !1560
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !1546

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIP3LocILi2EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i25.preheader156

.lr.ph.i.i.i.i.i25.preheader156:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i25.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.i.i.i.i25.preheader ], [ %i.av, %middle.block ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.i.i.i.i25.preheader ], [ %i.ax, %middle.block ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i25.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i.i.i.i.i25

.lr.ph.i.i.i.i.i25:                               ; preds = %.lr.ph.i.i.i.i.i25.preheader156, %.lr.ph.i.i.i.i.i25
  %.012.i.i.i.i.i = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i25 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i25.preheader156 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i25 ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i25.preheader156 ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i25 ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i25.preheader156 ] ; 3 uses
  %i.bc = load i32, ptr %.0910.i.i.i.i.i, align 4, !tbaa !340
  store i32 %i.bc, ptr %.0811.i.i.i.i.i, align 4, !tbaa !165
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !340
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !165
  %i.bg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.bi = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bj = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i25, label %_ZSt22__uninitialized_copy_aIP3LocILi2EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, !llvm.loop !1547

bb.h:                                             ; preds = %bb.f
  %i.bk = getelementptr i8, ptr %i.c, i64 %i.as   ; 7 uses
  %i.bl = ashr exact i64 %i.as, 3                 ; 7 uses
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i27.preheader, label %_ZSt4copyIP3LocILi2EES2_ET0_T_S4_S3_.exit

.lr.ph.i.i.i.i.i27.preheader:                     ; preds = %bb.h
  %min.iters.check62 = icmp ult i64 %i.bl, 6
  br i1 %min.iters.check62, label %.lr.ph.i.i.i.i.i27.preheader155, label %vector.memcheck63

vector.memcheck63:                                ; preds = %.lr.ph.i.i.i.i.i27.preheader
  %i.bn = getelementptr i8, ptr %i.c, i64 %i.as
  %bound064 = icmp ult ptr %i.j, %i.bn
  %bound165 = icmp ult ptr %i.c, %i.aq
  %found.conflict66 = and i1 %bound064, %bound165
  br i1 %found.conflict66, label %.lr.ph.i.i.i.i.i27.preheader155, label %vector.ph67

vector.ph67:                                      ; preds = %vector.memcheck63
  %n.vec68 = and i64 %i.bl, 9223372036854775804   ; 3 uses
  %i.bo = and i64 %i.bl, 3
  %i.bp = shl i64 %n.vec68, 3                     ; 2 uses
  %i.bq = getelementptr i8, ptr %i.j, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.c, i64 %i.bp
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph67
  %index70 = phi i64 [ 0, %vector.ph67 ], [ %index.next83, %vector.body69 ] ; 2 uses
  %i.bs = shl i64 %index70, 3                     ; 3 uses
  %i.bt = or disjoint i64 %i.bs, 16               ; 2 uses
  %next.gep71 = getelementptr i8, ptr %i.j, i64 %i.bs
  %next.gep72 = getelementptr i8, ptr %i.j, i64 %i.bt
  %next.gep73 = getelementptr i8, ptr %i.c, i64 %i.bs
  %next.gep74 = getelementptr i8, ptr %i.c, i64 %i.bt
  %wide.vec75 = load <4 x i32>, ptr %next.gep73, align 4, !tbaa !340, !alias.scope !1562
  %wide.vec78 = load <4 x i32>, ptr %next.gep74, align 4, !tbaa !340, !alias.scope !1562
  store <4 x i32> %wide.vec75, ptr %next.gep71, align 4, !tbaa !165, !alias.scope !1563, !noalias !1562
  store <4 x i32> %wide.vec78, ptr %next.gep72, align 4, !tbaa !165, !alias.scope !1563, !noalias !1562
  %index.next83 = add nuw i64 %index70, 4         ; 2 uses
  %i.bu = icmp eq i64 %index.next83, %n.vec68
  br i1 %i.bu, label %middle.block84, label %vector.body69, !llvm.loop !1551

middle.block84:                                   ; preds = %vector.body69
  %cmp.n85 = icmp eq i64 %i.bl, %n.vec68
  br i1 %cmp.n85, label %_ZSt4copyIP3LocILi2EES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i.i27.preheader155

.lr.ph.i.i.i.i.i27.preheader155:                  ; preds = %vector.memcheck63, %.lr.ph.i.i.i.i.i27.preheader, %middle.block84
  %.012.i.i.i.i.i28.ph = phi i64 [ %i.bl, %vector.memcheck63 ], [ %i.bl, %.lr.ph.i.i.i.i.i27.preheader ], [ %i.bo, %middle.block84 ]
  %.0811.i.i.i.i.i29.ph = phi ptr [ %i.j, %vector.memcheck63 ], [ %i.j, %.lr.ph.i.i.i.i.i27.preheader ], [ %i.bq, %middle.block84 ]
  %.0910.i.i.i.i.i30.ph = phi ptr [ %i.c, %vector.memcheck63 ], [ %i.c, %.lr.ph.i.i.i.i.i27.preheader ], [ %i.br, %middle.block84 ]
  br label %.lr.ph.i.i.i.i.i27

.lr.ph.i.i.i.i.i27:                               ; preds = %.lr.ph.i.i.i.i.i27.preheader155, %.lr.ph.i.i.i.i.i27
  %.012.i.i.i.i.i28 = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.i27 ], [ %.012.i.i.i.i.i28.ph, %.lr.ph.i.i.i.i.i27.preheader155 ] ; 2 uses
  %.0811.i.i.i.i.i29 = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i27 ], [ %.0811.i.i.i.i.i29.ph, %.lr.ph.i.i.i.i.i27.preheader155 ] ; 3 uses
  %.0910.i.i.i.i.i30 = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i27 ], [ %.0910.i.i.i.i.i30.ph, %.lr.ph.i.i.i.i.i27.preheader155 ] ; 3 uses
  %i.bv = load i32, ptr %.0910.i.i.i.i.i30, align 4, !tbaa !340
  store i32 %i.bv, ptr %.0811.i.i.i.i.i29, align 4, !tbaa !165
  %i.bw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 4
  %i.bx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !340
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !165
  %i.bz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 8
  %i.cb = add nsw i64 %.012.i.i.i.i.i28, -1
  %i.cc = icmp samesign ugt i64 %.012.i.i.i.i.i28, 1
  br i1 %i.cc, label %.lr.ph.i.i.i.i.i27, label %_ZSt4copyIP3LocILi2EES2_ET0_T_S4_S3_.exit, !llvm.loop !1552

_ZSt4copyIP3LocILi2EES2_ET0_T_S4_S3_.exit:        ; preds = %.lr.ph.i.i.i.i.i27, %middle.block84, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.bk, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIP3LocILi2EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIP3LocILi2EES2_ET0_T_S4_S3_.exit
  %i.cd = add i64 %i.d, %i.l
  %i.ce = add i64 %i.cd, -8
  %i.cf = add i64 %i.ar, %i.e
  %i.cg = sub i64 %i.ce, %i.cf                    ; 3 uses
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check95 = icmp ult i64 %i.cg, 200
  br i1 %min.iters.check95, label %.lr.ph.i.i.i.i.preheader154, label %vector.memcheck96

vector.memcheck96:                                ; preds = %.lr.ph.i.i.i.i.preheader
  %i.cj = and i64 %i.cg, -8                       ; 2 uses
  %i.ck = getelementptr i8, ptr %i.aq, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 8
  %i.cm = add i64 %i.cj, %i.ar
  %i.cn = add i64 %i.cm, 8
  %i.co = sub i64 %i.cn, %i.l
  %i.cp = getelementptr i8, ptr %i.c, i64 %i.co
  %bound097 = icmp ult ptr %i.aq, %i.cp
  %bound198 = icmp ult ptr %i.bk, %i.cl
  %found.conflict99 = and i1 %bound097, %bound198
  br i1 %found.conflict99, label %.lr.ph.i.i.i.i.preheader154, label %vector.ph100

vector.ph100:                                     ; preds = %vector.memcheck96
  %n.vec101 = and i64 %i.ci, 4611686018427387900  ; 3 uses
  %i.cq = shl i64 %n.vec101, 3                    ; 2 uses
  %i.cr = getelementptr i8, ptr %i.aq, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.bk, i64 %i.cq
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %vector.ph100
  %index103 = phi i64 [ 0, %vector.ph100 ], [ %index.next116, %vector.body102 ] ; 2 uses
  %i.ct = shl i64 %index103, 3                    ; 3 uses
  %i.cu = or disjoint i64 %i.ct, 16               ; 2 uses
  %next.gep104 = getelementptr i8, ptr %i.aq, i64 %i.ct
  %next.gep105 = getelementptr i8, ptr %i.aq, i64 %i.cu
  %next.gep106 = getelementptr i8, ptr %i.bk, i64 %i.ct
  %next.gep107 = getelementptr i8, ptr %i.bk, i64 %i.cu
  %wide.vec108 = load <4 x i32>, ptr %next.gep106, align 4, !tbaa !340, !alias.scope !1564
  %wide.vec111 = load <4 x i32>, ptr %next.gep107, align 4, !tbaa !340, !alias.scope !1564
  store <4 x i32> %wide.vec108, ptr %next.gep104, align 4, !tbaa !165, !alias.scope !1565, !noalias !1564
  store <4 x i32> %wide.vec111, ptr %next.gep105, align 4, !tbaa !165, !alias.scope !1565, !noalias !1564
  %index.next116 = add nuw i64 %index103, 4       ; 2 uses
  %i.cv = icmp eq i64 %index.next116, %n.vec101
  br i1 %i.cv, label %middle.block117, label %vector.body102, !llvm.loop !1556

middle.block117:                                  ; preds = %vector.body102
  %cmp.n118 = icmp eq i64 %i.ci, %n.vec101
  br i1 %cmp.n118, label %_ZSt22__uninitialized_copy_aIP3LocILi2EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader154

.lr.ph.i.i.i.i.preheader154:                      ; preds = %vector.memcheck96, %.lr.ph.i.i.i.i.preheader, %middle.block117
  %.011.i.i.i.i.ph = phi ptr [ %i.aq, %vector.memcheck96 ], [ %i.aq, %.lr.ph.i.i.i.i.preheader ], [ %i.cr, %middle.block117 ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.bk, %vector.memcheck96 ], [ %i.bk, %.lr.ph.i.i.i.i.preheader ], [ %i.cs, %middle.block117 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader154, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.db, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader154 ] ; 3 uses
  %.0810.i.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader154 ] ; 3 uses
  %i.cw = load i32, ptr %.0810.i.i.i.i, align 4, !tbaa !340
  store i32 %i.cw, ptr %.011.i.i.i.i, align 4, !tbaa !165
  %i.cx = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 4
  %i.cy = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !340
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !165
  %i.da = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.da, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIP3LocILi2EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1557

_ZSt22__uninitialized_copy_aIP3LocILi2EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i25, %.lr.ph.i.i.i.i, %middle.block, %middle.block117, %bb.g, %_ZSt4copyIP3LocILi2EES2_ET0_T_S4_S3_.exit, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.dc = phi ptr [ %i.j, %middle.block117 ], [ %2, %_ZNSt12_Vector_baseI3LocILi2EESaIS1_EE13_M_deallocateEPS1_m.exit ], [ %i.j, %bb.g ], [ %i.j, %_ZSt4copyIP3LocILi2EES2_ET0_T_S4_S3_.exit ], [ %i.j, %middle.block ], [ %i.j, %.lr.ph.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i25 ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.f
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !359
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIP3LocILi2EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !365  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !366    ; 17 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !368
  %i.j = load ptr, ptr %0, align 8, !tbaa !366    ; 17 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.o, label %bb.d, label %.lr.ph.i.i.i.i.i.preheader, !prof !201

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #45 ; 7 uses
  %i.p = add i64 %i.d, -16
  %i.q = sub i64 %i.p, %i.e                       ; 2 uses
  %i.r = lshr i64 %i.q, 4
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check55 = icmp ult i64 %i.q, 48
  br i1 %min.iters.check55, label %.lr.ph.i.i.i.i.i.preheader71, label %vector.ph56

vector.ph56:                                      ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec57 = and i64 %i.s, 2305843009213693950    ; 3 uses
  %i.t = shl i64 %n.vec57, 4                      ; 2 uses
  %i.u = getelementptr i8, ptr %2, i64 %i.t
  %i.v = getelementptr i8, ptr %i.c, i64 %i.t
  br label %vector.body58

vector.body58:                                    ; preds = %vector.body58, %vector.ph56
  %index59 = phi i64 [ 0, %vector.ph56 ], [ %index.next66, %vector.body58 ] ; 2 uses
  %i.w = shl i64 %index59, 4                      ; 3 uses
  %i.x = or disjoint i64 %i.w, 16                 ; 2 uses
  %next.gep60 = getelementptr i8, ptr %2, i64 %i.w
  %next.gep61 = getelementptr i8, ptr %2, i64 %i.x
  %next.gep62 = getelementptr i8, ptr %i.c, i64 %i.w
  %next.gep63 = getelementptr i8, ptr %i.c, i64 %i.x
  %wide.load64 = load <2 x double>, ptr %next.gep62, align 8, !tbaa !350
  %wide.load65 = load <2 x double>, ptr %next.gep63, align 8, !tbaa !350
  store <2 x double> %wide.load64, ptr %next.gep60, align 8, !tbaa !350
  store <2 x double> %wide.load65, ptr %next.gep61, align 8, !tbaa !350
  %index.next66 = add nuw i64 %index59, 2         ; 2 uses
  %i.y = icmp eq i64 %index.next66, %n.vec57
  br i1 %i.y, label %middle.block67, label %vector.body58, !llvm.loop !1566

middle.block67:                                   ; preds = %vector.body58
  %cmp.n68 = icmp eq i64 %i.s, %n.vec57
  br i1 %cmp.n68, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.i.preheader71

.lr.ph.i.i.i.i.i.preheader71:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block67
  %.09.i.i.i.i.i.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i.preheader ], [ %i.u, %middle.block67 ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.v, %middle.block67 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader71, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader71 ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader71 ] ; 3 uses
  %i.z = load double, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !350
  store double %i.z, ptr %.09.i.i.i.i.i, align 8, !tbaa !350
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !350
  store double %i.ac, ptr %i.aa, align 8, !tbaa !350
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1567

_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block67
  %i.af = load ptr, ptr %0, align 8, !tbaa !366   ; 3 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !368
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.aj) #48
  br label %_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseI6VectorILi2Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorI6VectorILi2Ed4FullESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !366
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.ak, ptr %i.h, align 8, !tbaa !368
  br label %_ZSt22__uninitialized_copy_aIP6VectorILi2Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !365 ; 8 uses
  %i.an = ptrtoint ptr %i.am to i64               ; 3 uses
  %i.ao = sub i64 %i.an, %i.l                     ; 5 uses
  %.not24 = icmp ult i64 %i.ao, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = icmp sgt i64 %i.g, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i25.preheader, label %_ZSt22__uninitialized_copy_aIP6VectorILi2Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit

.lr.ph.i.i.i.i.i25.preheader:                     ; preds = %bb.g
  %i.aq = and i64 %i.f, 16
  %lcmp.mod.not = icmp eq i64 %i.aq, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i25.prol.loopexit, label %.lr.ph.i.i.i.i.i25.prol

.lr.ph.i.i.i.i.i25.prol:                          ; preds = %.lr.ph.i.i.i.i.i25.preheader
  %.not.i.i.i.i.i.i.prol = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i.i.i.i.i.prol, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.prol

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.prol: ; preds = %.lr.ph.i.i.i.i.i25.prol
  %i.ar = load double, ptr %i.c, align 8, !tbaa !350
  store double %i.ar, ptr %i.j, align 8, !tbaa !350
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.au = load double, ptr %i.at, align 8, !tbaa !350
  store double %i.au, ptr %i.as, align 8, !tbaa !350
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol: ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i25.prol
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ax = add nsw i64 %i.g, -1
  br label %.lr.ph.i.i.i.i.i25.prol.loopexit

.lr.ph.i.i.i.i.i25.prol.loopexit:                 ; preds = %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i25.preheader
  %.012.i.i.i.i.i.unr = phi i64 [ %i.g, %.lr.ph.i.i.i.i.i25.preheader ], [ %i.ax, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i25.preheader ], [ %i.aw, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i25.preheader ], [ %i.av, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.prol ]
  %i.ay = icmp eq i64 %i.f, 16
  br i1 %i.ay, label %_ZSt22__uninitialized_copy_aIP6VectorILi2Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i25

.lr.ph.i.i.i.i.i25:                               ; preds = %.lr.ph.i.i.i.i.i25.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1
  %.012.i.i.i.i.i = phi i64 [ %i.bl, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1 ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i25.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bk, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1 ], [ %.0811.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i25.prol.loopexit ] ; 7 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bj, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1 ], [ %.0910.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i25.prol.loopexit ] ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.0811.i.i.i.i.i, %.0910.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i25
  %i.az = load double, ptr %.0910.i.i.i.i.i, align 8, !tbaa !350
  store double %i.az, ptr %.0811.i.i.i.i.i, align 8, !tbaa !350
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !350
  store double %i.bc, ptr %i.ba, align 8, !tbaa !350
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i:    ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i25
  %.not.i.i.i.i.i.i.1 = icmp eq ptr %.0811.i.i.i.i.i, %.0910.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.1, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.1

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.1: ; preds = %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.bf = load double, ptr %i.be, align 8, !tbaa !350
  store double %i.bf, ptr %i.bd, align 8, !tbaa !350
  %i.bg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !350
  store double %i.bi, ptr %i.bg, align 8, !tbaa !350
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.1:  ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i.1, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.bl = add nsw i64 %.012.i.i.i.i.i, -2
  %i.bm = icmp sgt i64 %.012.i.i.i.i.i, 2
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i25, label %_ZSt22__uninitialized_copy_aIP6VectorILi2Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, !llvm.loop !16

bb.h:                                             ; preds = %bb.f
  %i.bn = getelementptr i8, ptr %i.c, i64 %i.ao   ; 7 uses
  %i.bo = ashr exact i64 %i.ao, 4                 ; 3 uses
  %i.bp = icmp sgt i64 %i.bo, 0
  br i1 %i.bp, label %.lr.ph.i.i.i.i.i27.preheader, label %_ZSt4copyIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit

.lr.ph.i.i.i.i.i27.preheader:                     ; preds = %bb.h
  %i.bq = and i64 %i.ao, 16
  %lcmp.mod75.not = icmp eq i64 %i.bq, 0
  br i1 %lcmp.mod75.not, label %.lr.ph.i.i.i.i.i27.prol.loopexit, label %.lr.ph.i.i.i.i.i27.prol

.lr.ph.i.i.i.i.i27.prol:                          ; preds = %.lr.ph.i.i.i.i.i27.preheader
  %.not.i.i.i.i.i.i31.prol = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i.i.i.i.i31.prol, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.prol, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32.prol

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32.prol: ; preds = %.lr.ph.i.i.i.i.i27.prol
  %i.br = load double, ptr %i.c, align 8, !tbaa !350
  store double %i.br, ptr %i.j, align 8, !tbaa !350
  %i.bs = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !350
  store double %i.bu, ptr %i.bs, align 8, !tbaa !350
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.prol

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.prol: ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32.prol, %.lr.ph.i.i.i.i.i27.prol
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bx = add nsw i64 %i.bo, -1
  br label %.lr.ph.i.i.i.i.i27.prol.loopexit

.lr.ph.i.i.i.i.i27.prol.loopexit:                 ; preds = %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.prol, %.lr.ph.i.i.i.i.i27.preheader
  %.012.i.i.i.i.i28.unr = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i27.preheader ], [ %i.bx, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.prol ]
  %.0811.i.i.i.i.i29.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i27.preheader ], [ %i.bw, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.prol ]
  %.0910.i.i.i.i.i30.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i27.preheader ], [ %i.bv, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.prol ]
  %i.by = icmp eq i64 %i.ao, 16
  br i1 %i.by, label %_ZSt4copyIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit, label %.lr.ph.i.i.i.i.i27

.lr.ph.i.i.i.i.i27:                               ; preds = %.lr.ph.i.i.i.i.i27.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.1
  %.012.i.i.i.i.i28 = phi i64 [ %i.cl, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.1 ], [ %.012.i.i.i.i.i28.unr, %.lr.ph.i.i.i.i.i27.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i29 = phi ptr [ %i.ck, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.1 ], [ %.0811.i.i.i.i.i29.unr, %.lr.ph.i.i.i.i.i27.prol.loopexit ] ; 7 uses
  %.0910.i.i.i.i.i30 = phi ptr [ %i.cj, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.1 ], [ %.0910.i.i.i.i.i30.unr, %.lr.ph.i.i.i.i.i27.prol.loopexit ] ; 7 uses
  %.not.i.i.i.i.i.i31 = icmp eq ptr %.0811.i.i.i.i.i29, %.0910.i.i.i.i.i30
  br i1 %.not.i.i.i.i.i.i31, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i.i.i27
  %i.bz = load double, ptr %.0910.i.i.i.i.i30, align 8, !tbaa !350
  store double %i.bz, ptr %.0811.i.i.i.i.i29, align 8, !tbaa !350
  %i.ca = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 8
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !350
  store double %i.cc, ptr %i.ca, align 8, !tbaa !350
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33:  ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32, %.lr.ph.i.i.i.i.i27
  %.not.i.i.i.i.i.i31.1 = icmp eq ptr %.0811.i.i.i.i.i29, %.0910.i.i.i.i.i30
  br i1 %.not.i.i.i.i.i.i31.1, label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.1, label %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32.1

_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32.1: ; preds = %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33
  %i.cd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 16
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !350
  store double %i.cf, ptr %i.cd, align 8, !tbaa !350
  %i.cg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 24
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !350
  store double %i.ci, ptr %i.cg, align 8, !tbaa !350
  br label %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.1

_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.1: ; preds = %_ZN12VectorEngineILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i.i32.1, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33
  %i.cj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 32
  %i.cl = add nsw i64 %.012.i.i.i.i.i28, -2
  %i.cm = icmp sgt i64 %.012.i.i.i.i.i28, 2
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i27, label %_ZSt4copyIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit, !llvm.loop !1568

_ZSt4copyIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit: ; preds = %.lr.ph.i.i.i.i.i27.prol.loopexit, %_ZN6VectorILi2Ed4FullEaSERKS1_.exit.i.i.i.i.i33.1, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.bn, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIP6VectorILi2Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIP6VectorILi2Ed4FullES3_ET0_T_S5_S4_.exit
  %i.cn = add i64 %i.d, %i.l
  %i.co = add i64 %i.cn, -16
  %i.cp = add i64 %i.an, %i.e
  %i.cq = sub i64 %i.co, %i.cp                    ; 3 uses
  %i.cr = lshr i64 %i.cq, 4
  %i.cs = add nuw nsw i64 %i.cr, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cq, 368
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader72, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ct = and i64 %i.cq, -16                      ; 2 uses
  %i.cu = getelementptr i8, ptr %i.am, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 16
  %i.cw = add i64 %i.ct, %i.an
  %i.cx = add i64 %i.cw, 16
  %i.cy = sub i64 %i.cx, %i.l
  %i.cz = getelementptr i8, ptr %i.c, i64 %i.cy
  %bound0 = icmp ult ptr %i.am, %i.cz
  %bound1 = icmp ult ptr %i.bn, %i.cv
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader72, label %vector.ph
end_hunk_1
begin_hunk_2_@_ZN18CanonicalCenteringILi3EEC2Ev:bb.a
  %i.cfv = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cfw = load ptr, ptr %i.cfv, align 16, !tbaa !400
  %i.cfx = ptrtoint ptr %i.cfw to i64
  %i.cfy = ptrtoint ptr %i.cfu to i64
  %i.cfz = sub i64 %i.cfx, %i.cfy
  call void @_ZdlPvm(ptr noundef nonnull %i.cfu, i64 noundef %i.cfz) #48
  br label %_ZNSt6vectorI6VectorILi3Ed4FullESaIS2_EED2Ev.exit721.5

_ZNSt6vectorI6VectorILi3Ed4FullESaIS2_EED2Ev.exit721.5: ; preds = %bb.jk, %_ZNSt6vectorI6VectorILi3Ed4FullESaIS2_EED2Ev.exit721.4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  %i.cga = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.cgb = load ptr, ptr %i.cga, align 8, !tbaa !401 ; 3 uses
  %.not.i.i.i722 = icmp eq ptr %i.cgb, null
  br i1 %.not.i.i.i722, label %_ZNSt6vectorI3LocILi3EESaIS1_EED2Ev.exit723, label %bb.jl

bb.jl:                                            ; preds = %_ZNSt6vectorI6VectorILi3Ed4FullESaIS2_EED2Ev.exit721.5
  %i.cgc = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.cgd = load ptr, ptr %i.cgc, align 8, !tbaa !402
  %i.cge = ptrtoint ptr %i.cgd to i64
  %i.cgf = ptrtoint ptr %i.cgb to i64
  %i.cgg = sub i64 %i.cge, %i.cgf
  call void @_ZdlPvm(ptr noundef nonnull %i.cgb, i64 noundef %i.cgg) #48
  br label %_ZNSt6vectorI3LocILi3EESaIS1_EED2Ev.exit723

_ZNSt6vectorI3LocILi3EESaIS1_EED2Ev.exit723:      ; preds = %_ZNSt6vectorI6VectorILi3Ed4FullESaIS2_EED2Ev.exit721.5, %bb.jl
  %i.cgh = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.cgi = load ptr, ptr %i.cgh, align 16, !tbaa !401 ; 3 uses
  %.not.i.i.i722.1 = icmp eq ptr %i.cgi, null
  br i1 %.not.i.i.i722.1, label %_ZNSt6vectorI3LocILi3EESaIS1_EED2Ev.exit723.1, label %bb.jm

bb.jm:                                            ; preds = %_ZNSt6vectorI3LocILi3EESaIS1_EED2Ev.exit723
  %i.cgj = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.cgk = load ptr, ptr %i.cgj, align 16, !tbaa !402
  %i.cgl = ptrtoint ptr %i.cgk to i64
  %i.cgm = ptrtoint ptr %i.cgi to i64
  %i.cgn = sub i64 %i.cgl, %i.cgm
  call void @_ZdlPvm(ptr noundef nonnull %i.cgi, i64 noundef %i.cgn) #48
  br label %_ZNSt6vectorI3LocILi3EESaIS1_EED2Ev.exit723.1

_ZNSt6vectorI3LocILi3EESaIS1_EED2Ev.exit723.1:    ; preds = %bb.jm, %_ZNSt6vectorI3LocILi3EESaIS1_EED2Ev.exit723
  %i.cgo = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.cgp = load ptr, ptr %i.cgo, align 8, !tbaa !401 ; 3 uses
  %.not.i.i.i722.2 = icmp eq ptr %i.cgp, null
  br i1 %.not.i.i.i722.2, label %_ZNSt6vectorI3LocILi3EESaIS1_EED2Ev.exit723.2, label %bb.jn

bb.jn:                                            ; preds = %_ZNSt6vectorI3LocILi3EESaIS1_EED2Ev.exit723.1
  %i.cgq = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.cgr = load ptr, ptr %i.cgq, align 8, !tbaa !402
  %i.cgs = ptrtoint ptr %i.cgr to i64
  %i.cgt = ptrtoint ptr %i.cgp to i64
  %i.cgu = sub i64 %i.cgs, %i.cgt
  call void @_ZdlPvm(ptr noundef nonnull %i.cgp, i64 noundef %i.cgu) #48
  br label %_ZNSt6vectorI3LocILi3EESaIS1_EED2Ev.exit723.2

_ZNSt6vectorI3LocILi3EESaIS1_EED2Ev.exit723.2:    ; preds = %bb.jn, %_ZNSt6vectorI3LocILi3EESaIS1_EED2Ev.exit723.1
  %i.cgv = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.cgw = load ptr, ptr %i.cgv, align 16, !tbaa !401 ; 3 uses
  %.not.i.i.i722.3 = icmp eq ptr %i.cgw, null
  br i1 %.not.i.i.i722.3, label %_ZNSt6vectorI3LocILi3EESaIS1_EED2Ev.exit723.3, label %bb.jo

bb.jo:                                            ; preds = %_ZNSt6vectorI3LocILi3EESaIS1_EED2Ev.exit723.2
  %i.cgx = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.cgy = load ptr, ptr %i.cgx, align 16, !tbaa !402
  %i.cgz = ptrtoint ptr %i.cgy to i64
  %i.cha = ptrtoint ptr %i.cgw to i64
  %i.chb = sub i64 %i.cgz, %i.cha
  call void @_ZdlPvm(ptr noundef nonnull %i.cgw, i64 noundef %i.chb) #48
  br label %_ZNSt6vectorI3LocILi3EESaIS1_EED2Ev.exit723.3

_ZNSt6vectorI3LocILi3EESaIS1_EED2Ev.exit723.3:    ; preds = %bb.jo, %_ZNSt6vectorI3LocILi3EESaIS1_EED2Ev.exit723.2
  %i.chc = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.chd = load ptr, ptr %i.chc, align 8, !tbaa !401 ; 3 uses
  %.not.i.i.i722.4 = icmp eq ptr %i.chd, null
  br i1 %.not.i.i.i722.4, label %_ZNSt6vectorI3LocILi3EESaIS1_EED2Ev.exit723.4, label %bb.jp

bb.jp:                                            ; preds = %_ZNSt6vectorI3LocILi3EESaIS1_EED2Ev.exit723.3
  %i.che = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.chf = load ptr, ptr %i.che, align 8, !tbaa !402
  %i.chg = ptrtoint ptr %i.chf to i64
  %i.chh = ptrtoint ptr %i.chd to i64
  %i.chi = sub i64 %i.chg, %i.chh
  call void @_ZdlPvm(ptr noundef nonnull %i.chd, i64 noundef %i.chi) #48
  br label %_ZNSt6vectorI3LocILi3EESaIS1_EED2Ev.exit723.4

_ZNSt6vectorI3LocILi3EESaIS1_EED2Ev.exit723.4:    ; preds = %bb.jp, %_ZNSt6vectorI3LocILi3EESaIS1_EED2Ev.exit723.3
  %i.chj = load ptr, ptr %4, align 16, !tbaa !401 ; 3 uses
  %.not.i.i.i722.5 = icmp eq ptr %i.chj, null
  br i1 %.not.i.i.i722.5, label %_ZNSt6vectorI3LocILi3EESaIS1_EED2Ev.exit723.5, label %bb.jq

bb.jq:                                            ; preds = %_ZNSt6vectorI3LocILi3EESaIS1_EED2Ev.exit723.4
  %i.chk = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.chl = load ptr, ptr %i.chk, align 16, !tbaa !402
  %i.chm = ptrtoint ptr %i.chl to i64
  %i.chn = ptrtoint ptr %i.chj to i64
  %i.cho = sub i64 %i.chm, %i.chn
  call void @_ZdlPvm(ptr noundef nonnull %i.chj, i64 noundef %i.cho) #48
  br label %_ZNSt6vectorI3LocILi3EESaIS1_EED2Ev.exit723.5

_ZNSt6vectorI3LocILi3EESaIS1_EED2Ev.exit723.5:    ; preds = %bb.jq, %_ZNSt6vectorI3LocILi3EESaIS1_EED2Ev.exit723.4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  %i.chp = load ptr, ptr %i.ds, align 8, !tbaa !399 ; 3 uses
  %.not.i.i.i.i724 = icmp eq ptr %i.chp, null
  br i1 %.not.i.i.i.i724, label %_ZNSt6vectorI6VectorILi3Ed4FullESaIS2_EED2Ev.exit.i725, label %bb.jr

bb.jr:                                            ; preds = %_ZNSt6vectorI3LocILi3EESaIS1_EED2Ev.exit723.5
  %i.chq = load ptr, ptr %i.eu, align 8, !tbaa !400
  %i.chr = ptrtoint ptr %i.chq to i64
  %i.chs = ptrtoint ptr %i.chp to i64
  %i.cht = sub i64 %i.chr, %i.chs
  call void @_ZdlPvm(ptr noundef nonnull %i.chp, i64 noundef %i.cht) #48
  br label %_ZNSt6vectorI6VectorILi3Ed4FullESaIS2_EED2Ev.exit.i725

_ZNSt6vectorI6VectorILi3Ed4FullESaIS2_EED2Ev.exit.i725: ; preds = %bb.jr, %_ZNSt6vectorI3LocILi3EESaIS1_EED2Ev.exit723.5
  %i.chu = load ptr, ptr %i.b, align 8, !tbaa !401 ; 3 uses
  %.not.i.i.i1.i726 = icmp eq ptr %i.chu, null
  br i1 %.not.i.i.i1.i726, label %_ZN9CenteringILi3EED2Ev.exit727, label %bb.js

bb.js:                                            ; preds = %_ZNSt6vectorI6VectorILi3Ed4FullESaIS2_EED2Ev.exit.i725
  %i.chv = load ptr, ptr %i.el, align 8, !tbaa !402
  %i.chw = ptrtoint ptr %i.chv to i64
  %i.chx = ptrtoint ptr %i.chu to i64
  %i.chy = sub i64 %i.chw, %i.chx
  call void @_ZdlPvm(ptr noundef nonnull %i.chu, i64 noundef %i.chy) #48
  br label %_ZN9CenteringILi3EED2Ev.exit727

_ZN9CenteringILi3EED2Ev.exit727:                  ; preds = %_ZNSt6vectorI6VectorILi3Ed4FullESaIS2_EED2Ev.exit.i725, %bb.js
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #47
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN18CanonicalCenteringILi3EE8addValueERSt6vectorI3LocILi3EESaIS3_EERS1_I6VectorILi3Ed4FullESaIS9_EERKS3_RKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !403  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !402
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %2, align 4, !tbaa !340
  store i32 %i.e, ptr %i.b, align 4, !tbaa !165
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !340
  store i32 %i.h, ptr %i.f, align 4, !tbaa !165
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !340
  store i32 %i.k, ptr %i.i, align 4, !tbaa !165
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store ptr %i.l, ptr %i.a, align 8, !tbaa !403
  br label %_ZNSt6vectorI3LocILi3EESaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorI3LocILi3EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 4 dereferenceable(12) %2)
  br label %_ZNSt6vectorI3LocILi3EESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI3LocILi3EESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.b, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !404  ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !400
  %.not.i4 = icmp eq ptr %i.n, %i.p
  br i1 %.not.i4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI3LocILi3EESaIS1_EE9push_backERKS1_.exit
  %i.q = load double, ptr %3, align 8, !tbaa !350
  store double %i.q, ptr %i.n, align 8, !tbaa !350
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load double, ptr %i.s, align 8, !tbaa !350
  store double %i.t, ptr %i.r, align 8, !tbaa !350
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load double, ptr %i.v, align 8, !tbaa !350
  store double %i.w, ptr %i.u, align 8, !tbaa !350
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.x, ptr %i.m, align 8, !tbaa !404
  br label %_ZNSt6vectorI6VectorILi3Ed4FullESaIS2_EE9push_backERKS2_.exit

bb.e:                                             ; preds = %_ZNSt6vectorI3LocILi3EESaIS1_EE9push_backERKS1_.exit
  tail call void @_ZNSt6vectorI6VectorILi3Ed4FullESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.n, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZNSt6vectorI6VectorILi3Ed4FullESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorI6VectorILi3Ed4FullESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI3LocILi3EESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !403  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !401    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !402
  %i.i = load ptr, ptr %0, align 8, !tbaa !401    ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 12
  %i.o = icmp ugt i64 %i.n, 768614336404564650
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseI3LocILi3EESaIS1_EE11_M_allocateEm.exit.i, !prof !201

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

_ZNSt12_Vector_baseI3LocILi3EESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #45 ; 4 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseI3LocILi3EESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseI3LocILi3EESaIS1_EE11_M_allocateEm.exit.i ] ; 4 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseI3LocILi3EESaIS1_EE11_M_allocateEm.exit.i ] ; 4 uses
  %i.q = load i32, ptr %.sroa.04.08.i.i.i.i.i, align 4, !tbaa !340
  store i32 %i.q, ptr %.09.i.i.i.i.i, align 4, !tbaa !165
  %i.r = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !340
  store i32 %i.t, ptr %i.r, align 4, !tbaa !165
  %i.u = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !340
  store i32 %i.w, ptr %i.u, align 4, !tbaa !165
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 12 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 12
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI3LocILi3EESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !17

_ZNSt6vectorI3LocILi3EESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i
  %i.z = load ptr, ptr %0, align 8, !tbaa !401    ; 3 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseI3LocILi3EESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI3LocILi3EESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !402
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #48
  br label %_ZNSt12_Vector_baseI3LocILi3EESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseI3LocILi3EESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorI3LocILi3EESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !401
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !402
  br label %_ZSt22__uninitialized_copy_aIP3LocILi3EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !403 ; 2 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ai, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = icmp sgt i64 %i.f, 0
  br i1 %i.aj, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIP3LocILi3EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.g
  %i.ak = udiv exact i64 %i.f, 12
  br label %.lr.ph.i.i.i.i.i25

.lr.ph.i.i.i.i.i25:                               ; preds = %.lr.ph.i.i.i.i.i25, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i25 ], [ %i.ak, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i25 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i25 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %i.al = load i32, ptr %.0910.i.i.i.i.i, align 4, !tbaa !340
  store i32 %i.al, ptr %.0811.i.i.i.i.i, align 4, !tbaa !165
  %i.am = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !340
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !165
  %i.ap = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !340
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !165
  %i.as = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 12
  %i.at = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 12
  %i.au = add nsw i64 %.012.i.i.i.i.i, -1
  %i.av = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.av, label %.lr.ph.i.i.i.i.i25, label %_ZSt22__uninitialized_copy_aIP3LocILi3EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, !llvm.loop !19

bb.h:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ai ; 2 uses
  %i.ax = icmp sgt i64 %i.ai, 0
  br i1 %i.ax, label %.lr.ph.preheader.i.i.i.i.i27, label %_ZSt4copyIP3LocILi3EES2_ET0_T_S4_S3_.exit

.lr.ph.preheader.i.i.i.i.i27:                     ; preds = %bb.h
  %i.ay = udiv exact i64 %i.ai, 12
  br label %.lr.ph.i.i.i.i.i28

.lr.ph.i.i.i.i.i28:                               ; preds = %.lr.ph.i.i.i.i.i28, %.lr.ph.preheader.i.i.i.i.i27
  %.012.i.i.i.i.i29 = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i28 ], [ %i.ay, %.lr.ph.preheader.i.i.i.i.i27 ] ; 2 uses
  %.0811.i.i.i.i.i30 = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i28 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i27 ] ; 4 uses
  %.0910.i.i.i.i.i31 = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i28 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i27 ] ; 4 uses
  %i.az = load i32, ptr %.0910.i.i.i.i.i31, align 4, !tbaa !340
  store i32 %i.az, ptr %.0811.i.i.i.i.i30, align 4, !tbaa !165
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i30, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i31, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !340
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !165
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i30, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i31, i64 8
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !340
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !165
  %i.bg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i31, i64 12
  %i.bh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i30, i64 12
  %i.bi = add nsw i64 %.012.i.i.i.i.i29, -1
  %i.bj = icmp samesign ugt i64 %.012.i.i.i.i.i29, 1
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i28, label %_ZSt4copyIP3LocILi3EES2_ET0_T_S4_S3_.exit, !llvm.loop !1653

_ZSt4copyIP3LocILi3EES2_ET0_T_S4_S3_.exit:        ; preds = %.lr.ph.i.i.i.i.i28, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.aw, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIP3LocILi3EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIP3LocILi3EES2_ET0_T_S4_S3_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i ], [ %i.ag, %_ZSt4copyIP3LocILi3EES2_ET0_T_S4_S3_.exit ] ; 4 uses
  %.0810.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i ], [ %i.aw, %_ZSt4copyIP3LocILi3EES2_ET0_T_S4_S3_.exit ] ; 4 uses
  %i.bk = load i32, ptr %.0810.i.i.i.i, align 4, !tbaa !340
  store i32 %i.bk, ptr %.011.i.i.i.i, align 4, !tbaa !165
  %i.bl = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !340
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !165
  %i.bo = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !340
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !165
  %i.br = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 12 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 12
  %.not.i.i.i.i = icmp eq ptr %i.br, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIP3LocILi3EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1654

_ZSt22__uninitialized_copy_aIP3LocILi3EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i25, %.lr.ph.i.i.i.i, %bb.g, %_ZSt4copyIP3LocILi3EES2_ET0_T_S4_S3_.exit, %_ZNSt12_Vector_baseI3LocILi3EESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.bt = phi ptr [ %i.i, %.lr.ph.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseI3LocILi3EESaIS1_EE13_M_deallocateEPS1_m.exit ], [ %i.i, %bb.g ], [ %i.i, %_ZSt4copyIP3LocILi3EES2_ET0_T_S4_S3_.exit ], [ %i.i, %.lr.ph.i.i.i.i.i25 ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.f
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !403
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIP3LocILi3EES2_S1_ET0_T_S4_S3_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI6VectorILi3Ed4FullESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !404  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !399    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !400
  %i.i = load ptr, ptr %0, align 8, !tbaa !399    ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 24
  %i.o = icmp ugt i64 %i.n, 384307168202282325
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseI6VectorILi3Ed4FullESaIS2_EE11_M_allocateEm.exit.i, !prof !201

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

_ZNSt12_Vector_baseI6VectorILi3Ed4FullESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #45 ; 4 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseI6VectorILi3Ed4FullESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseI6VectorILi3Ed4FullESaIS2_EE11_M_allocateEm.exit.i ] ; 4 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseI6VectorILi3Ed4FullESaIS2_EE11_M_allocateEm.exit.i ] ; 4 uses
  %i.q = load double, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !350
  store double %i.q, ptr %.09.i.i.i.i.i, align 8, !tbaa !350
  %i.r = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8
  %i.t = load double, ptr %i.s, align 8, !tbaa !350
  store double %i.t, ptr %i.r, align 8, !tbaa !350
  %i.u = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16
  %i.w = load double, ptr %i.v, align 8, !tbaa !350
  store double %i.w, ptr %i.u, align 8, !tbaa !350
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI6VectorILi3Ed4FullESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !18

_ZNSt6vectorI6VectorILi3Ed4FullESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %.lr.ph.i.i.i.i.i
  %i.z = load ptr, ptr %0, align 8, !tbaa !399    ; 3 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseI6VectorILi3Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI6VectorILi3Ed4FullESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !400
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #48
  br label %_ZNSt12_Vector_baseI6VectorILi3Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseI6VectorILi3Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorI6VectorILi3Ed4FullESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !399
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !400
  br label %_ZSt22__uninitialized_copy_aIP6VectorILi3Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !404 ; 2 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ai, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = icmp sgt i64 %i.f, 0
  br i1 %i.aj, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIP6VectorILi3Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.g
  %i.ak = udiv exact i64 %i.f, 24
  br label %.lr.ph.i.i.i.i.i25

.lr.ph.i.i.i.i.i25:                               ; preds = %_ZN6VectorILi3Ed4FullEaSERKS1_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.au, %_ZN6VectorILi3Ed4FullEaSERKS1_.exit.i.i.i.i.i ], [ %i.ak, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.at, %_ZN6VectorILi3Ed4FullEaSERKS1_.exit.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 5 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.as, %_ZN6VectorILi3Ed4FullEaSERKS1_.exit.i.i.i.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 5 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.0811.i.i.i.i.i, %.0910.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZN6VectorILi3Ed4FullEaSERKS1_.exit.i.i.i.i.i, label %_ZN12VectorEngineILi3Ed4FullEaSERKS1_.exit.i.i.i.i.i.i

_ZN12VectorEngineILi3Ed4FullEaSERKS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i25
  %i.al = load double, ptr %.0910.i.i.i.i.i, align 8, !tbaa !350
  store double %i.al, ptr %.0811.i.i.i.i.i, align 8, !tbaa !350
  %i.am = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ao = load double, ptr %i.an, align 8, !tbaa !350
  store double %i.ao, ptr %i.am, align 8, !tbaa !350
  %i.ap = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !350
  store double %i.ar, ptr %i.ap, align 8, !tbaa !350
  br label %_ZN6VectorILi3Ed4FullEaSERKS1_.exit.i.i.i.i.i

_ZN6VectorILi3Ed4FullEaSERKS1_.exit.i.i.i.i.i:    ; preds = %_ZN12VectorEngineILi3Ed4FullEaSERKS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i25
  %i.as = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.au = add nsw i64 %.012.i.i.i.i.i, -1
  %i.av = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.av, label %.lr.ph.i.i.i.i.i25, label %_ZSt22__uninitialized_copy_aIP6VectorILi3Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, !llvm.loop !20

bb.h:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ai ; 2 uses
  %i.ax = icmp sgt i64 %i.ai, 0
  br i1 %i.ax, label %.lr.ph.preheader.i.i.i.i.i27, label %_ZSt4copyIP6VectorILi3Ed4FullES3_ET0_T_S5_S4_.exit

.lr.ph.preheader.i.i.i.i.i27:                     ; preds = %bb.h
  %i.ay = udiv exact i64 %i.ai, 24
  br label %.lr.ph.i.i.i.i.i28

.lr.ph.i.i.i.i.i28:                               ; preds = %_ZN6VectorILi3Ed4FullEaSERKS1_.exit.i.i.i.i.i34, %.lr.ph.preheader.i.i.i.i.i27
  %.012.i.i.i.i.i29 = phi i64 [ %i.bi, %_ZN6VectorILi3Ed4FullEaSERKS1_.exit.i.i.i.i.i34 ], [ %i.ay, %.lr.ph.preheader.i.i.i.i.i27 ] ; 2 uses
  %.0811.i.i.i.i.i30 = phi ptr [ %i.bh, %_ZN6VectorILi3Ed4FullEaSERKS1_.exit.i.i.i.i.i34 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i27 ] ; 5 uses
  %.0910.i.i.i.i.i31 = phi ptr [ %i.bg, %_ZN6VectorILi3Ed4FullEaSERKS1_.exit.i.i.i.i.i34 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i27 ] ; 5 uses
  %.not.i.i.i.i.i.i32 = icmp eq ptr %.0811.i.i.i.i.i30, %.0910.i.i.i.i.i31
  br i1 %.not.i.i.i.i.i.i32, label %_ZN6VectorILi3Ed4FullEaSERKS1_.exit.i.i.i.i.i34, label %_ZN12VectorEngineILi3Ed4FullEaSERKS1_.exit.i.i.i.i.i.i33

_ZN12VectorEngineILi3Ed4FullEaSERKS1_.exit.i.i.i.i.i.i33: ; preds = %.lr.ph.i.i.i.i.i28
  %i.az = load double, ptr %.0910.i.i.i.i.i31, align 8, !tbaa !350
  store double %i.az, ptr %.0811.i.i.i.i.i30, align 8, !tbaa !350
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i30, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i31, i64 8
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !350
  store double %i.bc, ptr %i.ba, align 8, !tbaa !350
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i30, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i31, i64 16
  %i.bf = load double, ptr %i.be, align 8, !tbaa !350
  store double %i.bf, ptr %i.bd, align 8, !tbaa !350
  br label %_ZN6VectorILi3Ed4FullEaSERKS1_.exit.i.i.i.i.i34

_ZN6VectorILi3Ed4FullEaSERKS1_.exit.i.i.i.i.i34:  ; preds = %_ZN12VectorEngineILi3Ed4FullEaSERKS1_.exit.i.i.i.i.i.i33, %.lr.ph.i.i.i.i.i28
  %i.bg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i31, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i30, i64 24
  %i.bi = add nsw i64 %.012.i.i.i.i.i29, -1
  %i.bj = icmp sgt i64 %.012.i.i.i.i.i29, 1
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i28, label %_ZSt4copyIP6VectorILi3Ed4FullES3_ET0_T_S5_S4_.exit, !llvm.loop !1655

_ZSt4copyIP6VectorILi3Ed4FullES3_ET0_T_S5_S4_.exit: ; preds = %_ZN6VectorILi3Ed4FullEaSERKS1_.exit.i.i.i.i.i34, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.aw, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIP6VectorILi3Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIP6VectorILi3Ed4FullES3_ET0_T_S5_S4_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i ], [ %i.ag, %_ZSt4copyIP6VectorILi3Ed4FullES3_ET0_T_S5_S4_.exit ] ; 4 uses
  %.0810.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i ], [ %i.aw, %_ZSt4copyIP6VectorILi3Ed4FullES3_ET0_T_S5_S4_.exit ] ; 4 uses
  %i.bk = load double, ptr %.0810.i.i.i.i, align 8, !tbaa !350
  store double %i.bk, ptr %.011.i.i.i.i, align 8, !tbaa !350
  %i.bl = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !350
  store double %i.bn, ptr %i.bl, align 8, !tbaa !350
  %i.bo = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !350
  store double %i.bq, ptr %i.bo, align 8, !tbaa !350
  %i.br = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 24 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.br, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIP6VectorILi3Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1656

_ZSt22__uninitialized_copy_aIP6VectorILi3Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit: ; preds = %_ZN6VectorILi3Ed4FullEaSERKS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i, %bb.g, %_ZSt4copyIP6VectorILi3Ed4FullES3_ET0_T_S5_S4_.exit, %_ZNSt12_Vector_baseI6VectorILi3Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.bt = phi ptr [ %i.i, %.lr.ph.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseI6VectorILi3Ed4FullESaIS2_EE13_M_deallocateEPS2_m.exit ], [ %i.i, %bb.g ], [ %i.i, %_ZSt4copyIP6VectorILi3Ed4FullES3_ET0_T_S5_S4_.exit ], [ %i.i, %_ZN6VectorILi3Ed4FullEaSERKS1_.exit.i.i.i.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.f
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !404
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIP6VectorILi3Ed4FullES3_S2_ET0_T_S5_S4_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9CenteringILi3EEC2E13CenteringType14ContinuityTypeRKSt6vectorI3LocILi3EESaIS5_EERKS3_I6VectorILi3Ed4FullESaISC_EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #1 comdat align 2 {
bb.a:
  store i32 %1, ptr %0, align 8, !tbaa !398
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !407
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !403  ; 2 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !401    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseI3LocILi3EESaIS1_EEC2EmRKS2_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sdiv exact i64 %i.h, 12
  %i.j = icmp ugt i64 %i.i, 768614336404564650
  br i1 %i.j, label %bb.c, label %_ZNSt15__new_allocatorI3LocILi3EEE8allocateEmPKv.exit.i.i.i.i, !prof !201

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #46
  unreachable

_ZNSt15__new_allocatorI3LocILi3EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #45
  br label %_ZNSt12_Vector_baseI3LocILi3EESaIS1_EEC2EmRKS2_.exit.i

_ZNSt12_Vector_baseI3LocILi3EESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt15__new_allocatorI3LocILi3EEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.l = phi ptr [ %i.k, %_ZNSt15__new_allocatorI3LocILi3EEE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !401
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !403
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.n, ptr %i.o, align 8, !tbaa !402
  %i.p = load ptr, ptr %3, align 8, !tbaa !405    ; 2 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !405  ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorI3LocILi3EESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseI3LocILi3EESaIS1_EEC2EmRKS2_.exit.i, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.l, %_ZNSt12_Vector_baseI3LocILi3EESaIS1_EEC2EmRKS2_.exit.i ] ; 4 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseI3LocILi3EESaIS1_EEC2EmRKS2_.exit.i ] ; 4 uses
  %i.r = load i32, ptr %.sroa.04.08.i.i.i.i.i, align 4, !tbaa !340
  store i32 %i.r, ptr %.09.i.i.i.i.i, align 4, !tbaa !165
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !340
  store i32 %i.u, ptr %i.s, align 4, !tbaa !165
  %i.v = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !340
  store i32 %i.x, ptr %i.v, align 4, !tbaa !165
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 12 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.q
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI3LocILi3EESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !17

_ZNSt6vectorI3LocILi3EESaIS1_EEC2ERKS3_.exit:     ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseI3LocILi3EESaIS1_EEC2EmRKS2_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.l, %_ZNSt12_Vector_baseI3LocILi3EESaIS1_EEC2EmRKS2_.exit.i ], [ %i.z, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.m, align 8, !tbaa !403
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !404 ; 2 uses
  %i.ad = load ptr, ptr %4, align 8, !tbaa !399   ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
end_hunk_2
begin_hunk_3_@_ZN15IntersectorDataILi3EE7touchesI14GridLayoutViewILi3ELi3EEEEvRKT_:bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph44, %bb.u
  %i.ce = phi ptr [ %i.bo, %.lr.ph44 ], [ %i.eq, %bb.u ] ; 2 uses
  %.sroa.033.042 = phi ptr [ %i.bn, %.lr.ph44 ], [ %i.ep, %bb.u ] ; 2 uses
  %i.cf = load ptr, ptr %.sroa.033.042, align 8, !tbaa !586 ; 7 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !165
  %i.ci = icmp slt i32 %i.ch, 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = icmp slt i32 %i.ck, 1
  %or.cond.i = select i1 %i.ci, i1 true, i1 %i.cl
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 20
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = icmp slt i32 %i.cn, 1
  %or.cond14.i = select i1 %or.cond.i, i1 true, i1 %i.co
  br i1 %or.cond14.i, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  %i.cp = load i64, ptr %i.ce, align 8, !tbaa !706
  %i.cq = trunc i64 %i.cp to i32                  ; 2 uses
  %i.cr = load <4 x i32>, ptr %i.cf, align 4, !tbaa !165
  store <4 x i32> %i.cr, ptr %2, align 16, !tbaa !165
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ct = load <2 x i32>, ptr %i.cs, align 4, !tbaa !165
  store <2 x i32> %i.ct, ptr %i.bw, align 16, !tbaa !165
  store ptr %i.bs, ptr %i.by, align 8, !tbaa !719
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !616 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cf, i64 52
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !615 ; 2 uses
  %i.cy = load ptr, ptr %i.bz, align 8, !tbaa !314 ; 9 uses
  %i.cz = load ptr, ptr %i.bs, align 8, !tbaa !315 ; 5 uses
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64               ; 2 uses
  %i.dc = sub i64 %i.da, %i.db                    ; 3 uses
  %i.dd = ashr exact i64 %i.dc, 4                 ; 4 uses
  %i.de = load ptr, ptr %i.ca, align 8, !tbaa !316
  %.not.i.i.i.i25 = icmp eq ptr %i.cy, %i.de
  br i1 %.not.i.i.i.i25, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %i.cq, ptr %i.cy, align 4, !tbaa !165
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store i32 %i.cv, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !tbaa !165
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i32 %i.cx, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !tbaa !165
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  store i32 -1, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !tbaa !165
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store ptr %i.df, ptr %i.bz, align 8, !tbaa !314
  br label %_ZN5INodeILi3EEC2I8IntervalILi3EEEERK4NodeIS3_T_EiP16GlobalIDDataBase.exit

bb.p:                                             ; preds = %bb.n
  %i.dg = icmp eq i64 %i.dc, 9223372036854775792
  br i1 %i.dg, label %bb.q, label %_ZNKSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.p
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dd, i64 1)
  %i.dh = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.dd ; 2 uses
  %i.di = icmp ult i64 %i.dh, %i.dd
  %i.dj = call i64 @llvm.umin.i64(i64 %i.dh, i64 576460752303423487)
  %i.dk = select i1 %i.di, i64 576460752303423487, i64 %i.dj ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.dk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.dl = shl nuw nsw i64 %i.dk, 4
  %i.dm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #45 ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dc ; 4 uses
  store i32 %i.cq, ptr %i.dn, align 4, !tbaa !165
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  store i32 %i.cv, ptr %.sroa.5.0..sroa_idx5.i.i, align 4, !tbaa !165
  %.sroa.6.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i32 %i.cx, ptr %.sroa.6.0..sroa_idx7.i.i, align 4, !tbaa !165
  %.sroa.7.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  store i32 -1, ptr %.sroa.7.0..sroa_idx9.i.i, align 4, !tbaa !165
  %.not10.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cz, %i.cy
  br i1 %.not10.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNKSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.dm, %_ZNKSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.cz, %_ZNKSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !317, !alias.scope !3397
  %i.do = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.do, %i.cy
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !9

_ZNSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNKSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dm, %_ZNKSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ], [ %i.dp, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i23.i.i.i.i.i, label %_ZNSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i.i
  %i.dr = load ptr, ptr %i.ca, align 8, !tbaa !316
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = sub i64 %i.ds, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dt) #48
  br label %_ZNSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i: ; preds = %bb.r, %_ZNSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i.i
  store ptr %i.dm, ptr %i.bs, align 8, !tbaa !315
  store ptr %i.dq, ptr %i.bz, align 8, !tbaa !314
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.dk
  store ptr %i.du, ptr %i.ca, align 8, !tbaa !316
  br label %_ZN5INodeILi3EEC2I8IntervalILi3EEEERK4NodeIS3_T_EiP16GlobalIDDataBase.exit

_ZN5INodeILi3EEC2I8IntervalILi3EEEERK4NodeIS3_T_EiP16GlobalIDDataBase.exit: ; preds = %bb.o, %_ZNSt6vectorIN16GlobalIDDataBase4PackESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i
  %i.dv = trunc i64 %i.dd to i32
  store i32 %i.dv, ptr %i.cb, align 16, !tbaa !720
  %i.dw = load ptr, ptr %i.cc, align 8, !tbaa !749 ; 11 uses
  %i.dx = load ptr, ptr %i.cd, align 8, !tbaa !750
  %.not.i.i26 = icmp eq ptr %i.dw, %i.dx
  br i1 %.not.i.i26, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN5INodeILi3EEC2I8IntervalILi3EEEERK4NodeIS3_T_EiP16GlobalIDDataBase.exit
  %i.dy = load i32, ptr %2, align 16, !tbaa !165
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !165
  %i.dz = load i32, ptr %i.bt, align 4, !tbaa !165
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !165
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ec = load i32, ptr %i.bu, align 8, !tbaa !165
  store i32 %i.ec, ptr %i.eb, align 4, !tbaa !165
  %i.ed = load i32, ptr %i.bv, align 4, !tbaa !165
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !165
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.eg = load i32, ptr %i.bw, align 16, !tbaa !165
  store i32 %i.eg, ptr %i.ef, align 4, !tbaa !165
  %i.eh = load i32, ptr %i.bx, align 4, !tbaa !165
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dw, i64 20
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !165
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.ek = load ptr, ptr %i.by, align 8, !tbaa !719
  store ptr %i.ek, ptr %i.ej, align 8, !tbaa !719
  %i.el = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.em = load i32, ptr %i.cb, align 16, !tbaa !720
  store i32 %i.em, ptr %i.el, align 8, !tbaa !720
  %i.en = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  store ptr %i.en, ptr %i.cc, align 8, !tbaa !749
  br label %_ZNSt6vectorI5INodeILi3EESaIS1_EE9push_backEOS1_.exit

bb.t:                                             ; preds = %_ZN5INodeILi3EEC2I8IntervalILi3EEEERK4NodeIS3_T_EiP16GlobalIDDataBase.exit
  call void @_ZNSt6vectorI5INodeILi3EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr %i.dw, ptr noundef nonnull align 8 dereferenceable(36) %2)
  br label %_ZNSt6vectorI5INodeILi3EESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorI5INodeILi3EESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  %.pre48 = load ptr, ptr %1, align 8, !tbaa !709, !noalias !3396
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorI5INodeILi3EESaIS1_EE9push_backEOS1_.exit, %bb.m
  %i.eo = phi ptr [ %.pre48, %_ZNSt6vectorI5INodeILi3EESaIS1_EE9push_backEOS1_.exit ], [ %i.ce, %bb.m ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.033.042, i64 8 ; 2 uses
  call void @_ZNK18LayoutBaseViewDataILi3ELi3E10GridLayoutILi3EEE17computeSubdomainsEv(ptr noundef nonnull align 8 dereferenceable(281) %i.eo), !noalias !3396
  %i.eq = load ptr, ptr %1, align 8, !tbaa !709, !noalias !3396 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 216
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !578, !noalias !3396
  %.not = icmp eq ptr %i.ep, %i.es
  br i1 %.not, label %_ZNSt6vectorI5INodeILi3EESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit, label %bb.m, !llvm.loop !3390

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit24
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !749
  %i.ew = load ptr, ptr %i.et, align 8, !tbaa !751 ; 2 uses
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = sdiv exact i64 %i.ez, 40                ; 3 uses
  %i.fb = trunc i64 %i.fa to i32
  %i.fc = icmp sgt i32 %i.fb, 0
  br i1 %i.fc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.v
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.trip.count = and i64 %i.fa, 2147483647
  br label %bb.z

._crit_edge.loopexit:                             ; preds = %bb.z
  %.pre47 = load ptr, ptr %i.et, align 8, !tbaa !716
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.v
  %i.ff = phi ptr [ %.pre47, %._crit_edge.loopexit ], [ %i.ew, %bb.v ] ; 3 uses
  %sext = shl i64 %i.fa, 32                       ; 2 uses
  %i.fg = ashr exact i64 %sext, 32
  %.idx = mul nsw i64 %i.fg, 40
  %i.fh = getelementptr inbounds i8, ptr %i.ff, i64 %.idx ; 2 uses
  %.not.i.i27 = icmp eq i64 %sext, 0
  br i1 %.not.i.i27, label %_ZNSt6vectorI5INodeILi3EESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = load ptr, ptr %i.eu, align 8, !tbaa !716 ; 2 uses
  %.pre.i.i = ptrtoint ptr %i.fj to i64
  %.pre14.i.i = sub i64 %.pre.i.i, %i.fi          ; 3 uses
  %i.fk = icmp sgt i64 %.pre14.i.i, 0
  br i1 %i.fk, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP5INodeILi3EESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.w
  %i.fl = udiv exact i64 %.pre14.i.i, 40
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN5INodeILi3EEaSERKS0_.exit.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.gk, %_ZN5INodeILi3EEaSERKS0_.exit.i.i.i.i.i.i.i ], [ %i.fl, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.gj, %_ZN5INodeILi3EEaSERKS0_.exit.i.i.i.i.i.i.i ], [ %i.ff, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 10 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.gi, %_ZN5INodeILi3EEaSERKS0_.exit.i.i.i.i.i.i.i ], [ %i.fh, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 10 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.0910.i.i.i.i.i.i.i, %.0811.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5INodeILi3EEaSERKS0_.exit.i.i.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.fm = load i32, ptr %.0910.i.i.i.i.i.i.i, align 4, !tbaa !165
  store i32 %i.fm, ptr %.0811.i.i.i.i.i.i.i, align 4, !tbaa !165
  %i.fn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 4
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !165
  %i.fp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 4
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !165
  %i.fq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 8
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !165
  store i32 %i.fs, ptr %i.fq, align 4, !tbaa !165
  %i.ft = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 12
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !165
  %i.fv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 12
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !165
  %i.fw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 16
  %i.fx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 16
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !165
  store i32 %i.fy, ptr %i.fw, align 4, !tbaa !165
  %i.fz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 20
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !165
  %i.gb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 20
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !165
  %i.gc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !719
  %i.ge = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 24
  store ptr %i.gd, ptr %i.ge, align 8, !tbaa !719
  %i.gf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 32
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !720
  %i.gh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 32
  store i32 %i.gg, ptr %i.gh, align 8, !tbaa !720
  br label %_ZN5INodeILi3EEaSERKS0_.exit.i.i.i.i.i.i.i

_ZN5INodeILi3EEaSERKS0_.exit.i.i.i.i.i.i.i:       ; preds = %bb.x, %.lr.ph.i.i.i.i.i.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 40
  %i.gj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 40
  %i.gk = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.gl = icmp sgt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.gl, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP5INodeILi3EESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i, !llvm.loop !3391

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP5INodeILi3EESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i: ; preds = %_ZN5INodeILi3EEaSERKS0_.exit.i.i.i.i.i.i.i, %bb.w
  %i.gm = getelementptr inbounds i8, ptr %i.ff, i64 %.pre14.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fj, %i.gm
  br i1 %.not.i.i.i, label %_ZNSt6vectorI5INodeILi3EESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit, label %bb.y

bb.y:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP5INodeILi3EESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i
  store ptr %i.gm, ptr %i.eu, align 8, !tbaa !749
  br label %_ZNSt6vectorI5INodeILi3EESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit

bb.z:                                             ; preds = %.lr.ph, %bb.z
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.z ] ; 2 uses
  %i.gn = load ptr, ptr %i.et, align 8, !tbaa !751
  %i.go = getelementptr inbounds nuw [40 x i8], ptr %i.gn, i64 %indvars.iv ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #47
  %i.gp = load ptr, ptr %1, align 8, !tbaa !709   ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !706
  call void @llvm.experimental.noalias.scope.decl(metadata !3398)
  %i.gr = shl i64 %i.gq, 32
  %i.gs = ashr exact i64 %i.gr, 32
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !720, !noalias !3398
  %i.gv = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !719, !noalias !3398
  store i64 %i.gs, ptr %3, align 8, !tbaa !753, !alias.scope !3398
  store i32 %i.gu, ptr %i.fd, align 8, !tbaa !754, !alias.scope !3398
  store ptr %i.gw, ptr %i.fe, align 8, !tbaa !755, !alias.scope !3398
  %i.gx = call noundef i32 @_ZNK18LayoutBaseViewDataILi3ELi3E10GridLayoutILi3EEE7touchesI8IntervalILi3EESt20back_insert_iteratorISt6vectorI5INodeILi3EESaIS9_EEE21TouchesConstructINodeILi3EEEEiRKT_T0_RKT1_(ptr noundef nonnull align 8 dereferenceable(281) %i.gp, ptr noundef nonnull align 4 dereferenceable(24) %i.go, ptr nonnull %i.et, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.z, !llvm.loop !3394

_ZNSt6vectorI5INodeILi3EESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit: ; preds = %bb.u, %bb.l, %bb.y, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP5INodeILi3EESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN15IntersectorDataILi3EE14pushBaseDomainILi3EEEvRK5RangeIXT_EE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 4 dereferenceable(36) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %class.Range.319, align 16          ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !756  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !747
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !281  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !280
  %.not.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 3, ptr %i.g, align 4, !tbaa !165
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store ptr %i.j, ptr %i.f, align 8, !tbaa !281
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !279  ; 4 uses
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m                       ; 5 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775804
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.189) #46
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 2305843009213693951)
  %i.t = select i1 %i.r, i64 2305843009213693951, i64 %i.s ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #45 ; 4 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.n ; 2 uses
  store i32 3, ptr %i.w, align 4, !tbaa !165
  %i.x = icmp sgt i64 %i.n, 0
  br i1 %i.x, label %bb.e, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.v, ptr align 4 %i.k, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !280
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.ab) #48
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.v, ptr %i.e, align 8, !tbaa !279
  store ptr %i.y, ptr %i.f, align 8, !tbaa !281
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ac, ptr %i.h, align 8, !tbaa !280
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !756
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.b, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  %i.ad = phi ptr [ %i.c, %bb.b ], [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  store <4 x i32> <i32 0, i32 0, i32 1, i32 0>, ptr %2, align 16, !tbaa !165
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <4 x i32> <i32 0, i32 1, i32 0, i32 0>, ptr %i.ae, align 16, !tbaa !165
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  store <4 x i32> <i32 1, i32 0, i32 0, i32 1>, ptr %i.af, align 16, !tbaa !165
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <4 x i32> <i32 0, i32 0, i32 1, i32 0>, ptr %i.ag, align 16, !tbaa !165
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 64
  store <4 x i32> <i32 0, i32 1, i32 0, i32 0>, ptr %i.ah, align 16, !tbaa !165
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i32 1, ptr %i.ai, align 16, !tbaa !165
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !757
  %.not.i.i10 = icmp eq ptr %i.ad, %i.ak
  br i1 %.not.i.i10, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  store <4 x i32> <i32 0, i32 0, i32 1, i32 0>, ptr %i.ad, align 4, !tbaa !165
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <4 x i32> <i32 0, i32 1, i32 0, i32 0>, ptr %i.al, align 4, !tbaa !165
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store <4 x i32> <i32 1, i32 0, i32 0, i32 1>, ptr %i.am, align 4, !tbaa !165
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store <4 x i32> <i32 0, i32 0, i32 1, i32 0>, ptr %i.an, align 4, !tbaa !165
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  store <4 x i32> <i32 0, i32 1, i32 0, i32 0>, ptr %i.ao, align 4, !tbaa !165
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  store i32 1, ptr %i.ap, align 4, !tbaa !165
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 84
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !756
  br label %_ZNSt6vectorI5RangeILi7EESaIS1_EE9push_backEOS1_.exit

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  call void @_ZNSt6vectorI5RangeILi7EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.ad, ptr noundef nonnull align 4 dereferenceable(84) %2)
  br label %_ZNSt6vectorI5RangeILi7EESaIS1_EE9push_backEOS1_.exit
end_hunk_3
