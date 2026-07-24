inline.NumInlined: 7661
inline.NumDeleted: 2990
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZSt8_DestroyIPN6duckdb14DependencyInfoEEvT_S3_:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17InternalExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.1492", align 8  ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34, !noalias !1275
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !1275
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !224, !noalias !1275 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !227, !noalias !1275 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #35
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !228

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !224, !noalias !1275
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #35
  br label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34, !noalias !1275
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34, !noalias !1275
  invoke void @_ZN6duckdb17InternalExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !63     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !63     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %common.resume
}

declare void @_ZN6duckdb17InternalExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1055 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !545    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1060
  %i.i = load ptr, ptr %0, align 8, !tbaa !545    ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_M_allocateEm.exit.i, !prof !148

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #36
  unreachable

_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #38 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -8
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.s, i1 false)
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit: ; preds = %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #35
  br label %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !545
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.t, ptr %i.g, align 8, !tbaa !1060
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1055
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.x, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp sgt i64 %i.f, 8
  br i1 %i.y, label %bb.h, label %bb.i, !prof !354

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.i:                                             ; preds = %bb.g
  %i.z = icmp eq i64 %i.f, 8
  br i1 %i.z, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %i.c, align 8
  store i64 %i.aa, ptr %i.i, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.k:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.x, 8
  br i1 %i.ab, label %bb.l, label %bb.m, !prof !354

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.x, i1 false)
  br label %_ZSt4copyIPSt17reference_wrapperIN6duckdb12CatalogEntryEES4_ET0_T_S6_S5_.exit

bb.m:                                             ; preds = %bb.k
  %i.ac = icmp eq i64 %i.x, 8
  br i1 %i.ac, label %bb.n, label %_ZSt4copyIPSt17reference_wrapperIN6duckdb12CatalogEntryEES4_ET0_T_S6_S5_.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = load i64, ptr %i.c, align 8
  store i64 %i.ad, ptr %i.i, align 8
  br label %_ZSt4copyIPSt17reference_wrapperIN6duckdb12CatalogEntryEES4_ET0_T_S6_S5_.exit

_ZSt4copyIPSt17reference_wrapperIN6duckdb12CatalogEntryEES4_ET0_T_S6_S5_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ae = load ptr, ptr %1, align 8, !tbaa !545   ; 3 uses
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !1055 ; 4 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !545
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 4 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !1055 ; 3 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIPSt17reference_wrapperIN6duckdb12CatalogEntryEES4_ET0_T_S6_S5_.exit
  %i.am = ptrtoaddr ptr %i.ae to i64
  %2 = ptrtoint ptr %i.al to i64
  %3 = ptrtoint ptr %i.ae to i64
  %i.an = add i64 %i.ai, %2
  %i.ao = add i64 %3, %i.ah
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = add i64 %i.ap, -8                       ; 2 uses
  %i.ar = lshr i64 %i.aq, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 72
  %i.at = sub i64 %i.am, %i.ai
  %diff.check = icmp ugt i64 %i.at, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader35, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.au = shl i64 %n.vec, 3                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.af, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.ak, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.ax ; 2 uses
  %next.gep32 = getelementptr i8, ptr %i.ak, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep32, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep32, align 8
  %wide.load33 = load <2 x i64>, ptr %i.ay, align 8
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load33, ptr %i.az, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !1278

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i.preheader35

.lr.ph.i.i.i.i.preheader35:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader35, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader35 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader35 ] ; 2 uses
  %i.bb = load i64, ptr %.0810.i.i.i.i, align 8
  store i64 %i.bb, ptr %.011.i.i.i.i, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bc, %i.al
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1279

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt4copyIPSt17reference_wrapperIN6duckdb12CatalogEntryEES4_ET0_T_S6_S5_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE13_M_deallocateEPS3_m.exit
  %i.be = load ptr, ptr %0, align 8, !tbaa !545
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.f
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !1055
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, %bb.a
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #25

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #25

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_13ClientContextELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !139
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.111, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !63     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #34
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEEC2IPKS8_EET_SP_mRKSF_RKSD_RKS9_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !145
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 1, ptr %i.b, align 8, !tbaa !146
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !71
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = invoke noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 noundef %3)
          to label %bb.b unwind label %bb.g       ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.b, align 8, !tbaa !146
  %i.h = icmp ugt i64 %i.f, %i.g
  br i1 %i.h, label %bb.c, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEEC2EmRKSF_RKSD_RKS9_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.f, 1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !148

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !479
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i

bb.e:                                             ; preds = %bb.c
  %i.j = icmp ugt i64 %i.f, 1152921504606846975
  br i1 %i.j, label %bb.f, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_allocate_bucketsEm.exit.i.i, !prof !148

bb.f:                                             ; preds = %bb.e
  %i.k = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.k, label %.noexc.i.i.i, label %.noexc7.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #36
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %.noexc.i.i.i
  unreachable

