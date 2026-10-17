Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/Signature?download=true
inline.NumInlined: 4036
inline.NumDeleted: 1208
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN4LIEF2PE9SignatureC2ERKS1_:bb.a
  br i1 %.not7.i.i.i.i.i9, label %_ZNSt6vectorIN4LIEF2PE10SignerInfoESaIS2_EEC2ERKS4_.exit, label %.lr.ph.i.i.i.i.i10

.lr.ph.i.i.i.i.i10:                               ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE10SignerInfoESaIS2_EEC2EmRKS3_.exit.i, %.lr.ph.i.i.i.i.i10
  %.09.i.i.i.i.i11 = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i10 ], [ %i.ai, %_ZNSt12_Vector_baseIN4LIEF2PE10SignerInfoESaIS2_EEC2EmRKS3_.exit.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i12 = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i10 ], [ %i.am, %_ZNSt12_Vector_baseIN4LIEF2PE10SignerInfoESaIS2_EEC2EmRKS3_.exit.i ] ; 2 uses
  tail call void @_ZN4LIEF2PE10SignerInfoC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(184) %.09.i.i.i.i.i11, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.04.08.i.i.i.i.i12) #24
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i12, i64 184 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i11, i64 184 ; 2 uses
  %.not.i.i.i.i.i13 = icmp eq ptr %i.ao, %i.an
  br i1 %.not.i.i.i.i.i13, label %_ZNSt6vectorIN4LIEF2PE10SignerInfoESaIS2_EEC2ERKS4_.exit, label %.lr.ph.i.i.i.i.i10, !llvm.loop !1

_ZNSt6vectorIN4LIEF2PE10SignerInfoESaIS2_EEC2ERKS4_.exit: ; preds = %.lr.ph.i.i.i.i.i10, %_ZNSt12_Vector_baseIN4LIEF2PE10SignerInfoESaIS2_EEC2EmRKS3_.exit.i
  %.0.lcssa.i.i.i.i.i14 = phi ptr [ %i.ai, %_ZNSt12_Vector_baseIN4LIEF2PE10SignerInfoESaIS2_EEC2EmRKS3_.exit.i ], [ %i.ap, %.lr.ph.i.i.i.i.i10 ]
  store ptr %.0.lcssa.i.i.i.i.i14, ptr %i.aj, align 8, !tbaa !87
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !91 ; 2 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !92 ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %.not.i.i.i.i15 = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i.i.i.i15, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4LIEF2PE10SignerInfoESaIS2_EEC2ERKS4_.exit
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %bb.g, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, !prof !83

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.f
  %i.bb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #26
  br label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i:      ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIN4LIEF2PE10SignerInfoESaIS2_EEC2ERKS4_.exit
  %i.bc = phi ptr [ %i.bb, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ], [ null, %_ZNSt6vectorIN4LIEF2PE10SignerInfoESaIS2_EEC2ERKS4_.exit ] ; 6 uses
  store ptr %i.bc, ptr %i.as, align 8, !tbaa !92
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !91
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !93
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !94 ; 3 uses
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !94
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bg to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 4 uses
  %i.bl = icmp sgt i64 %i.bk, 1
  br i1 %i.bl, label %bb.h, label %bb.i, !prof !95

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bc, ptr align 1 %i.bg, i64 %i.bk, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i
  %i.bm = icmp eq i64 %i.bk, 1
  br i1 %i.bm, label %bb.j, label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

bb.j:                                             ; preds = %bb.i
  %i.bn = load i8, ptr %i.bg, align 1, !tbaa !96
  store i8 %i.bn, ptr %i.bc, align 1, !tbaa !96
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit:                ; preds = %bb.h, %bb.i, %bb.j
  %i.bo = getelementptr inbounds i8, ptr %i.bc, i64 %i.bk
  store ptr %i.bo, ptr %i.bd, align 8, !tbaa !91
  ret void
}

declare void @_ZN4LIEF6ObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

