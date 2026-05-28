inline.NumInlined: 3958
inline.NumDeleted: 1464
begin_hunk_0_@_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE17_M_realloc_insertIJN9__gnu_cxx17__normal_iteratorIPS3_S5_EESC_EEEvNSA_IPS5_S7_EEDpOT_
define linkonce_odr hidden void @_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE17_M_realloc_insertIJN9__gnu_cxx17__normal_iteratorIPS3_S5_EESC_EEEvNSA_IPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
  unreachable

_ZNKSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 7 uses
  %.sroa.01.0.copyload.i = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %3, align 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %i.r = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.s = ptrtoint ptr %.sroa.01.0.copyload.i to i64
  %i.t = sub i64 %i.r, %i.s                       ; 7 uses
  %i.u = icmp ugt i64 %i.t, 9223372036854775800
  br i1 %i.u, label %bb.c, label %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #24
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %bb.c
  unreachable

_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %_ZNKSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i, %.sroa.01.0.copyload.i
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIPN6Assimp3IFC11TempOpeningESaIS3_EE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr null, i64 %i.t ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.v, ptr %i.w, align 8
  br label %bb.i

_ZNSt12_Vector_baseIPN6Assimp3IFC11TempOpeningESaIS3_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #25
          to label %.noexc5.i unwind label %bb.g  ; 4 uses

.noexc5.i:                                        ; preds = %_ZNSt12_Vector_baseIPN6Assimp3IFC11TempOpeningESaIS3_EE11_M_allocateEm.exit.i.i
  store ptr %i.x, ptr %i.q, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.t ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = icmp samesign ugt i64 %i.t, 8
  br i1 %i.aa, label %bb.d, label %bb.e, !prof !298

bb.d:                                             ; preds = %.noexc5.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %.sroa.01.0.copyload.i, i64 %i.t, i1 false)
  br label %bb.i

bb.e:                                             ; preds = %.noexc5.i
  %i.ab = icmp eq i64 %i.t, 8
  br i1 %i.ab, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %.sroa.01.0.copyload.i, align 8
  store ptr %i.ac, ptr %i.x, align 8
  br label %bb.i

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIPN6Assimp3IFC11TempOpeningESaIS3_EE11_M_allocateEm.exit.i.i, %bb.c
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = load ptr, ptr %i.q, align 8             ; 3 uses
  %.not.i.i6.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i6.i, label %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #26
  br label %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit

bb.i:                                             ; preds = %bb.f, %bb.e, %bb.d, %.thread.i.i
  %i.ak = phi ptr [ %i.y, %bb.d ], [ %i.y, %bb.e ], [ %i.y, %bb.f ], [ %i.v, %.thread.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.ak, ptr %i.al, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %i.p, %bb.i ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %i.c, %bb.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %i.am = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !alias.scope !536, !noalias !533
  store <2 x ptr> %i.am, ptr %.012.i.i.i, align 8, !alias.scope !533, !noalias !536
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !536, !noalias !533
  store ptr %i.ap, ptr %i.an, align 8, !alias.scope !533, !noalias !536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !536, !noalias !533
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !538

_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %bb.i
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.i ], [ %i.ar, %.lr.ph.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i30 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i30, label %_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %.lr.ph.i.i.i31
  %.012.i.i.i32 = phi ptr [ %i.ay, %.lr.ph.i.i.i31 ], [ %i.as, %_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 3 uses
  %.0911.i.i.i33 = phi ptr [ %i.ax, %.lr.ph.i.i.i31 ], [ %1, %_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  %i.at = load <2 x ptr>, ptr %.0911.i.i.i33, align 8, !alias.scope !542, !noalias !539
  store <2 x ptr> %i.at, ptr %.012.i.i.i32, align 8, !alias.scope !539, !noalias !542
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !542, !noalias !539
  store ptr %i.aw, ptr %i.au, align 8, !alias.scope !539, !noalias !542
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i33, i8 0, i64 24, i1 false), !alias.scope !542, !noalias !539
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i33, i64 24 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i32, i64 24 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.ax, %i.b
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i31, !llvm.loop !538

_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %.lr.ph.i.i.i31, %_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.as, %_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ay, %.lr.ph.i.i.i31 ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bc) #26
  br label %_ZNSt12_Vector_baseISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt6vectorIPN6Assimp3IFC11TempOpeningESaIS4_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.j
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i35, ptr %i.a, align 8
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bd, ptr %i.az, align 8
  ret void

bb.k:                                             ; preds = %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit: ; preds = %bb.h, %bb.g
  %i.bf = extractvalue { ptr, i32 } %i.ad, 0
  %i.bg = tail call ptr @__cxa_begin_catch(ptr %i.bf) #27 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #26
  invoke void @__cxa_rethrow() #24
          to label %bb.n unwind label %bb.k

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.be

bb.m:                                             ; preds = %bb.k
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #28
  unreachable

bb.n:                                             ; preds = %_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EED2Ev.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE17_M_realloc_insertIJRS_I10aiVector2tIdESaIS7_EERSt4pairIS7_S7_ERbEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load ptr, ptr %0, align 8                ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNSt12_Vector_baseIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE11_M_allocateEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
  unreachable

_ZNSt12_Vector_baseIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE11_M_allocateEm.exit: ; preds = %bb.a
  %5 = sdiv exact i64 %i.f, 104                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %5, i64 1)
  %6 = add nsw i64 %.sroa.speculated.i, %5        ; 2 uses
  %7 = icmp ult i64 %6, %5
  %8 = tail call i64 @llvm.umin.i64(i64 %6, i64 88686269585142075)
  %9 = select i1 %7, i64 88686269585142075, i64 %8 ; 3 uses
  %10 = ptrtoint ptr %1 to i64
  %11 = sub i64 %10, %i.e
  %.not.i = icmp ne i64 %9, 0
  tail call void @llvm.assume(i1 %.not.i)
  %12 = mul nuw nsw i64 %9, 104                   ; 2 uses
  %13 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %12) #25 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %13, i64 %11 ; 15 uses
  %i.i = load i8, ptr %4, align 1, !range !143, !noundef !144
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = load ptr, ptr %2, align 8                ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(97) %i.h, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.i.i.i, label %.noexc30.thread, label %bb.c