.noexc7.i.i.i:                                    ; preds = %bb.f
  invoke void @_ZSt17__throw_bad_allocv() #36
          to label %.noexc9.i unwind label %bb.g
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS3_S3_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS5_10_Hash_nodeIS3_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !480
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !511
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !517
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #34 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !480
  invoke void @__cxa_rethrow() #36
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #37
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !511
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %2, ptr %i.t, align 8, !tbaa !417
  %i.u = load ptr, ptr %0, align 8, !tbaa !509    ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !415  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !73
  store ptr %i.x, ptr %3, align 8, !tbaa !73
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !415
  store ptr %3, ptr %i.y, align 8, !tbaa !73
  br label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS5_10_Hash_nodeIS3_Lb1EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !515
  store ptr %i.aa, ptr %3, align 8, !tbaa !73
  store ptr %3, ptr %i.z, align 8, !tbaa !515
  %i.ab = load ptr, ptr %3, align 8, !tbaa !73    ; 2 uses
  %.not11.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !511
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !417
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !415
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !415
  br label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS5_10_Hash_nodeIS3_Lb1EEE.exit

_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS5_10_Hash_nodeIS3_Lb1EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !517
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !517
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !148

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !1468
  br label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt17reference_wrapperIN6duckdb7CatalogEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !148

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #36
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #36
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt17reference_wrapperIN6duckdb7CatalogEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #38 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt17reference_wrapperIN6duckdb7CatalogEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt17reference_wrapperIN6duckdb7CatalogEELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !515  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !515
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !73  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !417
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !415  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !515
  store ptr %i.o, ptr %.031, align 8, !tbaa !73
  store ptr %.031, ptr %i.g, align 8, !tbaa !515
  store ptr %i.g, ptr %i.m, align 8, !tbaa !415
  %i.p = load ptr, ptr %.031, align 8, !tbaa !73
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !415
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !73
  store ptr %i.r, ptr %.031, align 8, !tbaa !73
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !415
  store ptr %.031, ptr %i.s, align 8, !tbaa !73
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1469

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !509    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  tail call void @_ZdlPv(ptr noundef %i.t) #35
  br label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableISt17reference_wrapperIN6duckdb7CatalogEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.w, align 8, !tbaa !511
  store ptr %.0.i, ptr %0, align 8, !tbaa !509
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %.not94 = icmp eq ptr %2, %3
  br i1 %.not94, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 5 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 7 uses
  %i.d = sub i64 %i.b, %i.c                       ; 8 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1456
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1455 ; 16 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 7 uses
  %i.l = sub i64 %i.j, %i.k
  %.not = icmp ult i64 %i.l, %i.d
  br i1 %.not, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.k, %i.m                       ; 6 uses
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = icmp ugt i64 %i.o, %i.e
  br i1 %i.p, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.d
  %i.q = getelementptr inbounds i8, ptr %i.i, i64 %.idx ; 4 uses
  %i.r = sub i64 %i.b, %i.c
  %i.s = add i64 %i.r, -8                         ; 2 uses
  %i.t = lshr i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check143 = icmp ult i64 %i.s, 72
  %4 = sub i64 %i.c, %i.b
  %diff.check141 = icmp ugt i64 %4, -32
  %or.cond = or i1 %min.iters.check143, %diff.check141
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph144

vector.ph144:                                     ; preds = %bb.d
  %n.vec146 = and i64 %i.u, 4611686018427387900   ; 3 uses
  %i.v = shl i64 %n.vec146, 3                     ; 2 uses
  %i.w = getelementptr i8, ptr %i.i, i64 %i.v
  %i.x = getelementptr i8, ptr %i.q, i64 %i.v
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph144
  %index148 = phi i64 [ 0, %vector.ph144 ], [ %index.next153, %vector.body147 ] ; 2 uses
  %i.y = shl i64 %index148, 3                     ; 2 uses
  %next.gep149 = getelementptr i8, ptr %i.i, i64 %i.y ; 2 uses
  %next.gep150 = getelementptr i8, ptr %i.q, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep150, i64 16
  %wide.load151 = load <2 x i64>, ptr %next.gep150, align 8
  %wide.load152 = load <2 x i64>, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %next.gep149, i64 16
  store <2 x i64> %wide.load151, ptr %next.gep149, align 8
  store <2 x i64> %wide.load152, ptr %i.aa, align 8
  %index.next153 = add nuw i64 %index148, 4       ; 2 uses
  %i.ab = icmp eq i64 %index.next153, %n.vec146
  br i1 %i.ab, label %middle.block154, label %vector.body147, !llvm.loop !1470

