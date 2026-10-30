Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/clientenvironment?download=true
inline.NumInlined: 1021
inline.NumDeleted: 614
begin_hunk_0_@_ZNSt5dequeI14ClientEnvEventSaIS0_EE16_M_push_back_auxIJRKS0_EEEvDpOT_:bb.a
  %i.ag = load ptr, ptr %0, align 8, !tbaa !91
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeI14ClientEnvEventSaIS0_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeI14ClientEnvEventSaIS0_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeI14ClientEnvEventSaIS0_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeI14ClientEnvEventSaIS0_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #33
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !93
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !94
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !152
  %i.aq = load i64, ptr %1, align 4
  store i64 %i.aq, ptr %i.ap, align 4
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !93
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  store ptr %i.as, ptr %i.c, align 8, !tbaa !212
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !94 ; 3 uses
  store ptr %i.at, ptr %i.o, align 8, !tbaa !213
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 512
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.au, ptr %i.av, align 8, !tbaa !214
  store ptr %i.at, ptr %i.a, align 8, !tbaa !152
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeI14ClientEnvEventSaIS0_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92   ; 6 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !96   ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !91
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !164

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPP14ClientEnvEventS2_ET0_T_S4_S3_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPP14ClientEnvEventS2_ET0_T_S4_S3_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !94
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !94
  br label %_ZSt4copyIPP14ClientEnvEventS2_ET0_T_S4_S3_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !164

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPP14ClientEnvEventS2_ET0_T_S4_S3_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPP14ClientEnvEventS2_ET0_T_S4_S3_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !94
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !94
  br label %_ZSt4copyIPP14ClientEnvEventS2_ET0_T_S4_S3_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseI14ClientEnvEventSaIS0_EE15_M_allocate_mapEm.exit, !prof !235

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt11_Deque_baseI14ClientEnvEventSaIS0_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #33 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !92  ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !93
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp sgt i64 %i.bb, 8
  br i1 %i.bc, label %bb.m, label %bb.n, !prof !164

bb.m:                                             ; preds = %_ZNSt11_Deque_baseI14ClientEnvEventSaIS0_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.aw, i64 %i.bb, i1 false)
  br label %_ZSt4copyIPP14ClientEnvEventS2_ET0_T_S4_S3_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseI14ClientEnvEventSaIS0_EE15_M_allocate_mapEm.exit
  %i.bd = icmp eq i64 %i.bb, 8
  br i1 %i.bd, label %bb.o, label %_ZSt4copyIPP14ClientEnvEventS2_ET0_T_S4_S3_.exit24

bb.o:                                             ; preds = %bb.n
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !94
  store ptr %i.be, ptr %i.av, align 8, !tbaa !94
  br label %_ZSt4copyIPP14ClientEnvEventS2_ET0_T_S4_S3_.exit24

_ZSt4copyIPP14ClientEnvEventS2_ET0_T_S4_S3_.exit24: ; preds = %bb.m, %bb.n, %bb.o
  %i.bf = load ptr, ptr %0, align 8, !tbaa !91
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !96
  %i.bh = shl i64 %i.bg, 3
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bh) #30
  store ptr %i.aq, ptr %0, align 8, !tbaa !91
  store i64 %i.am, ptr %i.k, align 8, !tbaa !96
  br label %_ZSt4copyIPP14ClientEnvEventS2_ET0_T_S4_S3_.exit

_ZSt4copyIPP14ClientEnvEventS2_ET0_T_S4_S3_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPP14ClientEnvEventS2_ET0_T_S4_S3_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPP14ClientEnvEventS2_ET0_T_S4_S3_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !212
  %i.bi = load ptr, ptr %.0, align 8, !tbaa !94   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !213
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 512
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !214
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !212
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !94 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !213
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 512
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !214
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.asin.f64(double) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.atan2.f64(double, double) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI12PointedThingSaIS0_EE17_M_realloc_insertIJtRN4core8vector3dIfEES7_S7_fR16PointabilityTypeEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !221  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !548    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorI12PointedThingSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #29
  unreachable