declare void @_ZN4LIEF2PE11ContentInfoC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIhSaIhEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !92     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i, !prof !83

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26
  br label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit:        ; preds = %bb.a, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i
  %i.i = phi ptr [ %i.h, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i ], [ null, %bb.a ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !92
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !91
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !93
  %i.m = load ptr, ptr %1, align 8, !tbaa !94     ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %bb.e, !prof !95

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.m, i64 %i.q, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEEPhhET0_T_SA_S9_RSaIT1_E.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit
  %i.s = icmp eq i64 %i.q, 1
  br i1 %i.s, label %bb.f, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEEPhhET0_T_SA_S9_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.m, align 1, !tbaa !96
  store i8 %i.t, ptr %i.i, align 1, !tbaa !96
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEEPhhET0_T_SA_S9_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEEPhhET0_T_SA_S9_RSaIT1_E.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(120) ptr @_ZN4LIEF2PE9SignatureaSERKS1_(ptr noundef nonnull returned align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.LIEF::PE::ContentInfo", align 8 ; 5 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF6ObjectaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #24 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  store i64 %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_ZN4LIEF2PE11ContentInfoC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.f) #24
  %i.g = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF2PE11ContentInfoaSES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 %2) #24 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF2PE11ContentInfoE, i64 16), ptr %2, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !97   ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN4LIEF2PE11ContentInfoD2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF2PE11ContentInfo7ContentEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN4LIEF2PE11ContentInfo7ContentEEclEPS3_.exit.i.i: ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #24, !inline_history !2
  br label %_ZN4LIEF2PE11ContentInfoD2Ev.exit

_ZN4LIEF2PE11ContentInfoD2Ev.exit:                ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF2PE11ContentInfo7ContentEEclEPS3_.exit.i.i
  call void @_ZN4LIEF6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %2) #24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4LIEF2PE4x509ESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.n) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.r = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4LIEF2PE10SignerInfoESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.q) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.w = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.v) ; 0 uses
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF6ObjectaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF2PE11ContentInfoaSES1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef align 8) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4LIEF2PE4x509ESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"class.LIEF::PE::x509", align 8    ; 5 uses
  %3 = alloca %"class.LIEF::PE::x509", align 8    ; 5 uses
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !82     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !84
  %i.j = load ptr, ptr %0, align 8, !tbaa !82     ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseIN4LIEF2PE4x509ESaIS2_EE11_M_allocateEm.exit.i, !prof !83

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt12_Vector_baseIN4LIEF2PE4x509ESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE4x509ESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE4x509ESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseIN4LIEF2PE4x509ESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseIN4LIEF2PE4x509ESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @_ZN4LIEF2PE4x509C1ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i) #24
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.q, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE4x509ESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN4LIEF2PE4x509ESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseIN4LIEF2PE4x509ESaIS2_EE11_M_allocateEm.exit.i
  %i.s = load ptr, ptr %0, align 8, !tbaa !82     ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !81   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4LIEF2PE4x509EEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN4LIEF2PE4x509ESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %i.s, %_ZNSt6vectorIN4LIEF2PE4x509ESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit ] ; 3 uses
  %i.v = load ptr, ptr %.05.i.i, align 8, !tbaa !50
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.05.i.i) #24, !inline_history !301
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.y, %i.u
  br i1 %.not.i.i25, label %_ZSt8_DestroyIPN4LIEF2PE4x509EEvT_S4_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !3

_ZSt8_DestroyIPN4LIEF2PE4x509EEvT_S4_.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !82
  br label %_ZSt8_DestroyIPN4LIEF2PE4x509EEvT_S4_.exit