middle.block154:                                  ; preds = %vector.body147
  %cmp.n155 = icmp eq i64 %i.u, %n.vec146
  br i1 %cmp.n155, label %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %middle.block154
  %.013.i.i.i.i.i.ph = phi ptr [ %i.i, %bb.d ], [ %i.w, %middle.block154 ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.q, %bb.d ], [ %i.x, %middle.block154 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ac = load i64, ptr %.sroa.08.012.i.i.i.i.i, align 8
  store i64 %i.ac, ptr %.013.i.i.i.i.i, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1471

_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block154
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !1455
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.d
  store ptr %i.ag, ptr %i.h, align 8, !tbaa !1455
  %i.ah = ptrtoint ptr %i.q to i64
  %i.ai = sub i64 %i.ah, %i.m                     ; 3 uses
  %i.aj = ashr exact i64 %i.ai, 3                 ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, 1
  br i1 %i.ak, label %bb.e, label %bb.f, !prof !354

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.al = sub nsw i64 0, %i.aj
  %i.am = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.al
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.am, ptr align 8 %1, i64 %i.ai, i1 false)
  br label %_ZSt13move_backwardIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_ET0_T_S6_S5_.exit

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.an = icmp eq i64 %i.ai, 8
  br i1 %i.an, label %bb.g, label %_ZSt13move_backwardIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_ET0_T_S6_S5_.exit

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.ap = load i64, ptr %1, align 8
  store i64 %i.ap, ptr %i.ao, align 8
  br label %_ZSt13move_backwardIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_ET0_T_S6_S5_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.aq = icmp sgt i64 %i.d, 8
  br i1 %i.aq, label %bb.h, label %bb.i, !prof !354

bb.h:                                             ; preds = %_ZSt13move_backwardIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_ET0_T_S6_S5_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.d, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.i:                                             ; preds = %_ZSt13move_backwardIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_ET0_T_S6_S5_.exit
  %i.ar = icmp eq i64 %i.d, 8
  br i1 %i.ar, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.j:                                             ; preds = %bb.i
  %i.as = load i64, ptr %2, align 8
  store i64 %i.as, ptr %1, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.at = getelementptr inbounds i8, ptr %2, i64 %i.n ; 4 uses
  %.not7.i.i.i.i = icmp eq ptr %i.at, %3
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.au = add i64 %i.b, %i.m
  %i.av = add i64 %i.k, %i.c
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = add i64 %i.aw, -8                       ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ax, 72
  %i.ba = sub i64 %i.c, %i.m
  %diff.check = icmp ugt i64 %i.ba, -32
  %or.cond214 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond214, label %.lr.ph.i.i.i.i.preheader223, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.az, 4611686018427387900     ; 3 uses
  %i.bb = shl i64 %n.vec, 3                       ; 2 uses
  %i.bc = getelementptr i8, ptr %i.i, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.at, i64 %i.bb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.be ; 2 uses
  %next.gep119 = getelementptr i8, ptr %i.at, i64 %i.be ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep119, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep119, align 8
  %wide.load120 = load <2 x i64>, ptr %i.bf, align 8
  %i.bg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load120, ptr %i.bg, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !1472

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i.preheader223

