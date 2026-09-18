Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCUtil?download=true
inline.NumInlined: 1656
inline.NumDeleted: 752
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN6Assimp3IFC8TempMesh17RemoveDegeneratesEv:bb.a
  %i.n = fmul double %i.m, %i.m
  %i.o = tail call double @llvm.fmuladd.f64(double %i.k, double %i.k, double %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.q = load double, ptr %i.p, align 8           ; 2 uses
  %i.r = tail call noundef double @llvm.fmuladd.f64(double %i.q, double %i.q, double %i.o)
  %i.s = fcmp olt double %i.r, f0x3DDB7CDFE0000000
  br i1 %i.s, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.u = ptrtoint ptr %.sroa.028.036 to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = getelementptr inbounds i8, ptr %i.t, i64 %i.w ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 4 uses
  %.not.i.i = icmp eq ptr %i.y, %i.h
  br i1 %.not.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = ptrtoint ptr %i.h to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, 4
  br i1 %i.ac, label %bb.f, label %bb.g, !prof !9

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.x, ptr nonnull align 4 %i.y, i64 %i.ab, i1 false)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ad = icmp eq i64 %i.ab, 4
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = load i32, ptr %i.y, align 4
  store i32 %i.ae, ptr %i.x, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  %i.af = load ptr, ptr %i.d, align 8
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -4
  store ptr %i.ag, ptr %i.d, align 8
  %i.ah = zext i32 %i.i to i64
  %.idx = mul nuw nsw i64 %i.ah, 24
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.032.037, i64 %.idx ; 2 uses
  %i.aj = load ptr, ptr %0, align 8               ; 3 uses
  %i.ak = ptrtoint ptr %.sroa.032.037 to i64
  %i.al = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds i8, ptr %i.aj, i64 %i.am ; 6 uses
  %i.ao = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.ap = sub i64 %i.ao, %i.al
  %i.aq = getelementptr inbounds i8, ptr %i.aj, i64 %i.ap ; 2 uses
  %.not.i.i17 = icmp eq i32 %i.i, 0
  br i1 %.not.i.i17, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not11.i.i = icmp eq ptr %i.ai, %i.ar
  br i1 %.not11.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.ao                    ; 3 uses
  %i.au = icmp sgt i64 %i.at, 24
  br i1 %i.au, label %bb.l, label %bb.m, !prof !9

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.an, ptr align 8 %i.aq, i64 %i.at, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.av = icmp eq i64 %i.at, 24
  br i1 %i.av, label %bb.n, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.j
  %i.aw = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.ao
  %i.az = getelementptr inbounds i8, ptr %i.an, i64 %i.ay ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aw, %i.az
  br i1 %.not.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit, label %_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i
  store ptr %i.az, ptr %i.g, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit

bb.o:                                             ; preds = %bb.c
  %i.ba = zext i32 %i.i to i64
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %.sroa.032.037, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.028.036, i64 4
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit: ; preds = %bb.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i, %_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.o
  %.sroa.028.1 = phi ptr [ %i.bc, %bb.o ], [ %i.x, %_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i.i ], [ %i.x, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i ], [ %i.x, %bb.i ] ; 2 uses
  %.sroa.032.1 = phi ptr [ %i.bb, %bb.o ], [ %i.an, %_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i.i ], [ %i.an, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i ], [ %i.an, %bb.i ]
  %.1 = phi i1 [ %.0838, %bb.o ], [ true, %_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i.i ], [ true, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i ], [ true, %bb.i ] ; 2 uses
  %i.bd = add i64 %.039, 1
  %i.be = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not = icmp eq ptr %.sroa.028.1, %i.be
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !63

bb.p:                                             ; preds = %._crit_edge
  %i.bf = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.p
  br i1 %i.bf, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA26_KcEEEvDpOT_.exit.thread, label %bb.q

bb.q:                                             ; preds = %.noexc
  %i.bg = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc18 unwind label %.thread

.noexc18:                                         ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bh = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc19 unwind label %.thread

.noexc19:                                         ; preds = %.noexc18
  store ptr %i.bh, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger12verboseDebugIJPKcRA26_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(26) @.str)
          to label %.noexc20 unwind label %.thread

.noexc20:                                         ; preds = %.noexc19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA26_KcEEEvDpOT_.exit.thread

