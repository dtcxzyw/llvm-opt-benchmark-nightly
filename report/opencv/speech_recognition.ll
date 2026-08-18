inline.NumInlined: 1145
inline.NumDeleted: 467
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNSt6vectorIdSaIdEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPdS1_EEEEvS6_T_S7_St20forward_iterator_tag:bb.a
  %i.ag = load double, ptr %2, align 8, !tbaa !74
  store double %i.ag, ptr %1, align 8, !tbaa !74
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ah = icmp eq i64 %i.m, 8
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.m ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.a, %i.aj                     ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 8
  br i1 %i.al, label %bb.n, label %bb.o, !prof !116

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr align 8 %i.ai, i64 %i.ak, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !66
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_dET0_T_S8_S7_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.am = icmp eq i64 %i.ak, 8
  br i1 %i.am, label %bb.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_dET0_T_S8_S7_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.an = load double, ptr %i.ai, align 8, !tbaa !74
  store double %i.an, ptr %i.h, align 8, !tbaa !74
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_dET0_T_S8_S7_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_dET0_T_S8_S7_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.ao = phi ptr [ %.pre, %bb.n ], [ %i.h, %bb.o ], [ %i.h, %bb.p ]
  %i.ap = sub nuw nsw i64 %i.d, %i.n
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap ; 5 uses
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !66
  %i.ar = icmp sgt i64 %i.m, 8
  br i1 %i.ar, label %bb.q, label %bb.r, !prof !116

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_dET0_T_S8_S7_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aq, ptr align 8 %1, i64 %i.m, i1 false)
  %.pre71 = load ptr, ptr %i.g, align 8, !tbaa !66
  br label %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit51

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_dET0_T_S8_S7_RSaIT1_E.exit
  br i1 %i.ah, label %bb.s, label %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit51

bb.s:                                             ; preds = %bb.r
  %i.as = load double, ptr %1, align 8, !tbaa !74
  store double %i.as, ptr %i.aq, align 8, !tbaa !74
  br label %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit51