.lr.ph.i.i.i.i.preheader223:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.bc, %middle.block ]
  %.sroa.04.08.i.i.i.i.ph = phi ptr [ %i.at, %.lr.ph.i.i.i.i.preheader ], [ %i.bd, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader223, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader223 ] ; 2 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader223 ] ; 2 uses
  %i.bi = load i64, ptr %.sroa.04.08.i.i.i.i, align 8
  store i64 %i.bi, ptr %.09.i.i.i.i, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bj, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !1473

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !1455
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bl = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit.loopexit ], [ %i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.bm = ptrtoaddr ptr %i.bl to i64
  %i.bn = sub nuw nsw i64 %i.e, %i.o
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bn ; 6 uses
  store ptr %i.bo, ptr %i.h, align 8, !tbaa !1455
  %.not11.i.i.i.i.i51 = icmp eq ptr %1, %i.i
  br i1 %.not11.i.i.i.i.i51, label %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit57, label %.lr.ph.i.i.i.i.i52.preheader

.lr.ph.i.i.i.i.i52.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit
  %i.bp = sub i64 %i.k, %i.m
  %i.bq = add i64 %i.bp, -8                       ; 2 uses
  %i.br = lshr i64 %i.bq, 3
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check125 = icmp ult i64 %i.bq, 136
  br i1 %min.iters.check125, label %.lr.ph.i.i.i.i.i52.preheader222, label %vector.memcheck122

vector.memcheck122:                               ; preds = %.lr.ph.i.i.i.i.i52.preheader
  %i.bt = add i64 %i.d, %i.bm
  %i.bu = sub i64 %i.k, %i.bt
  %diff.check123 = icmp ugt i64 %i.bu, -32
  br i1 %diff.check123, label %.lr.ph.i.i.i.i.i52.preheader222, label %vector.ph126

vector.ph126:                                     ; preds = %vector.memcheck122
  %n.vec128 = and i64 %i.bs, 4611686018427387900  ; 3 uses
  %i.bv = shl i64 %n.vec128, 3                    ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bo, i64 %i.bv
  %i.bx = getelementptr i8, ptr %1, i64 %i.bv
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph126
  %index130 = phi i64 [ 0, %vector.ph126 ], [ %index.next135, %vector.body129 ] ; 2 uses
  %i.by = shl i64 %index130, 3                    ; 2 uses
  %next.gep131 = getelementptr i8, ptr %i.bo, i64 %i.by ; 2 uses
  %next.gep132 = getelementptr i8, ptr %1, i64 %i.by ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep132, i64 16
  %wide.load133 = load <2 x i64>, ptr %next.gep132, align 8
  %wide.load134 = load <2 x i64>, ptr %i.bz, align 8
  %i.ca = getelementptr i8, ptr %next.gep131, i64 16
  store <2 x i64> %wide.load133, ptr %next.gep131, align 8
  store <2 x i64> %wide.load134, ptr %i.ca, align 8
  %index.next135 = add nuw i64 %index130, 4       ; 2 uses
  %i.cb = icmp eq i64 %index.next135, %n.vec128
  br i1 %i.cb, label %middle.block136, label %vector.body129, !llvm.loop !1474

middle.block136:                                  ; preds = %vector.body129
  %cmp.n137 = icmp eq i64 %i.bs, %n.vec128
  br i1 %cmp.n137, label %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit57.loopexit, label %.lr.ph.i.i.i.i.i52.preheader222

.lr.ph.i.i.i.i.i52.preheader222:                  ; preds = %vector.memcheck122, %.lr.ph.i.i.i.i.i52.preheader, %middle.block136
  %.013.i.i.i.i.i53.ph = phi ptr [ %i.bo, %vector.memcheck122 ], [ %i.bo, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.bw, %middle.block136 ]
  %.sroa.08.012.i.i.i.i.i54.ph = phi ptr [ %1, %vector.memcheck122 ], [ %1, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.bx, %middle.block136 ]
  br label %.lr.ph.i.i.i.i.i52

.lr.ph.i.i.i.i.i52:                               ; preds = %.lr.ph.i.i.i.i.i52.preheader222, %.lr.ph.i.i.i.i.i52
  %.013.i.i.i.i.i53 = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i52 ], [ %.013.i.i.i.i.i53.ph, %.lr.ph.i.i.i.i.i52.preheader222 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i54 = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i52 ], [ %.sroa.08.012.i.i.i.i.i54.ph, %.lr.ph.i.i.i.i.i52.preheader222 ] ; 2 uses
  %i.cc = load i64, ptr %.sroa.08.012.i.i.i.i.i54, align 8
  store i64 %i.cc, ptr %.013.i.i.i.i.i53, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i54, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i53, i64 8
  %.not.i.i.i.i.i55 = icmp eq ptr %i.cd, %i.i
  br i1 %.not.i.i.i.i.i55, label %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit57.loopexit, label %.lr.ph.i.i.i.i.i52, !llvm.loop !1475

_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit57.loopexit: ; preds = %.lr.ph.i.i.i.i.i52, %middle.block136
  %.pre99 = load ptr, ptr %i.h, align 8, !tbaa !1455
  br label %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit57