.thread:                                          ; preds = %bb.p, %bb.q, %.noexc18, %.noexc19
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA26_KcEEEvDpOT_.exit: ; preds = %bb.b
  %.not.i.i.i21 = icmp eq ptr %.pre40, null
  br i1 %.not.i.i.i21, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA26_KcEEEvDpOT_.exit.thread

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA26_KcEEEvDpOT_.exit.thread: ; preds = %._crit_edge, %.noexc, %.noexc20, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA26_KcEEEvDpOT_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %.pre40 to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %.pre40, i64 noundef %i.bn) #27
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit:    ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA26_KcEEEvDpOT_.exit, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE15LogVerboseDebugIJRA26_KcEEEvDpOT_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void

bb.r:                                             ; preds = %bb.a
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit23, label %bb.s

bb.s:                                             ; preds = %.thread, %bb.r
  %.pn.pn.pn55 = phi { ptr, i32 } [ %i.bi, %.thread ], [ %i.bo, %bb.r ]
  %i.bp = phi ptr [ %.pre40, %.thread ], [ %.pre, %bb.r ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #27
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit23

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit23:  ; preds = %bb.r, %bb.s
  %.pn.pn.pn56 = phi { ptr, i32 } [ %i.bo, %bb.r ], [ %.pn.pn.pn55, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %.pn.pn.pn56
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp3IFC8TempMesh21ComputePolygonNormalsERSt6vectorI10aiVector3tIdESaIS4_EEbm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, i1 noundef zeroext %2, i64 noundef %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %i.b, i64 %3 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not95104 = icmp eq ptr %i.c, %i.e             ; 2 uses
  br i1 %.not95104, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.094106 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ 0, %bb.a ]
  %.sroa.080.0105 = phi ptr [ %i.h, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = load i32, ptr %.sroa.080.0105, align 4
  %i.g = zext i32 %i.f to i64
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %.094106, i64 %i.g) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.080.0105, i64 4 ; 2 uses
  %.not95 = icmp eq ptr %i.h, %i.e
  br i1 %.not95, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i, label %.lr.ph, !llvm.loop !64

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.lr.ph, %bb.a
  %.094.lcssa = phi i64 [ 0, %bb.a ], [ %.sroa.speculated, %.lr.ph ] ; 2 uses
  %i.i = shl nsw i64 %.094.lcssa, 5
  %i.j = add nsw i64 %i.i, 64                     ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #26 ; 18 uses
  store double 0.000000e+00, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 8        ; 2 uses
  %i.m = shl nuw nsw i64 %.094.lcssa, 5
  %.idx.i.i.i.i.i.i.i = add nuw nsw i64 %i.m, 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 12 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load ptr, ptr %1, align 8
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = sdiv exact i64 %i.s, 24
  %i.u = load ptr, ptr %i.d, align 8
  %i.v = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 2
  %i.aa = sub i64 %i.t, %3
  %i.ab = add i64 %i.aa, %i.z                     ; 4 uses
  %i.ac = icmp ugt i64 %i.ab, 384307168202282325
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #28
          to label %.noexc40 unwind label %bb.j

.noexc40:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.r
  %i.ah = sdiv exact i64 %i.ag, 24
  %i.ai = icmp ult i64 %i.ah, %i.ab
  br i1 %i.ai, label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.aj = mul nuw nsw i64 %i.ab, 24
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #26
          to label %.noexc41 unwind label %bb.j   ; 4 uses

.noexc41:                                         ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i
  %i.al = load ptr, ptr %1, align 8               ; 5 uses
  %i.am = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.al, %i.am
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc41, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %i.ak, %.noexc41 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %i.al, %.noexc41 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i64 24, i1 false), !alias.scope !80
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %.not.i.i.i.i39 = icmp eq ptr %i.an, %i.am
  br i1 %.not.i.i.i.i39, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !68

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc41
  %.not.i8.i = icmp eq ptr %i.al, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.ap = load ptr, ptr %i.ad, align 8
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.al to i64
  %i.as = sub i64 %i.aq, %i.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.as) #27
  br label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.ak, ptr %1, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.s
  store ptr %i.at, ptr %i.n, align 8
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.ab
  store ptr %i.au, ptr %i.ad, align 8
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.c
  %i.av = phi ptr [ %.pre, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.v, %bb.c ] ; 5 uses
  %.not5.i = icmp eq ptr %i.av, %i.c
  br i1 %.not5.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEiET0_T_S9_S8_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit
  %i.aw = ptrtoaddr ptr %i.b to i64
  %i.ax = shl nsw i64 %3, 2
  %i.ay = ptrtoaddr ptr %i.av to i64
  %i.az = add i64 %i.ax, %i.aw
  %i.ba = add i64 %i.az, -4
  %i.bb = sub i64 %i.ba, %i.ay                    ; 2 uses
  %i.bc = lshr i64 %i.bb, 2
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bb, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader166, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.bd, 9223372036854775800     ; 3 uses
  %i.be = shl i64 %n.vec, 2
  %i.bf = getelementptr i8, ptr %i.av, i64 %i.be
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bi, %vector.body ]
  %vec.phi160 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bj, %vector.body ]
  %i.bg = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.av, i64 %i.bg ; 2 uses
  %i.bh = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4
  %wide.load161 = load <4 x i32>, ptr %i.bh, align 4
  %i.bi = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bj = add <4 x i32> %wide.load161, %vec.phi160 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bj, %i.bi
  %i.bl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEiET0_T_S9_S8_.exit.loopexit, label %.lr.ph.i.preheader166