_ZSt8_DestroyIPN4LIEF2PE4x509EEvT_S4_.exit:       ; preds = %_ZSt8_DestroyIPN4LIEF2PE4x509EEvT_S4_.exitthread-pre-split, %_ZNSt6vectorIN4LIEF2PE4x509ESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  %i.z = phi ptr [ %.pr, %_ZSt8_DestroyIPN4LIEF2PE4x509EEvT_S4_.exitthread-pre-split ], [ %i.s, %_ZNSt6vectorIN4LIEF2PE4x509ESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4LIEF2PE4x509ESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4LIEF2PE4x509EEvT_S4_.exit
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !84
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt12_Vector_baseIN4LIEF2PE4x509ESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4LIEF2PE4x509ESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN4LIEF2PE4x509EEvT_S4_.exit, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !82
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !84
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4LIEF2PE4x509ESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

bb.f:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !81 ; 3 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.ai, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.aj = icmp sgt i64 %i.g, 0
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE4x509ESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.i26:                               ; preds = %bb.g, %.lr.ph.i.i.i.i.i26
  %.012.i.i.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i.i.i26 ], [ %i.g, %bb.g ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i26 ], [ %i.j, %bb.g ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i26 ], [ %i.c, %bb.g ] ; 2 uses
  call void @_ZN4LIEF2PE4x509C1ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.0910.i.i.i.i.i) #24
  %i.ak = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF2PE4x509aSES1_(ptr noundef nonnull align 8 dereferenceable(16) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 %3) #24 ; 0 uses
  call void @_ZN4LIEF2PE4x509D1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  %i.al = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 3 uses
  %i.an = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ao = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE4x509ESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit, !llvm.loop !302

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE4x509ESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i26
  %.pre = load ptr, ptr %i.af, align 8, !tbaa !85
  %.pre46 = ptrtoint ptr %i.am to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE4x509ESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE4x509ESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE4x509ESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit, %bb.g
  %.pre-phi47 = phi i64 [ %.pre46, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE4x509ESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit ], [ %i.l, %bb.g ]
  %i.ap = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE4x509ESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit ], [ %i.ag, %bb.g ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.am, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE4x509ESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit ], [ %i.j, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not4.i.i27 = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.ap
  br i1 %.not4.i.i27, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4LIEF2PE4x509ESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i.i28.preheader

.lr.ph.i.i28.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE4x509ESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit
  %i.aq = sub i64 %.pre-phi47, %i.l
  %i.ar = getelementptr inbounds i8, ptr %i.j, i64 %i.aq
  br label %.lr.ph.i.i28

.lr.ph.i.i28:                                     ; preds = %.lr.ph.i.i28.preheader, %.lr.ph.i.i28
  %.sroa.01.05.i.i = phi ptr [ %i.av, %.lr.ph.i.i28 ], [ %i.ar, %.lr.ph.i.i28.preheader ] ; 3 uses
  %i.as = load ptr, ptr %.sroa.01.05.i.i, align 8, !tbaa !50
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.sroa.01.05.i.i) #24, !inline_history !303
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16 ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.av, %i.ap
  br i1 %.not.i.i29, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4LIEF2PE4x509ESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i.i28, !llvm.loop !304

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.aw = ashr exact i64 %i.ai, 4                 ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i31, label %_ZSt4copyIPN4LIEF2PE4x509ES3_ET0_T_S5_S4_.exit

.lr.ph.i.i.i.i.i31:                               ; preds = %bb.h, %.lr.ph.i.i.i.i.i31
  %.012.i.i.i.i.i32 = phi i64 [ %i.bb, %.lr.ph.i.i.i.i.i31 ], [ %i.aw, %bb.h ] ; 2 uses
  %.0811.i.i.i.i.i33 = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i31 ], [ %i.j, %bb.h ] ; 2 uses
  %.0910.i.i.i.i.i34 = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i31 ], [ %i.c, %bb.h ] ; 2 uses
  call void @_ZN4LIEF2PE4x509C1ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.0910.i.i.i.i.i34) #24
  %i.ay = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF2PE4x509aSES1_(ptr noundef nonnull align 8 dereferenceable(16) %.0811.i.i.i.i.i33, ptr noundef nonnull align 8 %2) #24 ; 0 uses
  call void @_ZN4LIEF2PE4x509D1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  %i.az = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i34, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i33, i64 16
  %i.bb = add nsw i64 %.012.i.i.i.i.i32, -1
  %i.bc = icmp samesign ugt i64 %.012.i.i.i.i.i32, 1
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i31, label %_ZSt4copyIPN4LIEF2PE4x509ES3_ET0_T_S5_S4_.exit.loopexit, !llvm.loop !305

_ZSt4copyIPN4LIEF2PE4x509ES3_ET0_T_S5_S4_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i31
  %.pre37 = load ptr, ptr %1, align 8, !tbaa !82
  %.pre38 = load ptr, ptr %i.af, align 8, !tbaa !81 ; 2 uses
  %.pre39 = load ptr, ptr %0, align 8, !tbaa !82
  %.pre40 = load ptr, ptr %i.a, align 8, !tbaa !81
  %.pre41 = ptrtoint ptr %.pre38 to i64
  %.pre42 = ptrtoint ptr %.pre39 to i64
  %.pre44 = sub i64 %.pre41, %.pre42
  br label %_ZSt4copyIPN4LIEF2PE4x509ES3_ET0_T_S5_S4_.exit