_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit51: ; preds = %bb.q, %bb.r, %bb.s
  %i.at = phi ptr [ %.pre71, %bb.q ], [ %i.aq, %bb.r ], [ %i.aq, %bb.s ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.m
  store ptr %i.au, ptr %i.g, align 8, !tbaa !66
  %i.av = icmp sgt i64 %i.m, 8
  br i1 %i.av, label %bb.t, label %bb.u, !prof !116

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit51
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit51
  %i.aw = icmp eq i64 %i.m, 8
  br i1 %i.aw, label %bb.v, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit

bb.v:                                             ; preds = %bb.u
  %i.ax = load double, ptr %2, align 8, !tbaa !74
  store double %i.ax, ptr %1, align 8, !tbaa !74
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit

bb.w:                                             ; preds = %bb.b
  %i.ay = load ptr, ptr %0, align 8, !tbaa !62    ; 5 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.ba = sub i64 %i.j, %i.az
  %i.bb = ashr exact i64 %i.ba, 3                 ; 4 uses
  %i.bc = sub nsw i64 1152921504606846975, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.d
  br i1 %i.bd, label %bb.x, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #22
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.d)
  %i.be = add nsw i64 %.sroa.speculated.i, %i.bb  ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bb
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 1152921504606846975)
  %i.bh = select i1 %i.bf, i64 1152921504606846975, i64 %i.bg ; 3 uses
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.bi = shl nuw nsw i64 %i.bh, 3
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #21
  br label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bk = phi ptr [ %i.bj, %bb.y ], [ null, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bl = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bm = sub i64 %i.bl, %i.az                    ; 4 uses
  %i.bn = icmp sgt i64 %i.bm, 8
  br i1 %i.bn, label %bb.z, label %bb.aa, !prof !116

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bk, ptr align 8 %i.ay, i64 %i.bm, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit
  %i.bo = icmp eq i64 %i.bm, 8
  br i1 %i.bo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bp = load double, ptr %i.ay, align 8, !tbaa !74
  store double %i.bp, ptr %i.bk, align 8, !tbaa !74
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bq = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm ; 3 uses
  %i.br = icmp sgt i64 %i.c, 8
  br i1 %i.br, label %bb.ad, label %bb.ae, !prof !116

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bq, ptr align 8 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bs = icmp eq i64 %i.c, 8
  br i1 %i.bs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bt = load double, ptr %2, align 8, !tbaa !74
  store double %i.bt, ptr %i.bq, align 8, !tbaa !74
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.c ; 3 uses
  %i.bv = sub i64 %i.j, %i.bl                     ; 4 uses
  %i.bw = icmp sgt i64 %i.bv, 8
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !116

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr align 8 %1, i64 %i.bv, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bx = icmp eq i64 %i.bv, 8
  br i1 %i.bx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.by = load double, ptr %1, align 8, !tbaa !74
  store double %i.by, ptr %i.bu, align 8, !tbaa !74
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bz = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %.not.i55 = icmp eq ptr %i.ay, null
  br i1 %.not.i55, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ca = sub i64 %i.i, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.ca) #20
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bk, ptr %0, align 8, !tbaa !62
  store ptr %i.bz, ptr %i.g, align 8, !tbaa !66
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bh
  store ptr %i.cb, ptr %i.e, align 8, !tbaa !65
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare noundef zeroext i1 @_ZN2cv12VideoCapture4openEiiRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(25), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN18FilterbankFeatures10stft_powerERSt6vectorIdSaIdEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.19") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 20 uses
  %4 = alloca %"class.std::vector", align 8       ; 9 uses
  %5 = alloca %"class.std::vector", align 8       ; 9 uses
  %6 = alloca %"class.std::vector.19", align 8    ; 11 uses
  %7 = alloca %"class.std::vector.19", align 8    ; 9 uses
  %8 = alloca %"class.std::vector", align 8       ; 14 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 14 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !155  ; 2 uses
  %i.c = sdiv i32 %i.b, 2                         ; 3 uses
  %i.d = icmp sgt i32 %i.b, 1
  br i1 %i.d, label %.lr.ph, label %.preheader174

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %12 = zext nneg i32 %i.c to i64
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.b