_ZNKSt6vectorI12PointedThingSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871)
  %i.l = select i1 %i.j, i64 144115188075855871, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 6
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #33 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 12 uses
  %i.r = load i16, ptr %2, align 2, !tbaa !147
  %.sroa.09.0.copyload.i = load <2 x float>, ptr %3, align 4, !tbaa !134
  %.sroa.210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.210.0.copyload.i = load float, ptr %.sroa.210.0..sroa_idx.i, align 4, !tbaa !134
  %.sroa.07.0.copyload.i = load <2 x float>, ptr %4, align 4, !tbaa !134
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.28.0.copyload.i = load float, ptr %.sroa.28.0..sroa_idx.i, align 4, !tbaa !134
  %.sroa.05.0.copyload.i = load <2 x float>, ptr %5, align 4, !tbaa !134
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.26.0.copyload.i = load float, ptr %.sroa.26.0..sroa_idx.i, align 4, !tbaa !134
  %i.s = load float, ptr %6, align 4, !tbaa !134
  %i.t = load i8, ptr %7, align 1, !tbaa !218
  store i8 2, ptr %i.q, align 4, !tbaa !225
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 %i.t, ptr %i.u, align 1, !tbaa !226
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.v, i8 0, i64 18, i1 false)
  store i16 %i.r, ptr %i.w, align 4, !tbaa !227
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 22
  store i16 0, ptr %i.x, align 2, !tbaa !228
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store <2 x float> %.sroa.09.0.copyload.i, ptr %i.y, align 4, !tbaa !134
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store float %.sroa.210.0.copyload.i, ptr %.sroa.212.0..sroa_idx.i, align 4, !tbaa !134
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  store <2 x float> %.sroa.07.0.copyload.i, ptr %i.z, align 4, !tbaa !134
  %.sroa.28.0..sroa_idx.i31 = getelementptr inbounds nuw i8, ptr %i.q, i64 44
  store float %.sroa.28.0.copyload.i, ptr %.sroa.28.0..sroa_idx.i31, align 4, !tbaa !134
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store <2 x float> %.sroa.05.0.copyload.i, ptr %i.aa, align 4, !tbaa !134
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store float %.sroa.26.0.copyload.i, ptr %.sroa.24.0..sroa_idx.i, align 4, !tbaa !134
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 60
  store float %i.s, ptr %i.ab, align 4, !tbaa !229
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorI12PointedThingSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorI12PointedThingSaIS0_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorI12PointedThingSaIS0_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorI12PointedThingSaIS0_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(64) %.0911.i.i.i, i64 64, i1 false), !tbaa.struct !550, !alias.scope !551
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorI12PointedThingSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !544

_ZNSt6vectorI12PointedThingSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorI12PointedThingSaIS0_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorI12PointedThingSaIS0_EE12_M_check_lenEmPKc.exit ], [ %i.ad, %.lr.ph.i.i.i ] ; 2 uses
  %i.ae = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i32 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i32, label %_ZNSt6vectorI12PointedThingSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38, label %.lr.ph.i.i.i33

.lr.ph.i.i.i33:                                   ; preds = %_ZNSt6vectorI12PointedThingSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %8 = add i64 %i.d, -64
  %9 = sub i64 %8, %i.m
  %10 = and i64 %9, -64                           ; 2 uses
  %11 = add i64 %10, 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ae, ptr align 4 %1, i64 %11, i1 false), !alias.scope !552
  %i.af = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %10
  %scevgep = getelementptr i8, ptr %i.af, i64 128
  br label %_ZNSt6vectorI12PointedThingSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38

_ZNSt6vectorI12PointedThingSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38: ; preds = %.lr.ph.i.i.i33, %_ZNSt6vectorI12PointedThingSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i37 = phi ptr [ %i.ae, %_ZNSt6vectorI12PointedThingSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %scevgep, %.lr.ph.i.i.i33 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i39 = icmp eq ptr %i.c, null
  br i1 %.not.i39, label %_ZNSt12_Vector_baseI12PointedThingSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI12PointedThingSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !222
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aj) #30
  br label %_ZNSt12_Vector_baseI12PointedThingSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI12PointedThingSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorI12PointedThingSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit38, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !548
  store ptr %.0.lcssa.i.i.i37, ptr %i.a, align 8, !tbaa !221
  %i.ak = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ak, ptr %i.ag, align 8, !tbaa !222
  ret void
}