.noexc30.thread:                                  ; preds = %_ZNSt12_Vector_baseIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE11_M_allocateEm.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr null, i64 %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store ptr %i.q, ptr %i.r, align 8
  br label %.loopexit

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE11_M_allocateEm.exit
  %i.s = icmp ugt i64 %i.o, 9223372036854775792
  br i1 %i.s, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i, !prof !233

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25
          to label %.noexc30 unwind label %bb.h   ; 4 uses

.noexc30:                                         ; preds = %_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.t, ptr %i.h, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.o
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.v, ptr %i.w, align 8
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc30, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %i.t, %.noexc30 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %i.l, %.noexc30 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, %i.k
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !256

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc30.thread
  %i.z = phi ptr [ %i.p, %.noexc30.thread ], [ %i.u, %.lr.ph.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %.noexc30.thread ], [ %i.y, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr null, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i32 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store ptr null, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store i32 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  store ptr null, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  store i8 %i.i, ptr %i.ag, align 8
  %i.ah = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN6Assimp3IFC22ProjectedWindowContourEPS2_ET0_T_S7_S6_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %13)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3IFC22ProjectedWindowContourES3_SaIS2_EET0_T_S6_S5_RT1_.exit unwind label %bb.g

_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3IFC22ProjectedWindowContourES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.loopexit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 104 ; 2 uses
  %i.aj = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN6Assimp3IFC22ProjectedWindowContourEPS2_ET0_T_S7_S6_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.ai)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3IFC22ProjectedWindowContourES3_SaIS2_EET0_T_S6_S5_RT1_.exit33 unwind label %bb.h

_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3IFC22ProjectedWindowContourES3_SaIS2_EET0_T_S6_S5_RT1_.exit33: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3IFC22ProjectedWindowContourES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3IFC22ProjectedWindowContourES3_SaIS2_EET0_T_S6_S5_RT1_.exit33, %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ba, %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3IFC22ProjectedWindowContourES3_SaIS2_EET0_T_S6_S5_RT1_.exit33 ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not.i.i.i.i.i.i34 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i34, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 88
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = sub nsw i64 0, %i.ar
  %i.at = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.as
  tail call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aq) #26
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i:     ; preds = %bb.d, %.lr.ph.i.i
  %i.au = load ptr, ptr %.05.i.i, align 8         ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #26
  br label %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i

_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i: ; preds = %bb.e, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 104 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourEEvT_S4_.exit, label %.lr.ph.i.i, !llvm.loop !262

_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourEEvT_S4_.exit: ; preds = %_ZSt8_DestroyIN6Assimp3IFC22ProjectedWindowContourEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3IFC22ProjectedWindowContourES3_SaIS2_EET0_T_S6_S5_RT1_.exit33
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourEEvT_S4_.exit
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.be) #26
  br label %_ZNSt12_Vector_baseIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourEEvT_S4_.exit, %bb.f
  store ptr %13, ptr %0, align 8
  store ptr %i.aj, ptr %i.a, align 8
  %i.bf = getelementptr inbounds nuw [104 x i8], ptr %13, i64 %9
  store ptr %i.bf, ptr %i.bb, align 8
  ret void