_ZSt4copyIPN4LIEF2PE4x509ES3_ET0_T_S5_S4_.exit:   ; preds = %_ZSt4copyIPN4LIEF2PE4x509ES3_ET0_T_S5_S4_.exit.loopexit, %bb.h
  %.pre-phi45 = phi i64 [ %.pre44, %_ZSt4copyIPN4LIEF2PE4x509ES3_ET0_T_S5_S4_.exit.loopexit ], [ %i.ai, %bb.h ]
  %i.bd = phi ptr [ %.pre40, %_ZSt4copyIPN4LIEF2PE4x509ES3_ET0_T_S5_S4_.exit.loopexit ], [ %i.b, %bb.h ] ; 2 uses
  %i.be = phi ptr [ %.pre38, %_ZSt4copyIPN4LIEF2PE4x509ES3_ET0_T_S5_S4_.exit.loopexit ], [ %i.ag, %bb.h ]
  %i.bf = phi ptr [ %.pre37, %_ZSt4copyIPN4LIEF2PE4x509ES3_ET0_T_S5_S4_.exit.loopexit ], [ %i.c, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.pre-phi45 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.bg, %i.bd
  br i1 %.not9.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4LIEF2PE4x509ESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN4LIEF2PE4x509ES3_ET0_T_S5_S4_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i ], [ %i.be, %_ZSt4copyIPN4LIEF2PE4x509ES3_ET0_T_S5_S4_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i ], [ %i.bg, %_ZSt4copyIPN4LIEF2PE4x509ES3_ET0_T_S5_S4_.exit ] ; 2 uses
  call void @_ZN4LIEF2PE4x509C1ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0810.i.i.i.i) #24
  %i.bh = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.bh, %i.bd
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4LIEF2PE4x509ESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !306

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4LIEF2PE4x509ESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %.lr.ph.i.i28, %.lr.ph.i.i.i.i, %_ZSt4copyIPN4LIEF2PE4x509ES3_ET0_T_S5_S4_.exit, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE4x509ESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, %_ZNSt12_Vector_baseIN4LIEF2PE4x509ESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.bj = load ptr, ptr %0, align 8, !tbaa !82
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.f
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !81
  br label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4LIEF2PE4x509ESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4LIEF2PE10SignerInfoESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"class.LIEF::PE::SignerInfo", align 8 ; 5 uses
  %3 = alloca %"class.LIEF::PE::SignerInfo", align 8 ; 5 uses
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !88     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !89
  %i.i = load ptr, ptr %0, align 8, !tbaa !88     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 4 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 184
  %i.o = icmp ugt i64 %i.n, 50127021939428129
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseIN4LIEF2PE10SignerInfoESaIS2_EE11_M_allocateEm.exit.i, !prof !83

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt12_Vector_baseIN4LIEF2PE10SignerInfoESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE10SignerInfoESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN4LIEF2PE10SignerInfoESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseIN4LIEF2PE10SignerInfoESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseIN4LIEF2PE10SignerInfoESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @_ZN4LIEF2PE10SignerInfoC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(184) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.04.08.i.i.i.i.i) #24
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 184 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 184
  %.not.i.i.i.i.i = icmp eq ptr %i.q, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4LIEF2PE10SignerInfoESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN4LIEF2PE10SignerInfoESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseIN4LIEF2PE10SignerInfoESaIS2_EE11_M_allocateEm.exit.i
  %i.s = load ptr, ptr %0, align 8, !tbaa !88     ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !87   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4LIEF2PE10SignerInfoEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN4LIEF2PE10SignerInfoESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %i.s, %_ZNSt6vectorIN4LIEF2PE10SignerInfoESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit ] ; 3 uses
  %i.v = load ptr, ptr %.05.i.i, align 8, !tbaa !50
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.05.i.i) #24, !inline_history !307
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 184 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.y, %i.u
  br i1 %.not.i.i25, label %_ZSt8_DestroyIPN4LIEF2PE10SignerInfoEEvT_S4_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !4

_ZSt8_DestroyIPN4LIEF2PE10SignerInfoEEvT_S4_.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !88
  br label %_ZSt8_DestroyIPN4LIEF2PE10SignerInfoEEvT_S4_.exit