_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit57: ; preds = %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit57.loopexit, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit
  %i.cf = phi ptr [ %.pre99, %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit57.loopexit ], [ %i.bo, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.n
  store ptr %i.cg, ptr %i.h, align 8, !tbaa !1455
  %i.ch = icmp sgt i64 %i.n, 8
  br i1 %i.ch, label %bb.k, label %bb.l, !prof !354

bb.k:                                             ; preds = %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit57
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.n, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.l:                                             ; preds = %_ZSt22__uninitialized_move_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit57
  %i.ci = icmp eq i64 %i.n, 8
  br i1 %i.ci, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.m:                                             ; preds = %bb.l
  %i.cj = load i64, ptr %2, align 8
  store i64 %i.cj, ptr %1, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.n:                                             ; preds = %bb.b
  %i.ck = load ptr, ptr %0, align 8, !tbaa !409   ; 7 uses
  %i.cl = ptrtoint ptr %i.ck to i64               ; 3 uses
  %i.cm = sub i64 %i.k, %i.cl
  %i.cn = ashr exact i64 %i.cm, 3                 ; 4 uses
  %i.co = sub nsw i64 1152921504606846975, %i.cn
  %i.cp = icmp ult i64 %i.co, %i.e
  br i1 %i.cp, label %bb.o, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #36
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cn, i64 %i.e)
  %i.cq = add nsw i64 %.sroa.speculated.i, %i.cn  ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.cn
  %i.cs = tail call i64 @llvm.umin.i64(i64 %i.cq, i64 1152921504606846975)
  %i.ct = select i1 %i.cr, i64 1152921504606846975, i64 %i.cs ; 3 uses
  %.not.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.cu = shl nuw nsw i64 %i.ct, 3
  %i.cv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #38
  br label %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit, %bb.p
  %i.cw = phi ptr [ %i.cv, %bb.p ], [ null, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %.not11.i.i.i.i.i59 = icmp eq ptr %i.ck, %1
  br i1 %.not11.i.i.i.i.i59, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i60.preheader

.lr.ph.i.i.i.i.i60.preheader:                     ; preds = %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_M_allocateEm.exit
  %i.cx = ptrtoaddr ptr %i.cw to i64
  %5 = ptrtoint ptr %1 to i64
  %i.cy = sub i64 %5, %i.cl
  %i.cz = add i64 %i.cy, -8                       ; 2 uses
  %i.da = lshr i64 %i.cz, 3
  %i.db = add nuw nsw i64 %i.da, 1                ; 2 uses
  %min.iters.check161 = icmp ult i64 %i.cz, 72
  %i.dc = sub i64 %i.cl, %i.cx
  %diff.check159 = icmp ugt i64 %i.dc, -32
  %or.cond215 = or i1 %min.iters.check161, %diff.check159
  br i1 %or.cond215, label %.lr.ph.i.i.i.i.i60.preheader220, label %vector.ph162

vector.ph162:                                     ; preds = %.lr.ph.i.i.i.i.i60.preheader
  %n.vec164 = and i64 %i.db, 4611686018427387900  ; 3 uses
  %i.dd = shl i64 %n.vec164, 3                    ; 2 uses
  %i.de = getelementptr i8, ptr %i.cw, i64 %i.dd  ; 2 uses
  %i.df = getelementptr i8, ptr %i.ck, i64 %i.dd
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph162
  %index166 = phi i64 [ 0, %vector.ph162 ], [ %index.next171, %vector.body165 ] ; 2 uses
  %i.dg = shl i64 %index166, 3                    ; 2 uses
  %next.gep167 = getelementptr i8, ptr %i.cw, i64 %i.dg ; 2 uses
  %next.gep168 = getelementptr i8, ptr %i.ck, i64 %i.dg ; 2 uses
  %i.dh = getelementptr i8, ptr %next.gep168, i64 16
  %wide.load169 = load <2 x i64>, ptr %next.gep168, align 8
  %wide.load170 = load <2 x i64>, ptr %i.dh, align 8
  %i.di = getelementptr i8, ptr %next.gep167, i64 16
  store <2 x i64> %wide.load169, ptr %next.gep167, align 8
  store <2 x i64> %wide.load170, ptr %i.di, align 8
  %index.next171 = add nuw i64 %index166, 4       ; 2 uses
  %i.dj = icmp eq i64 %index.next171, %n.vec164
  br i1 %i.dj, label %middle.block172, label %vector.body165, !llvm.loop !1476

middle.block172:                                  ; preds = %vector.body165
  %cmp.n173 = icmp eq i64 %i.db, %n.vec164
  br i1 %cmp.n173, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i60.preheader220

.lr.ph.i.i.i.i.i60.preheader220:                  ; preds = %.lr.ph.i.i.i.i.i60.preheader, %middle.block172
  %.013.i.i.i.i.i61.ph = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i60.preheader ], [ %i.de, %middle.block172 ]
  %.sroa.08.012.i.i.i.i.i62.ph = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i60.preheader ], [ %i.df, %middle.block172 ]
  br label %.lr.ph.i.i.i.i.i60

.lr.ph.i.i.i.i.i60:                               ; preds = %.lr.ph.i.i.i.i.i60.preheader220, %.lr.ph.i.i.i.i.i60
  %.013.i.i.i.i.i61 = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i60 ], [ %.013.i.i.i.i.i61.ph, %.lr.ph.i.i.i.i.i60.preheader220 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i62 = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i60 ], [ %.sroa.08.012.i.i.i.i.i62.ph, %.lr.ph.i.i.i.i.i60.preheader220 ] ; 2 uses
  %i.dk = load i64, ptr %.sroa.08.012.i.i.i.i.i62, align 8
  store i64 %i.dk, ptr %.013.i.i.i.i.i61, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i62, i64 8 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i61, i64 8 ; 2 uses
  %.not.i.i.i.i.i63 = icmp eq ptr %i.dl, %1
  br i1 %.not.i.i.i.i.i63, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i60, !llvm.loop !1477

_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i60, %middle.block172, %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i64 = phi ptr [ %i.cw, %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE11_M_allocateEm.exit ], [ %i.de, %middle.block172 ], [ %i.dm, %.lr.ph.i.i.i.i.i60 ] ; 4 uses
  %i.dn = sub i64 %i.b, %i.c
  %i.do = add i64 %i.dn, -8                       ; 2 uses
  %i.dp = lshr i64 %i.do, 3
  %i.dq = add nuw nsw i64 %i.dp, 1                ; 2 uses
  %min.iters.check180 = icmp ult i64 %i.do, 72
  %.0.lcssa.i.i.i.i.i64177 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i64 to i64
  %i.dr = sub i64 %i.c, %.0.lcssa.i.i.i.i.i64177
  %diff.check178 = icmp ugt i64 %i.dr, -32
  %or.cond216 = select i1 %min.iters.check180, i1 true, i1 %diff.check178
  br i1 %or.cond216, label %.lr.ph.i.i.i.i66.preheader, label %vector.ph181