declare extern_weak void @_ZTH10infostream() #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #24

declare extern_weak void @_ZTH11errorstream() #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.usub.sat.i16(i16, i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind memory(none) }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #18 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nounwind }
attributes #29 = { noreturn }
attributes #30 = { builtin nounwind }
attributes #31 = { noreturn nounwind }
attributes #32 = { nounwind willreturn memory(read) }
attributes #33 = { builtin allocsize(0) }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{null, null, null}
!1 = distinct !{!1, !95}
!2 = distinct !{!2, !95}
!3 = distinct !{ptr @_ZNSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS0_EED2Ev, null}
!4 = distinct !{null}
!5 = distinct !{!5, !95}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"vtable pointer", !10, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"any pointer", !11, i64 0}
!18 = !{!"p1 _ZTS9ClientMap", !17, i64 0}
!19 = !{!"_ZTS7irr_ptrI9ClientMapE", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"_ZTS17IReferenceCounted", !12, i64 8}
!22 = !{!21, !12, i64 8}
!23 = !{!"float", !11, i64 0}
!24 = !{!"_ZTSSt6atomicIfE", !23, i64 0}
!25 = !{!"bool", !11, i64 0}
!26 = !{!"_ZTSSt13__atomic_baseIjE", !12, i64 0}
!27 = !{!"_ZTSSt6atomicIjE", !26, i64 0}
!28 = !{!"p1 _ZTS8IGameDef", !17, i64 0}
!29 = !{!"_ZTSSt12__mutex_base", !11, i64 0}
!30 = !{!"_ZTSSt5mutex", !29, i64 0}
!31 = !{!"_ZTS11Environment", !12, i64 8, !24, i64 12, !12, i64 16, !23, i64 20, !23, i64 24, !25, i64 28, !12, i64 32, !27, i64 36, !28, i64 40, !30, i64 48}
!32 = !{!"p1 _ZTS11LocalPlayer", !17, i64 0}
!33 = !{!"p1 _ZTS14ITextureSource", !17, i64 0}
!34 = !{!"p1 _ZTS6Client", !17, i64 0}
!35 = !{!"p1 _ZTS15ClientScripting", !17, i64 0}
!36 = !{!"_ZTSSt4lessItE"}
!37 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessItEE", !36, i64 0}
!38 = !{!"_ZTSSt14_Rb_tree_color", !11, i64 0}
!39 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !17, i64 0}
!40 = !{!"_ZTSSt18_Rb_tree_node_base", !38, i64 0, !39, i64 8, !39, i64 16, !39, i64 24}
!41 = !{!"long", !11, i64 0}
!42 = !{!"_ZTSSt15_Rb_tree_header", !40, i64 0, !41, i64 32}
!43 = !{!"_ZTSNSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE13_Rb_tree_implISB_Lb1EEE", !37, i64 0, !42, i64 8}
!44 = !{!"_ZTSSt8_Rb_treeItSt4pairIKtSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS3_EEESt10_Select1stIS7_ESt4lessItESaIS7_EE", !43, i64 0}
!45 = !{!"_ZTSSt3mapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EESt4lessItESaISt4pairIKtS4_EEE", !44, i64 0}
!46 = !{!"_ZTS13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE", !45, i64 0, !45, i64 48, !12, i64 96, !41, i64 104}
!47 = !{!"_ZTS15ActiveObjectMgrI18ClientActiveObjectE", !46, i64 8}
!48 = !{!"_ZTSN6client15ActiveObjectMgrE", !47, i64 0}
!49 = !{!"any p2 pointer", !17, i64 0}
!50 = !{!"p2 _ZTS18ClientSimpleObject", !49, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseIP18ClientSimpleObjectSaIS1_EE17_Vector_impl_dataE", !50, i64 0, !50, i64 8, !50, i64 16}
!52 = !{!"_ZTSNSt12_Vector_baseIP18ClientSimpleObjectSaIS1_EE12_Vector_implE", !51, i64 0}
!53 = !{!"_ZTSSt12_Vector_baseIP18ClientSimpleObjectSaIS1_EE", !52, i64 0}
!54 = !{!"_ZTSSt6vectorIP18ClientSimpleObjectSaIS1_EE", !53, i64 0}
!55 = !{!"p2 _ZTS14ClientEnvEvent", !49, i64 0}
!56 = !{!"p1 _ZTS14ClientEnvEvent", !17, i64 0}
!57 = !{!"_ZTSSt15_Deque_iteratorI14ClientEnvEventRS0_PS0_E", !56, i64 0, !56, i64 8, !56, i64 16, !55, i64 24}
!58 = !{!"_ZTSNSt11_Deque_baseI14ClientEnvEventSaIS0_EE16_Deque_impl_dataE", !55, i64 0, !41, i64 8, !57, i64 16, !57, i64 48}
!59 = !{!"_ZTSNSt11_Deque_baseI14ClientEnvEventSaIS0_EE11_Deque_implE", !58, i64 0}
!60 = !{!"_ZTSSt11_Deque_baseI14ClientEnvEventSaIS0_EE", !59, i64 0}
!61 = !{!"_ZTSSt5dequeI14ClientEnvEventSaIS0_EE", !60, i64 0}
!62 = !{!"_ZTSSt5queueI14ClientEnvEventSt5dequeIS0_SaIS0_EEE", !61, i64 0}
!63 = !{!"_ZTS15IntervalLimiter", !23, i64 0}
!64 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!65 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !64, i64 0}
!66 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !65, i64 0, !42, i64 8}
!67 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE", !66, i64 0}
!68 = !{!"_ZTSSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE", !67, i64 0}
!69 = !{!"short", !11, i64 0}
!70 = !{!"_ZTSN4core8vector3dIsEE", !69, i64 0, !69, i64 2, !69, i64 4}
!71 = !{!"_ZTS17ClientEnvironment", !31, i64 0, !19, i64 88, !32, i64 96, !33, i64 104, !34, i64 112, !35, i64 120, !48, i64 128, !54, i64 248, !62, i64 272, !63, i64 352, !68, i64 360, !70, i64 408, !41, i64 416, !41, i64 424, !41, i64 432}
!72 = !{!71, !32, i64 96}
!73 = !{!71, !33, i64 104}
!74 = !{!71, !34, i64 112}
!75 = !{!71, !35, i64 120}
!76 = !{!42, !38, i64 0}
!77 = !{!42, !39, i64 8}
!78 = !{!42, !39, i64 16}
!79 = !{!42, !39, i64 24}
!80 = !{!42, !41, i64 32}
!81 = !{!46, !12, i64 96}
!82 = !{!46, !41, i64 104}
!83 = !{!"p1 _ZTS18ClientActiveObject", !17, i64 0}
!84 = !{!83, !83, i64 0}
!85 = !{!63, !23, i64 0}
!86 = !{!51, !50, i64 0}
!87 = !{!51, !50, i64 16}
!88 = !{!50, !50, i64 0}
!89 = !{!"p1 _ZTS18ClientSimpleObject", !17, i64 0}
!90 = !{!89, !89, i64 0}
!91 = !{!58, !55, i64 0}
!92 = !{!58, !55, i64 40}
!93 = !{!58, !55, i64 72}
!94 = !{!56, !56, i64 0}
!95 = !{!"llvm.loop.mustprogress"}
!96 = !{!58, !41, i64 8}
!97 = !{!"p1 _ZTS13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE", !17, i64 0}
!98 = !{!"_ZTSN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE15IterationHelperE", !97, i64 0}
!99 = !{!98, !97, i64 0}
!100 = !{!"p1 omnipotent char", !17, i64 0}
!101 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !100, i64 0}
!102 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !101, i64 0, !41, i64 8, !11, i64 16}
!103 = !{!102, !41, i64 8}
!104 = !{!11, !11, i64 0}
!105 = !{!102, !100, i64 0}
!106 = !{!"_ZTS10CameraMode", !11, i64 0}
!107 = !{!"_ZTSN4core8vector3dIfEE", !23, i64 0, !23, i64 4, !23, i64 8}
end_hunk_0