.lr.ph.i.preheader166:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.07.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.bl, %middle.block ]
  %.sroa.02.06.i.ph = phi ptr [ %i.av, %.lr.ph.i.preheader ], [ %i.bf, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader166, %.lr.ph.i
  %.07.i = phi i32 [ %i.bn, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader166 ]
  %.sroa.02.06.i = phi ptr [ %i.bo, %.lr.ph.i ], [ %.sroa.02.06.i.ph, %.lr.ph.i.preheader166 ] ; 2 uses
  %i.bm = load i32, ptr %.sroa.02.06.i, align 4
  %i.bn = add i32 %i.bm, %.07.i                   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bo, %i.c
  br i1 %.not.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEiET0_T_S9_S8_.exit.loopexit, label %.lr.ph.i, !llvm.loop !70

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEiET0_T_S9_S8_.exit.loopexit: ; preds = %.lr.ph.i, %middle.block
  %.lcssa159 = phi i32 [ %i.bl, %middle.block ], [ %i.bn, %.lr.ph.i ]
  %i.bp = sext i32 %.lcssa159 to i64
  br label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEiET0_T_S9_S8_.exit

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEiET0_T_S9_S8_.exit: ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEiET0_T_S9_S8_.exit.loopexit, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit
  %.0.lcssa.i = phi i64 [ 0, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit ], [ %i.bp, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEiET0_T_S9_S8_.exit.loopexit ]
  br i1 %.not95104, label %._crit_edge115, label %.lr.ph114

.lr.ph114:                                        ; preds = %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEiET0_T_S9_S8_.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.bu = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.bv = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.bw = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph114, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit
  %.034112 = phi i64 [ %.0.lcssa.i, %.lr.ph114 ], [ %i.gy, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit ] ; 2 uses
  %.sroa.080.1111 = phi ptr [ %i.c, %.lr.ph114 ], [ %i.gv, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit ] ; 4 uses
  %i.bx = load i32, ptr %.sroa.080.1111, align 4  ; 4 uses
  %.not = icmp eq i32 %i.bx, 0
  br i1 %.not, label %bb.f, label %.lr.ph109

.lr.ph109:                                        ; preds = %bb.e
  %i.by = load ptr, ptr %0, align 8
  %i.bz = getelementptr [24 x i8], ptr %i.by, i64 %.034112 ; 3 uses
  %i.ca = zext i32 %i.bx to i64                   ; 2 uses
  %xtraiter = and i64 %i.ca, 1
  %i.cb = icmp eq i32 %i.bx, 1
  br i1 %i.cb, label %.epil.preheader, label %.lr.ph109.new

.lr.ph109.new:                                    ; preds = %.lr.ph109
  %unroll_iter = and i64 %i.ca, 4294967294
  br label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.cc = load ptr, ptr %i.n, align 8             ; 5 uses
  %i.cd = load ptr, ptr %i.ad, align 8
  %.not.i42 = icmp eq ptr %i.cc, %i.cd
  br i1 %.not.i42, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i8 0, i64 24, i1 false)
  %i.ce = load ptr, ptr %i.n, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  store ptr %i.cf, ptr %i.n, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJEEERS1_DpOT_.exit

bb.h:                                             ; preds = %bb.f
  %i.cg = load ptr, ptr %1, align 8               ; 5 uses
  %i.ch = ptrtoint ptr %i.cc to i64
  %i.ci = ptrtoint ptr %i.cg to i64               ; 2 uses
  %i.cj = sub i64 %i.ch, %i.ci                    ; 3 uses
  %i.ck = icmp eq i64 %i.cj, 9223372036854775800
  br i1 %i.ck, label %.invoke, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.h, %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #28
end_hunk_0