vector.ph181:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %n.vec183 = and i64 %i.dq, 4611686018427387900  ; 3 uses
  %i.ds = shl i64 %n.vec183, 3                    ; 2 uses
  %i.dt = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i64, i64 %i.ds ; 2 uses
  %i.du = getelementptr i8, ptr %2, i64 %i.ds
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph181
  %index185 = phi i64 [ 0, %vector.ph181 ], [ %index.next190, %vector.body184 ] ; 2 uses
  %i.dv = shl i64 %index185, 3                    ; 2 uses
  %next.gep186 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i64, i64 %i.dv ; 2 uses
  %next.gep187 = getelementptr i8, ptr %2, i64 %i.dv ; 2 uses
  %i.dw = getelementptr i8, ptr %next.gep187, i64 16
  %wide.load188 = load <2 x i64>, ptr %next.gep187, align 8
  %wide.load189 = load <2 x i64>, ptr %i.dw, align 8
  %i.dx = getelementptr i8, ptr %next.gep186, i64 16
  store <2 x i64> %wide.load188, ptr %next.gep186, align 8
  store <2 x i64> %wide.load189, ptr %i.dx, align 8
  %index.next190 = add nuw i64 %index185, 4       ; 2 uses
  %i.dy = icmp eq i64 %index.next190, %n.vec183
  br i1 %i.dy, label %middle.block191, label %vector.body184, !llvm.loop !1478

middle.block191:                                  ; preds = %vector.body184
  %cmp.n192 = icmp eq i64 %i.dq, %n.vec183
  br i1 %cmp.n192, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit71, label %.lr.ph.i.i.i.i66.preheader

.lr.ph.i.i.i.i66.preheader:                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %middle.block191
  %.09.i.i.i.i67.ph = phi ptr [ %.0.lcssa.i.i.i.i.i64, %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ], [ %i.dt, %middle.block191 ]
  %.sroa.04.08.i.i.i.i68.ph = phi ptr [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ], [ %i.du, %middle.block191 ]
  br label %.lr.ph.i.i.i.i66

.lr.ph.i.i.i.i66:                                 ; preds = %.lr.ph.i.i.i.i66.preheader, %.lr.ph.i.i.i.i66
  %.09.i.i.i.i67 = phi ptr [ %i.eb, %.lr.ph.i.i.i.i66 ], [ %.09.i.i.i.i67.ph, %.lr.ph.i.i.i.i66.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i68 = phi ptr [ %i.ea, %.lr.ph.i.i.i.i66 ], [ %.sroa.04.08.i.i.i.i68.ph, %.lr.ph.i.i.i.i66.preheader ] ; 2 uses
  %i.dz = load i64, ptr %.sroa.04.08.i.i.i.i68, align 8
  store i64 %i.dz, ptr %.09.i.i.i.i67, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i68, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i67, i64 8 ; 2 uses
  %.not.i.i.i.i69 = icmp eq ptr %i.ea, %3
  br i1 %.not.i.i.i.i69, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit71, label %.lr.ph.i.i.i.i66, !llvm.loop !1479

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit71: ; preds = %.lr.ph.i.i.i.i66, %middle.block191
  %.lcssa117 = phi ptr [ %i.dt, %middle.block191 ], [ %i.eb, %.lr.ph.i.i.i.i66 ] ; 5 uses
  %.not11.i.i.i.i.i72 = icmp eq ptr %1, %i.i
  br i1 %.not11.i.i.i.i.i72, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit78, label %.lr.ph.i.i.i.i.i73.preheader

.lr.ph.i.i.i.i.i73.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit71
  %.lcssa117196 = ptrtoaddr ptr %.lcssa117 to i64
  %6 = ptrtoint ptr %1 to i64
  %i.ec = sub i64 %i.k, %6
  %i.ed = add i64 %i.ec, -8                       ; 2 uses
  %i.ee = lshr i64 %i.ed, 3
  %i.ef = add nuw nsw i64 %i.ee, 1                ; 2 uses
  %min.iters.check199 = icmp ult i64 %i.ed, 72
  %i.eg = sub i64 %i.a, %.lcssa117196
  %diff.check197 = icmp ugt i64 %i.eg, -32
  %or.cond217 = select i1 %min.iters.check199, i1 true, i1 %diff.check197
  br i1 %or.cond217, label %.lr.ph.i.i.i.i.i73.preheader218, label %vector.ph200

vector.ph200:                                     ; preds = %.lr.ph.i.i.i.i.i73.preheader
  %n.vec202 = and i64 %i.ef, 4611686018427387900  ; 3 uses
  %i.eh = shl i64 %n.vec202, 3                    ; 2 uses
  %i.ei = getelementptr i8, ptr %.lcssa117, i64 %i.eh ; 2 uses
  %i.ej = getelementptr i8, ptr %1, i64 %i.eh
  br label %vector.body203

vector.body203:                                   ; preds = %vector.body203, %vector.ph200
  %index204 = phi i64 [ 0, %vector.ph200 ], [ %index.next209, %vector.body203 ] ; 2 uses
  %i.ek = shl i64 %index204, 3                    ; 2 uses
  %next.gep205 = getelementptr i8, ptr %.lcssa117, i64 %i.ek ; 2 uses
  %next.gep206 = getelementptr i8, ptr %1, i64 %i.ek ; 2 uses
  %i.el = getelementptr i8, ptr %next.gep206, i64 16
  %wide.load207 = load <2 x i64>, ptr %next.gep206, align 8
  %wide.load208 = load <2 x i64>, ptr %i.el, align 8
  %i.em = getelementptr i8, ptr %next.gep205, i64 16
  store <2 x i64> %wide.load207, ptr %next.gep205, align 8
  store <2 x i64> %wide.load208, ptr %i.em, align 8
  %index.next209 = add nuw i64 %index204, 4       ; 2 uses
  %i.en = icmp eq i64 %index.next209, %n.vec202
  br i1 %i.en, label %middle.block210, label %vector.body203, !llvm.loop !1480

middle.block210:                                  ; preds = %vector.body203
  %cmp.n211 = icmp eq i64 %i.ef, %n.vec202
  br i1 %cmp.n211, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit78, label %.lr.ph.i.i.i.i.i73.preheader218

.lr.ph.i.i.i.i.i73.preheader218:                  ; preds = %.lr.ph.i.i.i.i.i73.preheader, %middle.block210
  %.013.i.i.i.i.i74.ph = phi ptr [ %.lcssa117, %.lr.ph.i.i.i.i.i73.preheader ], [ %i.ei, %middle.block210 ]
  %.sroa.08.012.i.i.i.i.i75.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i73.preheader ], [ %i.ej, %middle.block210 ]
  br label %.lr.ph.i.i.i.i.i73