.preheader174:                                    ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit, %bb.a
  %.promoted215 = phi ptr [ null, %bb.a ], [ %i.aj, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 2 uses
  %.promoted214 = phi ptr [ null, %bb.a ], [ %i.ak, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66   ; 5 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !62     ; 5 uses
  %.not248 = icmp eq ptr %i.h, %i.i
  br i1 %.not248, label %._crit_edge, label %.lr.ph213

.lr.ph213:                                        ; preds = %.preheader174
  %.promoted211 = load ptr, ptr %3, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.h

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 2 uses
  %i.l = phi ptr [ null, %.lr.ph ], [ %i.aj, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 3 uses
  %i.m = phi ptr [ null, %.lr.ph ], [ %i.ak, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 3 uses
  %i.n = phi ptr [ null, %.lr.ph ], [ %i.al, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 5 uses
  %i.o = sub nsw i64 %12, %indvars.iv
  %i.p = load ptr, ptr %2, align 8, !tbaa !62
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o ; 2 uses
  %.not.i = icmp eq ptr %i.m, %i.l
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load double, ptr %i.q, align 8, !tbaa !74
  store double %i.r, ptr %i.m, align 8, !tbaa !74
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.s, ptr %i.e, align 8, !tbaa !66
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit

bb.d:                                             ; preds = %bb.b
  %i.t = ptrtoint ptr %i.l to i64
  %i.u = ptrtoint ptr %i.n to i64
  %i.v = sub i64 %i.t, %i.u                       ; 6 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775800
  br i1 %i.w, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #22
          to label %.noexc unwind label %.loopexit.split-lp181

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.x = ashr exact i64 %i.v, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.y, i64 1152921504606846975)
  %i.ab = select i1 %i.z, i64 1152921504606846975, i64 %i.aa ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ab, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #21
          to label %.noexc87 unwind label %.loopexit180 ; 5 uses

.noexc87:                                         ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %i.v ; 2 uses
  %i.af = load double, ptr %i.q, align 8, !tbaa !74
  store double %i.af, ptr %i.ae, align 8, !tbaa !74
  %i.ag = icmp sgt i64 %i.v, 0
  br i1 %i.ag, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

bb.f:                                             ; preds = %.noexc87
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr align 8 %i.n, i64 %i.v, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i: ; preds = %bb.f, %.noexc87
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.v) #20
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  store ptr %i.ad, ptr %3, align 8, !tbaa !62
  store ptr %i.ah, ptr %i.e, align 8, !tbaa !66
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab ; 2 uses
  store ptr %i.ai, ptr %i.f, align 8, !tbaa !65
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit

_ZNSt6vectorIdSaIdEE9push_backERKd.exit:          ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, %bb.c
  %i.aj = phi ptr [ %i.ai, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.ak = phi ptr [ %i.ah, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %i.s, %bb.c ] ; 2 uses
  %i.al = phi ptr [ %i.ad, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %i.n, %bb.c ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader174, label %bb.b, !llvm.loop !156

.loopexit180:                                     ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit182 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

.loopexit.split-lp181:                            ; preds = %bb.e
  %lpad.loopexit.split-lp183 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

._crit_edge:                                      ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97, %.preheader174
  %.pre-phi306 = phi i64 [ 0, %.preheader174 ], [ %i.cb, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97 ] ; 2 uses
  %.pre279296 = phi ptr [ %i.i, %.preheader174 ], [ %.pre275287, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97 ]
  %.pre278292 = phi ptr [ %i.h, %.preheader174 ], [ %.pre284, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97 ]
  %.promoted223 = phi ptr [ %.promoted215, %.preheader174 ], [ %i.bu, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97 ]
  %.promoted222 = phi ptr [ %.promoted214, %.preheader174 ], [ %i.bv, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97 ]
  %i.am = phi ptr [ %i.i, %.preheader174 ], [ %i.bs, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97 ]
  %i.an = phi ptr [ %i.h, %.preheader174 ], [ %i.bt, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97 ]
  %i.ao = add nsw i64 %.pre-phi306, -2            ; 2 uses
  %i.ap = xor i32 %i.c, -1
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  %i.ar = add nsw i64 %.pre-phi306, %i.aq
  %.not217 = icmp ult i64 %i.ao, %i.ar
  br i1 %.not217, label %._crit_edge221, label %.lr.ph220

.lr.ph220:                                        ; preds = %._crit_edge
  %.promoted216 = load ptr, ptr %3, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.n

bb.h:                                             ; preds = %.lr.ph213, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97
  %.pre275286 = phi ptr [ %i.i, %.lr.ph213 ], [ %.pre275287, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97 ] ; 2 uses
  %.pre283 = phi ptr [ %i.h, %.lr.ph213 ], [ %.pre284, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97 ] ; 2 uses
  %i.au = phi ptr [ %i.i, %.lr.ph213 ], [ %i.bs, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97 ] ; 2 uses
  %i.av = phi ptr [ %i.h, %.lr.ph213 ], [ %i.bt, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97 ]
  %i.aw = phi ptr [ %.promoted215, %.lr.ph213 ], [ %i.bu, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97 ] ; 3 uses
  %i.ax = phi ptr [ %.promoted214, %.lr.ph213 ], [ %i.bv, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97 ] ; 3 uses
  %.054212 = phi i64 [ 0, %.lr.ph213 ], [ %i.bx, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97 ] ; 2 uses
  %i.ay = phi ptr [ %.promoted211, %.lr.ph213 ], [ %i.bw, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97 ] ; 5 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.054212 ; 2 uses
  %.not.i88 = icmp eq ptr %i.ax, %i.aw
  br i1 %.not.i88, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load double, ptr %i.az, align 8, !tbaa !74
  store double %i.ba, ptr %i.ax, align 8, !tbaa !74
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  store ptr %i.bb, ptr %i.j, align 8, !tbaa !66
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97

bb.j:                                             ; preds = %bb.h
  %i.bc = ptrtoint ptr %i.aw to i64
  %i.bd = ptrtoint ptr %i.ay to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 6 uses
  %i.bf = icmp eq i64 %i.be, 9223372036854775800
  br i1 %i.bf, label %bb.k, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i89

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #22
          to label %.noexc95 unwind label %.loopexit.split-lp176

.noexc95:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i89: ; preds = %bb.j
  %i.bg = ashr exact i64 %i.be, 3                 ; 3 uses
  %.sroa.speculated.i.i.i90 = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %i.bh = add nsw i64 %.sroa.speculated.i.i.i90, %i.bg ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bg
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 1152921504606846975)
  %i.bk = select i1 %i.bi, i64 1152921504606846975, i64 %i.bj ; 3 uses
  %.not.i.i.i91 = icmp ne i64 %i.bk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i91)
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #21
          to label %.noexc96 unwind label %.loopexit175 ; 5 uses

.noexc96:                                         ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i89
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %i.be ; 2 uses
  %i.bo = load double, ptr %i.az, align 8, !tbaa !74
  store double %i.bo, ptr %i.bn, align 8, !tbaa !74
  %i.bp = icmp sgt i64 %i.be, 0
  br i1 %i.bp, label %bb.l, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i92

bb.l:                                             ; preds = %.noexc96
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr align 8 %i.ay, i64 %i.be, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i92

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i92: ; preds = %bb.l, %.noexc96
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %.not.i17.i.i93 = icmp eq ptr %i.ay, null
  br i1 %.not.i17.i.i93, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i94, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i92
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.be) #20
  %.pre.pre = load ptr, ptr %i.g, align 8, !tbaa !66
  %.pre275.pre = load ptr, ptr %2, align 8, !tbaa !62
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i94

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i94: ; preds = %bb.m, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i92
  %.pre275 = phi ptr [ %.pre275.pre, %bb.m ], [ %.pre275286, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i92 ] ; 2 uses
  %.pre = phi ptr [ %.pre.pre, %bb.m ], [ %.pre283, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i92 ] ; 2 uses
  store ptr %i.bm, ptr %3, align 8, !tbaa !62
  store ptr %i.bq, ptr %i.j, align 8, !tbaa !66
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bk ; 2 uses
  store ptr %i.br, ptr %i.k, align 8, !tbaa !65
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97

_ZNSt6vectorIdSaIdEE9push_backERKd.exit97:        ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i94, %bb.i
  %.pre275287 = phi ptr [ %.pre275, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i94 ], [ %.pre275286, %bb.i ] ; 2 uses
  %.pre284 = phi ptr [ %.pre, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i94 ], [ %.pre283, %bb.i ] ; 2 uses
  %i.bs = phi ptr [ %.pre275, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i94 ], [ %i.au, %bb.i ] ; 3 uses
  %i.bt = phi ptr [ %.pre, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i94 ], [ %i.av, %bb.i ] ; 3 uses
  %i.bu = phi ptr [ %i.br, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i94 ], [ %i.aw, %bb.i ] ; 2 uses
  %i.bv = phi ptr [ %i.bq, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i94 ], [ %i.bb, %bb.i ] ; 2 uses
  %i.bw = phi ptr [ %i.bm, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i94 ], [ %i.ay, %bb.i ]
  %i.bx = add nuw i64 %.054212, 1                 ; 2 uses
  %i.by = ptrtoint ptr %i.bt to i64
  %i.bz = ptrtoint ptr %i.bs to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = ashr exact i64 %i.ca, 3                 ; 2 uses
  %i.cc = icmp ult i64 %i.bx, %i.cb
  br i1 %i.cc, label %bb.h, label %._crit_edge, !llvm.loop !157

.loopexit175:                                     ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i89
end_hunk_0