_ZSt8_DestroyIPN4LIEF2PE10SignerInfoEEvT_S4_.exit: ; preds = %_ZSt8_DestroyIPN4LIEF2PE10SignerInfoEEvT_S4_.exitthread-pre-split, %_ZNSt6vectorIN4LIEF2PE10SignerInfoESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  %i.z = phi ptr [ %.pr, %_ZSt8_DestroyIPN4LIEF2PE10SignerInfoEEvT_S4_.exitthread-pre-split ], [ %i.s, %_ZNSt6vectorIN4LIEF2PE10SignerInfoESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4LIEF2PE10SignerInfoESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4LIEF2PE10SignerInfoEEvT_S4_.exit
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !89
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt12_Vector_baseIN4LIEF2PE10SignerInfoESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4LIEF2PE10SignerInfoESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN4LIEF2PE10SignerInfoEEvT_S4_.exit, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !88
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !89
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4LIEF2PE10SignerInfoESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

bb.f:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !87 ; 3 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ai, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.aj = icmp sgt i64 %i.f, 0
  br i1 %i.aj, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE10SignerInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.g
  %i.ak = udiv exact i64 %i.f, 184
  br label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %.lr.ph.i.i.i.i.i26, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ao, %.lr.ph.i.i.i.i.i26 ], [ %i.ak, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i26 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i26 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  call void @_ZN4LIEF2PE10SignerInfoC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(184) %3, ptr noundef nonnull align 8 dereferenceable(184) %.0910.i.i.i.i.i) #24
  %i.al = call noundef nonnull align 8 dereferenceable(184) ptr @_ZN4LIEF2PE10SignerInfoaSES1_(ptr noundef nonnull align 8 dereferenceable(184) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 %3) #24 ; 0 uses
  call void @_ZN4LIEF2PE10SignerInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %3) #24
  %i.am = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 184
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 184 ; 3 uses
  %i.ao = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ap = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE10SignerInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit, !llvm.loop !308

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE10SignerInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i26
  %.pre = load ptr, ptr %i.af, align 8, !tbaa !90
  %.pre47 = ptrtoint ptr %i.an to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE10SignerInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE10SignerInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE10SignerInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit, %bb.g
  %.pre-phi48 = phi i64 [ %.pre47, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE10SignerInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit ], [ %i.k, %bb.g ]
  %i.aq = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE10SignerInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit ], [ %i.ag, %bb.g ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.an, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE10SignerInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit ], [ %i.i, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not4.i.i27 = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.aq
  br i1 %.not4.i.i27, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4LIEF2PE10SignerInfoESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i.i28.preheader

.lr.ph.i.i28.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE10SignerInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit
  %i.ar = sub i64 %.pre-phi48, %i.k
  %i.as = getelementptr inbounds i8, ptr %i.i, i64 %i.ar
  br label %.lr.ph.i.i28

.lr.ph.i.i28:                                     ; preds = %.lr.ph.i.i28.preheader, %.lr.ph.i.i28
  %.sroa.01.05.i.i = phi ptr [ %i.aw, %.lr.ph.i.i28 ], [ %i.as, %.lr.ph.i.i28.preheader ] ; 3 uses
  %i.at = load ptr, ptr %.sroa.01.05.i.i, align 8, !tbaa !50
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.sroa.01.05.i.i) #24, !inline_history !309
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 184 ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.aw, %i.aq
  br i1 %.not.i.i29, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4LIEF2PE10SignerInfoESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i.i28, !llvm.loop !310

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.ax = icmp sgt i64 %i.ai, 0
  br i1 %i.ax, label %.lr.ph.preheader.i.i.i.i.i31, label %_ZSt4copyIPN4LIEF2PE10SignerInfoES3_ET0_T_S5_S4_.exit

.lr.ph.preheader.i.i.i.i.i31:                     ; preds = %bb.h
  %i.ay = udiv exact i64 %i.ai, 184
  br label %.lr.ph.i.i.i.i.i32