.lr.ph.i.i.i.i.i73:                               ; preds = %.lr.ph.i.i.i.i.i73.preheader218, %.lr.ph.i.i.i.i.i73
  %.013.i.i.i.i.i74 = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i73 ], [ %.013.i.i.i.i.i74.ph, %.lr.ph.i.i.i.i.i73.preheader218 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i75 = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i73 ], [ %.sroa.08.012.i.i.i.i.i75.ph, %.lr.ph.i.i.i.i.i73.preheader218 ] ; 2 uses
  %i.eo = load i64, ptr %.sroa.08.012.i.i.i.i.i75, align 8
  store i64 %i.eo, ptr %.013.i.i.i.i.i74, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i75, i64 8 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i74, i64 8 ; 2 uses
  %.not.i.i.i.i.i76 = icmp eq ptr %i.ep, %i.i
  br i1 %.not.i.i.i.i.i76, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit78, label %.lr.ph.i.i.i.i.i73, !llvm.loop !1481

_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit78: ; preds = %.lr.ph.i.i.i.i.i73, %middle.block210, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit71
  %.0.lcssa.i.i.i.i.i77 = phi ptr [ %.lcssa117, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit71 ], [ %i.ei, %middle.block210 ], [ %i.eq, %.lr.ph.i.i.i.i.i73 ]
  %.not.i79 = icmp eq ptr %i.ck, null
  br i1 %.not.i79, label %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit78
  tail call void @_ZdlPv(ptr noundef nonnull %i.ck) #35
  br label %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEES4_SaIS3_EET0_T_S7_S6_RT1_.exit78, %bb.q
  store ptr %i.cw, ptr %0, align 8, !tbaa !409
  store ptr %.0.lcssa.i.i.i.i.i77, ptr %i.h, align 8, !tbaa !1455
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.ct
  store ptr %i.er, ptr %i.f, align 8, !tbaa !1456
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_SI_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #27 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_SI_SI_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph41

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEET_SI_SI_T0_.exit"
  %i.h = icmp eq i64 %i.t, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph41, !llvm.loop !1482

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi i64 [ %i.d, %.lr.ph ], [ %i.da, %bb.b ] ; 2 uses
  %storemerge22.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.035.1.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.l, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.010.i.i.i
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %i.k, align 8
  tail call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_T0_SJ_T1_T2_"(ptr %0, i64 noundef %.010.i.i.i, i64 noundef %.lcssa, ptr %.sroa.03.0.copyload.i.i.i)
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.l = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i9.i, label %bb.c, !llvm.loop !1483

