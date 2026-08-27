Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/speech_recognition?download=true
inline.NumInlined: 1145
inline.NumDeleted: 467
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNSt6vectorIdSaIdEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPdS1_EEEEvS6_T_S7_St20forward_iterator_tag:bb.a
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
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !65
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.cc) #20
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bk, ptr %0, align 8, !tbaa !62
  store ptr %i.bz, ptr %i.g, align 8, !tbaa !66
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bh
  store ptr %i.cd, ptr %i.e, align 8, !tbaa !65
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
  %3 = alloca %"class.std::vector", align 8       ; 18 uses
  %4 = alloca %"class.std::vector", align 8       ; 9 uses
  %5 = alloca %"class.std::vector", align 8       ; 9 uses
  %6 = alloca %"class.std::vector.19", align 8    ; 11 uses
  %7 = alloca %"class.std::vector.19", align 8    ; 9 uses
  %8 = alloca %"class.std::vector", align 8       ; 15 uses
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
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %12 = zext nneg i32 %i.c to i64
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.b

.preheader174:                                    ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit, %bb.a
  %i.g = phi ptr [ null, %bb.a ], [ %i.ap, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 2 uses
  %i.h = phi ptr [ null, %bb.a ], [ %i.aq, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 2 uses
  %i.i = phi ptr [ null, %bb.a ], [ %i.ar, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !66   ; 3 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !62     ; 3 uses
  %.not240 = icmp eq ptr %i.k, %i.l
  br i1 %.not240, label %._crit_edge, label %.lr.ph210

.lr.ph210:                                        ; preds = %.preheader174
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.h

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit
  %i.o = phi ptr [ null, %.lr.ph ], [ %i.ap, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 5 uses
  %i.p = phi ptr [ null, %.lr.ph ], [ %i.aq, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 3 uses
  %i.q = phi ptr [ null, %.lr.ph ], [ %i.ar, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit ] ; 2 uses
  %i.r = sub nsw i64 %12, %indvars.iv
  %i.s = load ptr, ptr %2, align 8, !tbaa !62
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.p
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load double, ptr %i.t, align 8, !tbaa !74
  store double %i.u, ptr %i.q, align 8, !tbaa !74
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.e, align 8, !tbaa !66
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit

bb.d:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.p to i64
  %i.x = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.y = sub i64 %i.w, %i.x                       ; 5 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #22
          to label %.noexc unwind label %.loopexit.split-lp181

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #21
          to label %.noexc87 unwind label %.loopexit180 ; 5 uses

.noexc87:                                         ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.y ; 2 uses
  %i.ai = load double, ptr %i.t, align 8, !tbaa !74
  store double %i.ai, ptr %i.ah, align 8, !tbaa !74
  %i.aj = icmp sgt i64 %i.y, 0
  br i1 %i.aj, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

bb.f:                                             ; preds = %.noexc87
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.o, i64 %i.y, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i: ; preds = %bb.f, %.noexc87
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  %i.al = load ptr, ptr %i.f, align 8, !tbaa !65
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.an) #20
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  store ptr %i.ag, ptr %3, align 8, !tbaa !62
  store ptr %i.ak, ptr %i.e, align 8, !tbaa !66
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae ; 2 uses
  store ptr %i.ao, ptr %i.f, align 8, !tbaa !65
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit

_ZNSt6vectorIdSaIdEE9push_backERKd.exit:          ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, %bb.c
  %i.ap = phi ptr [ %i.ag, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %i.o, %bb.c ] ; 2 uses
  %i.aq = phi ptr [ %i.ao, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %i.p, %bb.c ] ; 2 uses
  %i.ar = phi ptr [ %i.ak, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %i.v, %bb.c ] ; 2 uses
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
  %.pre-phi274 = phi i64 [ 0, %.preheader174 ], [ %i.cn, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97 ] ; 2 uses
  %i.as = phi ptr [ %i.g, %.preheader174 ], [ %i.cg, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97 ]
  %i.at = phi ptr [ %i.h, %.preheader174 ], [ %i.ch, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97 ]
  %i.au = phi ptr [ %i.i, %.preheader174 ], [ %i.ci, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97 ]
  %i.av = phi ptr [ %i.l, %.preheader174 ], [ %i.ce, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97 ]
  %i.aw = phi ptr [ %i.k, %.preheader174 ], [ %i.cf, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97 ]
  %i.ax = add nsw i64 %.pre-phi274, -2            ; 2 uses
  %i.ay = xor i32 %i.c, -1
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
  %i.ba = add nsw i64 %.pre-phi274, %i.az
  %.not211 = icmp ult i64 %i.ax, %i.ba
  br i1 %.not211, label %._crit_edge215, label %.lr.ph214

.lr.ph214:                                        ; preds = %._crit_edge
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.n

bb.h:                                             ; preds = %.lr.ph210, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97
  %i.bd = phi ptr [ %i.l, %.lr.ph210 ], [ %i.ce, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97 ] ; 2 uses
  %i.be = phi ptr [ %i.k, %.lr.ph210 ], [ %i.cf, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97 ]
  %i.bf = phi ptr [ %i.g, %.lr.ph210 ], [ %i.cg, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97 ] ; 5 uses
  %i.bg = phi ptr [ %i.h, %.lr.ph210 ], [ %i.ch, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97 ] ; 3 uses
  %i.bh = phi ptr [ %i.i, %.lr.ph210 ], [ %i.ci, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97 ] ; 3 uses
  %.054209 = phi i64 [ 0, %.lr.ph210 ], [ %i.cj, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97 ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.054209 ; 2 uses
  %.not.i88 = icmp eq ptr %i.bh, %i.bg
  br i1 %.not.i88, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !74
  store double %i.bj, ptr %i.bh, align 8, !tbaa !74
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  store ptr %i.bk, ptr %i.m, align 8, !tbaa !66
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97

bb.j:                                             ; preds = %bb.h
  %i.bl = ptrtoint ptr %i.bg to i64
  %i.bm = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 5 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.k, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i89

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #22
          to label %.noexc95 unwind label %.loopexit.split-lp176

.noexc95:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i89: ; preds = %bb.j
  %i.bp = ashr exact i64 %i.bn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i90 = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i90, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 1152921504606846975)
  %i.bt = select i1 %i.br, i64 1152921504606846975, i64 %i.bs ; 3 uses
  %.not.i.i.i91 = icmp ne i64 %i.bt, 0
  tail call void @llvm.assume(i1 %.not.i.i.i91)
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #21
          to label %.noexc96 unwind label %.loopexit175 ; 5 uses

.noexc96:                                         ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i89
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %i.bn ; 2 uses
  %i.bx = load double, ptr %i.bi, align 8, !tbaa !74
  store double %i.bx, ptr %i.bw, align 8, !tbaa !74
  %i.by = icmp sgt i64 %i.bn, 0
  br i1 %i.by, label %bb.l, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i92

bb.l:                                             ; preds = %.noexc96
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bv, ptr align 8 %i.bf, i64 %i.bn, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i92

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i92: ; preds = %bb.l, %.noexc96
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %.not.i17.i.i93 = icmp eq ptr %i.bf, null
  br i1 %.not.i17.i.i93, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i94, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i92
  %i.ca = load ptr, ptr %i.n, align 8, !tbaa !65
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.cc) #20
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i94

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i94: ; preds = %bb.m, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i92
  store ptr %i.bv, ptr %3, align 8, !tbaa !62
  store ptr %i.bz, ptr %i.m, align 8, !tbaa !66
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt ; 2 uses
  store ptr %i.cd, ptr %i.n, align 8, !tbaa !65
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !66
  %.pre265 = load ptr, ptr %2, align 8, !tbaa !62
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit97

_ZNSt6vectorIdSaIdEE9push_backERKd.exit97:        ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i94, %bb.i
  %i.ce = phi ptr [ %.pre265, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i94 ], [ %i.bd, %bb.i ] ; 3 uses
  %i.cf = phi ptr [ %.pre, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i94 ], [ %i.be, %bb.i ] ; 3 uses
  %i.cg = phi ptr [ %i.bv, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i94 ], [ %i.bf, %bb.i ] ; 2 uses
  %i.ch = phi ptr [ %i.cd, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i94 ], [ %i.bg, %bb.i ] ; 2 uses
  %i.ci = phi ptr [ %i.bz, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i94 ], [ %i.bk, %bb.i ] ; 2 uses
  %i.cj = add nuw i64 %.054209, 1                 ; 2 uses
  %i.ck = ptrtoint ptr %i.cf to i64
  %i.cl = ptrtoint ptr %i.ce to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 3                 ; 2 uses
  %i.co = icmp ult i64 %i.cj, %i.cn
  br i1 %i.co, label %bb.h, label %._crit_edge, !llvm.loop !157

.loopexit175:                                     ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i89
  %lpad.loopexit177 = landingpad { ptr, i32 }
          cleanup
end_hunk_0