.lr.ph.i.i.i.i.i32:                               ; preds = %.lr.ph.i.i.i.i.i32, %.lr.ph.preheader.i.i.i.i.i31
  %.012.i.i.i.i.i33 = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i32 ], [ %i.ay, %.lr.ph.preheader.i.i.i.i.i31 ] ; 2 uses
  %.0811.i.i.i.i.i34 = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i32 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i31 ] ; 2 uses
  %.0910.i.i.i.i.i35 = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i32 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i31 ] ; 2 uses
  call void @_ZN4LIEF2PE10SignerInfoC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull align 8 dereferenceable(184) %.0910.i.i.i.i.i35) #24
  %i.az = call noundef nonnull align 8 dereferenceable(184) ptr @_ZN4LIEF2PE10SignerInfoaSES1_(ptr noundef nonnull align 8 dereferenceable(184) %.0811.i.i.i.i.i34, ptr noundef nonnull align 8 %2) #24 ; 0 uses
  call void @_ZN4LIEF2PE10SignerInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %2) #24
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i35, i64 184
  %i.bb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i34, i64 184
  %i.bc = add nsw i64 %.012.i.i.i.i.i33, -1
  %i.bd = icmp samesign ugt i64 %.012.i.i.i.i.i33, 1
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i32, label %_ZSt4copyIPN4LIEF2PE10SignerInfoES3_ET0_T_S5_S4_.exit.loopexit, !llvm.loop !311

_ZSt4copyIPN4LIEF2PE10SignerInfoES3_ET0_T_S5_S4_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i32
  %.pre38 = load ptr, ptr %1, align 8, !tbaa !88
  %.pre39 = load ptr, ptr %i.af, align 8, !tbaa !87 ; 2 uses
  %.pre40 = load ptr, ptr %0, align 8, !tbaa !88
  %.pre41 = load ptr, ptr %i.a, align 8, !tbaa !87
  %.pre42 = ptrtoint ptr %.pre39 to i64
  %.pre43 = ptrtoint ptr %.pre40 to i64
  %.pre45 = sub i64 %.pre42, %.pre43
  br label %_ZSt4copyIPN4LIEF2PE10SignerInfoES3_ET0_T_S5_S4_.exit

_ZSt4copyIPN4LIEF2PE10SignerInfoES3_ET0_T_S5_S4_.exit: ; preds = %_ZSt4copyIPN4LIEF2PE10SignerInfoES3_ET0_T_S5_S4_.exit.loopexit, %bb.h
  %.pre-phi46 = phi i64 [ %.pre45, %_ZSt4copyIPN4LIEF2PE10SignerInfoES3_ET0_T_S5_S4_.exit.loopexit ], [ %i.ai, %bb.h ]
  %i.be = phi ptr [ %.pre41, %_ZSt4copyIPN4LIEF2PE10SignerInfoES3_ET0_T_S5_S4_.exit.loopexit ], [ %i.b, %bb.h ] ; 2 uses
  %i.bf = phi ptr [ %.pre39, %_ZSt4copyIPN4LIEF2PE10SignerInfoES3_ET0_T_S5_S4_.exit.loopexit ], [ %i.ag, %bb.h ]
  %i.bg = phi ptr [ %.pre38, %_ZSt4copyIPN4LIEF2PE10SignerInfoES3_ET0_T_S5_S4_.exit.loopexit ], [ %i.c, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.pre-phi46 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.bh, %i.be
  br i1 %.not9.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4LIEF2PE10SignerInfoESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN4LIEF2PE10SignerInfoES3_ET0_T_S5_S4_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i ], [ %i.bf, %_ZSt4copyIPN4LIEF2PE10SignerInfoES3_ET0_T_S5_S4_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i ], [ %i.bh, %_ZSt4copyIPN4LIEF2PE10SignerInfoES3_ET0_T_S5_S4_.exit ] ; 2 uses
  call void @_ZN4LIEF2PE10SignerInfoC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(184) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(184) %.0810.i.i.i.i) #24
  %i.bi = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 184 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 184
  %.not.i.i.i.i = icmp eq ptr %i.bi, %i.be
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4LIEF2PE10SignerInfoESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !312

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4LIEF2PE10SignerInfoESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %.lr.ph.i.i28, %.lr.ph.i.i.i.i, %_ZSt4copyIPN4LIEF2PE10SignerInfoES3_ET0_T_S5_S4_.exit, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4LIEF2PE10SignerInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, %_ZNSt12_Vector_baseIN4LIEF2PE10SignerInfoESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.bk = load ptr, ptr %0, align 8, !tbaa !88
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.f
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !87
  br label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN4LIEF2PE10SignerInfoESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.c = load ptr, ptr %1, align 8, !tbaa !92     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !93
  %i.i = load ptr, ptr %0, align 8, !tbaa !92     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.n = icmp slt i64 %i.f, 0
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i, !prof !83

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 1
  br i1 %i.p, label %bb.e, label %bb.f, !prof !95

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  %i.q = load i8, ptr %i.c, align 1, !tbaa !96
end_hunk_0