bb.g:                                             ; preds = %.loopexit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %i.bh = tail call ptr @__cxa_begin_catch(ptr %i.bg) #27 ; 0 uses
  tail call void @_ZN6Assimp3IFC22ProjectedWindowContourD2Ev(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.h) #27
  br label %bb.j

bb.h:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3IFC22ProjectedWindowContourES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %.0.ph = phi ptr [ %13, %.noexc.i.i.i ], [ %13, %_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.ai, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3IFC22ProjectedWindowContourES3_SaIS2_EET0_T_S6_S5_RT1_.exit ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %i.bj = tail call ptr @__cxa_begin_catch(ptr %i.bi) #27 ; 0 uses
  invoke void @_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourEEvT_S4_(ptr noundef nonnull %13, ptr noundef nonnull %.0.ph)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %bb.g, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %13, i64 noundef %12) #26
  invoke void @__cxa_rethrow() #24
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bk

bb.l:                                             ; preds = %bb.i
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  tail call void @__clang_call_terminate(ptr %i.bm) #28
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyIPKN6Assimp3IFC22ProjectedWindowContourEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not21 = icmp eq ptr %0, %1
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.023 = phi ptr [ %i.af, %bb.e ], [ %2, %bb.a ] ; 11 uses
  %.01222 = phi ptr [ %i.ae, %bb.e ], [ %0, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.01222, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %.01222, align 8           ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(97) %.023, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i.i, label %.noexc13, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.g, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !233

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #25
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i.i, %.lr.ph
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.h, %_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.i, ptr %.023, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.023, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.023, i64 16
  store ptr %i.k, ptr %i.l, align 8
  %i.m = load ptr, ptr %.01222, align 8           ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EEC2ERKS3_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc13, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i ], [ %i.i, %.noexc13 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i ], [ %i.m, %.noexc13 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i.i, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EEC2ERKS3_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !256

_ZNSt6vectorI10aiVector2tIdESaIS1_EEC2ERKS3_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc13
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.i, %.noexc13 ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.023, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %.01222, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.023, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %.01222, i64 56
  invoke void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %i.t)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EEC2ERKS3_.exit.i.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.v = load ptr, ptr %.023, align 8             ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.023, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #26
  br label %.body

bb.e:                                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EEC2ERKS3_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.023, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %.01222, i64 96
  %i.ad = load i8, ptr %i.ac, align 8, !range !143, !noundef !144
  store i8 %i.ad, ptr %i.ab, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.01222, i64 104 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.023, i64 104 ; 2 uses
  %.not = icmp eq ptr %i.ae, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !544

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorI10aiVector2tIdEE8allocateEmPKv.exit.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.c, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.c ], [ %i.u, %bb.d ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ag = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ah = tail call ptr @__cxa_begin_catch(ptr %i.ag) #27 ; 0 uses
  invoke void @_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourEEvT_S4_(ptr noundef %2, ptr noundef nonnull %.023)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #24
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.af, %bb.e ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %.body
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.ai

bb.i:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #28
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr null, ptr %i.d, align 8
  %i.e = load ptr, ptr %1, align 8                ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = sub i64 %i.j, %i.k                       ; 5 uses
  %i.m = shl nsw i64 %i.l, 3
  %i.n = zext i32 %i.i to i64                     ; 2 uses
  %i.o = add nsw i64 %i.m, %i.n                   ; 5 uses
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit, label %.noexc

.noexc:                                           ; preds = %bb.a
  %i.p = add i64 %i.o, 63                         ; 2 uses
  %i.q = lshr i64 %i.p, 3
  %i.r = and i64 %i.q, 2305843009213693944
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #25 ; 4 uses
  %i.t = lshr i64 %i.p, 6
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  store ptr %i.u, ptr %i.d, align 8
  store ptr %i.s, ptr %0, align 8
  store i32 0, ptr %i.a, align 8
  %i.v = sdiv i64 %i.o, 64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.v
  %i.x = and i64 %i.o, -9223372036854775745
  %i.y = icmp ugt i64 %i.x, -9223372036854775808
  %storemerge.idx.i.i.i.i = select i1 %i.y, i64 -8, i64 0
  %storemerge.i.i.i.i = getelementptr inbounds i8, ptr %i.w, i64 %storemerge.idx.i.i.i.i
  %i.z = trunc i64 %i.o to i32
  %i.aa = and i32 %i.z, 63
  store ptr %storemerge.i.i.i.i, ptr %i.b, align 8
end_hunk_0