.lr.ph.i9.i:                                      ; preds = %bb.c, %.lr.ph.i9.i
  %.sroa.0.03.i.i = phi ptr [ %i.m, %.lr.ph.i9.i ], [ %storemerge22.lcssa, %bb.c ]
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i = load ptr, ptr %i.m, align 8
  %i.n = load i64, ptr %0, align 8
  store i64 %i.n, ptr %i.m, align 8
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.o, %i.a                       ; 2 uses
  %i.q = ashr exact i64 %i.p, 3
  tail call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_T0_SJ_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.q, ptr %.sroa.03.0.copyload.i.i10.i)
  %i.r = icmp sgt i64 %i.p, 8
  br i1 %i.r, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_SI_SI_T0_.exit", !llvm.loop !1484

.lr.ph41:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2240 = phi ptr [ %.sroa.035.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02339 = phi i64 [ %i.t, %bb.b ], [ %2, %.lr.ph ]
  %i.s = phi i64 [ %i.da, %bb.b ], [ %i.d, %.lr.ph ]
  %i.t = add nsw i64 %.02339, -1                  ; 3 uses
  %i.u = lshr i64 %i.s, 1
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.u ; 7 uses
  %i.w = getelementptr inbounds i8, ptr %storemerge2240, i64 -8 ; 8 uses
  %i.x = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclINS_17__normal_iteratorIPSt17reference_wrapperINS2_18SchemaCatalogEntryEESt6vectorISC_SaISC_EEEESH_EEbT_T0_"(ptr nonnull %i.f, ptr %i.v)
  br i1 %i.x, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.lr.ph41
  %i.y = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclINS_17__normal_iteratorIPSt17reference_wrapperINS2_18SchemaCatalogEntryEESt6vectorISC_SaISC_EEEESH_EEbT_T0_"(ptr %i.v, ptr nonnull %i.w)
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %0, align 8
  %i.z = load i64, ptr %i.v, align 8
  store i64 %i.z, ptr %0, align 8
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.v, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader"

bb.f:                                             ; preds = %bb.d
  %i.aa = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclINS_17__normal_iteratorIPSt17reference_wrapperINS2_18SchemaCatalogEntryEESt6vectorISC_SaISC_EEEESH_EEbT_T0_"(ptr nonnull %i.f, ptr nonnull %i.w)
  %.sroa.0.0.copyload.i.i26.i.i = load ptr, ptr %0, align 8 ; 2 uses
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = load i64, ptr %i.w, align 8
  store i64 %i.ab, ptr %0, align 8
  store ptr %.sroa.0.0.copyload.i.i26.i.i, ptr %i.w, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader"

bb.h:                                             ; preds = %bb.f
  %i.ac = load i64, ptr %i.f, align 8
  store i64 %i.ac, ptr %0, align 8
  store ptr %.sroa.0.0.copyload.i.i26.i.i, ptr %i.f, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader"

bb.i:                                             ; preds = %.lr.ph41
  %i.ad = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclINS_17__normal_iteratorIPSt17reference_wrapperINS2_18SchemaCatalogEntryEESt6vectorISC_SaISC_EEEESH_EEbT_T0_"(ptr nonnull %i.f, ptr nonnull %i.w)
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload.i.i28.i.i = load ptr, ptr %0, align 8
  %i.ae = load i64, ptr %i.f, align 8
  store i64 %i.ae, ptr %0, align 8
  store ptr %.sroa.0.0.copyload.i.i28.i.i, ptr %i.f, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader"

bb.k:                                             ; preds = %bb.i
  %i.af = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdb7Catalog13GetAllSchemasERNS2_13ClientContextEE3$_0EclINS_17__normal_iteratorIPSt17reference_wrapperINS2_18SchemaCatalogEntryEESt6vectorISC_SaISC_EEEESH_EEbT_T0_"(ptr %i.v, ptr nonnull %i.w)
  %.sroa.0.0.copyload.i.i29.i.i = load ptr, ptr %0, align 8 ; 2 uses
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = load i64, ptr %i.w, align 8
  store i64 %i.ag, ptr %0, align 8
  store ptr %.sroa.0.0.copyload.i.i29.i.i, ptr %i.w, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader"

bb.m:                                             ; preds = %bb.k
  %i.ah = load i64, ptr %i.v, align 8
  store i64 %i.ah, ptr %0, align 8
  store ptr %.sroa.0.0.copyload.i.i29.i.i, ptr %i.v, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader": ; preds = %bb.m, %bb.l, %bb.j, %bb.h, %bb.g, %bb.e
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_SI_SI_SI_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_SI_SI_SI_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader", %bb.s
  %.sroa.035.0.i.i = phi ptr [ %i.cx, %bb.s ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.s ], [ %storemerge2240, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Catalog13GetAllSchemasERNS3_13ClientContextEE3$_0EEEvT_SI_SI_SI_T0_.exit.i.preheader" ]
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %0, align 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 240
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !341, !nonnull !82, !align !83
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !79, !nonnull !82, !align !83 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !64 ; 9 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 40 ; 2 uses
end_hunk_1
