inline.NumInlined: 1836
inline.NumDeleted: 944
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN12t_pull_groupC2ERKS_:bb.a
  store float %i.aq, ptr %i.af, align 4, !tbaa !68
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.ar = getelementptr inbounds i8, ptr %i.af, i64 %i.an
  store ptr %i.ar, ptr %i.ag, align 8, !tbaa !64
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.au = load i64, ptr %i.at, align 8
  store i64 %i.au, ptr %i.as, align 8
  ret void

bb.l:                                             ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i6
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %0, align 8, !tbaa !22    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = sub i64 %i.ay, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.ba) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %i.av
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull ptr @_Z21pull_coordinate_unitsRK12t_pull_coord(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !69
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr @_ZL14sc_isAngleType, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !77, !range !78, !noundef !79
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = select i1 %i.f, ptr @.str.4, ptr @.str.5
  ret ptr %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_Z41pull_conversion_factor_userinput2internalRK12t_pull_coord(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !69
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr @_ZL14sc_isAngleType, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !77, !range !78, !noundef !79
  %i.f = trunc nuw i8 %i.e to i1
  %. = select i1 %i.f, double f0x3F91DF46A2529D39, double 1.000000e+00
  ret double %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_Z41pull_conversion_factor_internal2userinputRK12t_pull_coord(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !69
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr @_ZL14sc_isAngleType, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !77, !range !78, !noundef !79
  %i.f = trunc nuw i8 %i.e to i1
  %. = select i1 %i.f, double f0x404CA5DC1A63C1F8, double 1.000000e+00
  ret double %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef float @_Z18max_pull_distance2RK17pull_coord_work_tRK5t_pbc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(488) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(384) %1) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val = load i32, ptr %i.a, align 8, !tbaa !69
  %i.b = add i32 %.val, -1
  %switch.selectcmp.i = icmp ult i32 %i.b, 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !80   ; 5 uses
  %i.e = icmp sgt i32 %i.d, 0                     ; 2 uses
  br i1 %switch.selectcmp.i, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  br i1 %i.e, label %bb.f, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %i.e, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.i = load double, ptr %i.h, align 8, !tbaa !83
  %i.j = fcmp une double %i.i, 0.000000e+00
  br i1 %i.j, label %._crit_edge59, label %bb.c

._crit_edge59:                                    ; preds = %bb.b
  %i.k = load float, ptr %i.g, align 4, !tbaa !68 ; 2 uses
  %i.l = fmul float %i.k, %i.k
  %gep = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.m = load float, ptr %gep, align 4, !tbaa !68 ; 2 uses
  %i.n = fmul float %i.m, %i.m
  %i.o = fsub float %i.l, %i.n
  %gep.175 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load float, ptr %gep.175, align 4, !tbaa !68 ; 2 uses
  %i.q = fmul float %i.p, %i.p
  %i.r = fsub float %i.o, %i.q                    ; 2 uses
  %i.s = fcmp olt float %i.r, f0x7F7FFFFF
  %.sroa.speculated40 = select i1 %i.s, float %i.r, float f0x7F7FFFFF
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge59
  %.147 = phi float [ %.sroa.speculated40, %._crit_edge59 ], [ f0x7F7FFFFF, %bb.b ] ; 4 uses
  %.not86 = icmp eq i32 %i.d, 1
  br i1 %.not86, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.u = load double, ptr %i.t, align 8, !tbaa !83
  %i.v = fcmp une double %i.u, 0.000000e+00
  br i1 %i.v, label %._crit_edge59.1, label %bb.e

._crit_edge59.1:                                  ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load float, ptr %i.w, align 4, !tbaa !68 ; 2 uses
  %i.y = fmul float %i.x, %i.x
  %gep.1 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.z = load float, ptr %gep.1, align 4, !tbaa !68 ; 2 uses
  %i.aa = fmul float %i.z, %i.z
  %i.ab = fsub float %i.y, %i.aa                  ; 2 uses
  %i.ac = fcmp olt float %i.ab, %.147
  %.sroa.speculated40.1 = select i1 %i.ac, float %i.ab, float %.147
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge59.1, %bb.d
  %.147.1 = phi float [ %.sroa.speculated40.1, %._crit_edge59.1 ], [ %.147, %bb.d ] ; 3 uses
  %i.ad = icmp samesign ugt i32 %i.d, 2
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.af = load double, ptr %i.ae, align 8
  %i.ag = fcmp une double %i.af, 0.000000e+00
  %or.cond = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %or.cond, label %._crit_edge59.2, label %.loopexit

._crit_edge59.2:                                  ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !68 ; 2 uses
  %i.aj = fmul float %i.ai, %i.ai                 ; 2 uses
  %i.ak = fcmp olt float %i.aj, %.147.1
  %.sroa.speculated40.2 = select i1 %i.ak, float %i.aj, float %.147.1
  br label %.loopexit

bb.f:                                             ; preds = %.preheader48
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load i32, ptr %i.f, align 4, !tbaa !63
  %.not = icmp eq i32 %i.am, 0
  %i.an = load float, ptr %i.al, align 4          ; 2 uses
  %i.ao = fmul float %i.an, %i.an                 ; 2 uses
  %i.ap = fcmp uge float %i.ao, f0x7F7FFFFF
  %i.aq = select i1 %.not, i1 true, i1 %i.ap
  %.3 = select i1 %i.aq, float f0x7F7FFFFF, float %i.ao ; 4 uses
  %.not85 = icmp eq i32 %i.d, 1
  br i1 %.not85, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !63
  %.not.1 = icmp eq i32 %i.as, 0
  br i1 %.not.1, label %bb.h, label %.lr.ph.preheader.1

.lr.ph.preheader.1:                               ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.au = load i32, ptr %i.f, align 4, !tbaa !63
  %.not35.1 = icmp eq i32 %i.au, 0
  %i.av = load <2 x float>, ptr %i.at, align 4    ; 2 uses
  %i.aw = fmul <2 x float> %i.av, %i.av           ; 2 uses
  %i.ax = extractelement <2 x float> %i.aw, i64 0
  %i.ay = extractelement <2 x float> %i.aw, i64 1 ; 2 uses
  %i.az = fadd float %i.ay, %i.ax
  %.1.1 = select i1 %.not35.1, float %i.ay, float %i.az ; 2 uses
  %i.ba = fcmp olt float %.1.1, %.3
  %.sroa.speculated.1 = select i1 %i.ba, float %.1.1, float %.3
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.preheader.1, %bb.g
  %.3.1 = phi float [ %.3, %bb.g ], [ %.sroa.speculated.1, %.lr.ph.preheader.1 ] ; 3 uses
  %i.bb = icmp ult i32 %i.d, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.bd = load i32, ptr %i.bc, align 4
  %.not.2 = icmp eq i32 %i.bd, 0
  %or.cond90 = select i1 %i.bb, i1 true, i1 %.not.2
  br i1 %or.cond90, label %.loopexit, label %.lr.ph.preheader.2

.lr.ph.preheader.2:                               ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bf = load float, ptr %i.be, align 4, !tbaa !68 ; 2 uses
  %i.bg = fmul float %i.bf, %i.bf                 ; 2 uses
  %i.bh = load i32, ptr %i.f, align 4, !tbaa !63
  %.not35.2 = icmp eq i32 %i.bh, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !63
  %.not35.2.1 = icmp eq i32 %i.bk, 0
  %i.bl = load <2 x float>, ptr %i.bi, align 4    ; 2 uses
  %i.bm = fmul <2 x float> %i.bl, %i.bl           ; 2 uses
  %i.bn = extractelement <2 x float> %i.bm, i64 0
  %i.bo = fadd float %i.bg, %i.bn
  %.1.2 = select i1 %.not35.2, float %i.bg, float %i.bo ; 2 uses
  %i.bp = extractelement <2 x float> %i.bm, i64 1
  %i.bq = fadd float %.1.2, %i.bp
  %.1.2.1 = select i1 %.not35.2.1, float %.1.2, float %i.bq ; 2 uses
  %i.br = fcmp olt float %.1.2.1, %.3.1
  %.sroa.speculated.2 = select i1 %i.br, float %.1.2.1, float %.3.1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader48, %bb.f, %.preheader, %bb.c, %bb.h, %.lr.ph.preheader.2, %bb.e, %._crit_edge59.2
  %.4 = phi float [ f0x7F7FFFFF, %.preheader ], [ %.sroa.speculated40.2, %._crit_edge59.2 ], [ f0x7F7FFFFF, %.preheader48 ], [ %.147.1, %bb.e ], [ %.3, %bb.f ], [ %.sroa.speculated.2, %.lr.ph.preheader.2 ], [ %.3.1, %bb.h ], [ %.147, %bb.c ]
  %i.bs = fmul float %.4, 2.500000e-01
  ret float %i.bs
}

; Function Attrs: mustprogress uwtable
define noundef double @_Z20get_pull_coord_valueP6pull_tiRK5t_pbcd(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(384) %2, double noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !84
  %i.d = getelementptr inbounds nuw [488 x i8], ptr %i.c, i64 %i.b
  tail call fastcc void @_ZL23get_pull_coord_distanceRK6pull_tP17pull_coord_work_tRK5t_pbcd(ptr noundef nonnull align 8 dereferenceable(348) %0, ptr noundef %i.d, ptr noundef nonnull align 4 dereferenceable(384) %2, double noundef %3)
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !84
  %i.f = getelementptr inbounds nuw [488 x i8], ptr %i.e, i64 %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 376
  %i.h = load double, ptr %i.g, align 8, !tbaa !87
  ret double %i.h
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL23get_pull_coord_distanceRK6pull_tP17pull_coord_work_tRK5t_pbcd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(348) %0, ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(384) %2, double noundef %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x double], align 16            ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !105  ; 4 uses
  %.not = icmp eq i32 %i.c, 8
  br i1 %.not, label %_ZL17get_pull_coord_drRK6pull_tP17pull_coord_work_tRK5t_pbc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.e = load i32, ptr %i.d, align 4, !tbaa !106
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 6 uses
  switch i32 %i.c, label %bb.d [
    i32 3, label %.thread.thread.i
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %1, align 8, !tbaa !107
  %i.h = icmp eq i32 %i.g, 5
  br i1 %i.h, label %.thread.thread.i, label %.thread74.i

.thread74.i:                                      ; preds = %bb.c
  %i.i = tail call noundef float @_Z18max_pull_distance2RK17pull_coord_work_tRK5t_pbc(ptr noundef nonnull align 8 dereferenceable(488) %1, ptr noundef nonnull align 4 dereferenceable(384) %2)
  %i.j = fpext float %i.i to double
  br label %.thread.thread.i

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noundef float @_Z18max_pull_distance2RK17pull_coord_work_tRK5t_pbc(ptr noundef nonnull align 8 dereferenceable(488) %1, ptr noundef nonnull align 4 dereferenceable(384) %2)
  %i.l = fpext float %i.k to double               ; 2 uses
  %i.m = icmp eq i32 %i.c, 4
  br i1 %i.m, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.p = load i32, ptr %i.o, align 4, !tbaa !63
  %i.q = sext i32 %i.p to i64
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !108  ; 2 uses
  %i.s = getelementptr inbounds nuw [272 x i8], ptr %i.r, i64 %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.u = load i32, ptr %i.t, align 8, !tbaa !63
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [272 x i8], ptr %i.r, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 200
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 200
  call void @_Z8pbc_dx_dPK5t_pbcPKdS3_Pd(ptr noundef nonnull align 4 dereferenceable(384) %2, ptr noundef nonnull %i.x, ptr noundef nonnull %i.y, ptr noundef nonnull %i.a)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.aa = load <2 x i32>, ptr %i.z, align 4, !tbaa !63
  %i.ab = sitofp <2 x i32> %i.aa to <2 x double>
  %i.ac = load <2 x double>, ptr %i.a, align 16, !tbaa !83
  %i.ad = fmul <2 x double> %i.ac, %i.ab          ; 4 uses
  store <2 x double> %i.ad, ptr %i.a, align 16, !tbaa !83
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !63
  %i.ag = sitofp i32 %i.af to double
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ai = load double, ptr %i.ah, align 16, !tbaa !83
  %i.aj = fmul double %i.ai, %i.ag                ; 5 uses
  store double %i.aj, ptr %i.ah, align 16, !tbaa !83
  %i.ak = extractelement <2 x double> %i.ad, i64 1 ; 3 uses
  %i.al = fmul double %i.ak, %i.ak
  %i.am = extractelement <2 x double> %i.ad, i64 0 ; 3 uses
  %i.an = call double @llvm.fmuladd.f64(double %i.am, double %i.am, double %i.al)
  %i.ao = call noundef double @llvm.fmuladd.f64(double %i.aj, double %i.aj, double %i.an)
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.ao) ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 288
  store double %sqrt.i.i, ptr %i.ap, align 8, !tbaa !110
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ar = insertelement <2 x double> poison, double %sqrt.i.i, i64 0
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = fdiv <2 x double> %i.ad, %i.as          ; 3 uses
  store <2 x double> %i.at, ptr %i.aq, align 8, !tbaa !83
  %i.au = fdiv double %i.aj, %sqrt.i.i            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 280
  store double %i.au, ptr %i.av, align 8, !tbaa !83
  %i.aw = load ptr, ptr @debug, align 8, !tbaa !111 ; 2 uses
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = extractelement <2 x double> %i.at, i64 0
  %i.ay = extractelement <2 x double> %i.at, i64 1
  %i.az = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.aw, ptr noundef nonnull @.str.9, i32 noundef %i.e, double noundef %i.am, double noundef %i.ak, double noundef %i.aj, double noundef %i.ax, double noundef %i.ay, double noundef %i.au) #20 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !105
  br label %.thread.i

.thread.thread.i:                                 ; preds = %.thread74.i, %bb.c, %bb.b
  %.073.ph.i = phi double [ -1.000000e+00, %bb.b ], [ -1.000000e+00, %bb.c ], [ %i.j, %.thread74.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !63
  %i.bd = sext i32 %i.bc to i64
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !108 ; 3 uses
  %i.bf = getelementptr inbounds nuw [272 x i8], ptr %i.be, i64 %i.bd
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !63
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [272 x i8], ptr %i.be, i64 %i.bi
  br label %bb.i

.thread.i:                                        ; preds = %bb.g, %bb.d
  %i.bk = phi i32 [ %i.c, %bb.d ], [ %.pre.i, %bb.g ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !63
  %i.bo = sext i32 %i.bn to i64
  %i.bp = load ptr, ptr %i.bl, align 8, !tbaa !108 ; 4 uses
  %i.bq = getelementptr inbounds nuw [272 x i8], ptr %i.bp, i64 %i.bo
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !63
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [272 x i8], ptr %i.bp, i64 %i.bt ; 2 uses
  %i.bv = icmp eq i32 %i.bk, 2
  br i1 %i.bv, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread.i
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !113
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread.i, %.thread.thread.i
  %.pn83.i = phi ptr [ %i.bu, %bb.h ], [ %i.bu, %.thread.i ], [ %i.bj, %.thread.thread.i ]
  %i.by = phi ptr [ %i.bp, %bb.h ], [ %i.bp, %.thread.i ], [ %i.be, %.thread.thread.i ]
  %i.bz = phi ptr [ %i.bl, %bb.h ], [ %i.bl, %.thread.i ], [ %i.ba, %.thread.thread.i ] ; 2 uses
  %.07382.i = phi double [ %i.l, %bb.h ], [ %i.l, %.thread.i ], [ %.073.ph.i, %.thread.thread.i ] ; 3 uses
  %.pn.i = phi ptr [ %i.bx, %bb.h ], [ %i.bq, %.thread.i ], [ %i.bf, %.thread.thread.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.pn83.i, i64 200
  %i.cb = getelementptr inbounds nuw i8, ptr %.pn.i, i64 200
  call fastcc void @_ZL21low_get_pull_coord_drRK6pull_tRK17pull_coord_work_tRK5t_pbcPKdS9_iidPd(ptr %i.by, ptr noundef nonnull align 8 dereferenceable(488) %1, ptr noundef nonnull align 4 dereferenceable(384) %2, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.cb, i32 noundef 0, i32 noundef 1, double noundef %.07382.i, ptr noundef %i.f)
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !114
  %i.ce = icmp sgt i32 %i.cd, 3
  br i1 %i.ce, label %bb.j, label %_ZL17get_pull_coord_drRK6pull_tP17pull_coord_work_tRK5t_pbc.exit

bb.j:                                             ; preds = %bb.i
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !63
  %i.ch = sext i32 %i.cg to i64
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !108 ; 3 uses
  %i.cj = getelementptr inbounds nuw [272 x i8], ptr %i.ci, i64 %i.ch
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 104
end_hunk_0
begin_hunk_1_@_Z9init_pullP8_IO_FILEPK13pull_params_tPK10t_inputrecRK10gmx_mtop_tRKN3gmx7MpiCommEP12gmx_domdec_tPNSA_19LocalAtomSetManagerEf:bb.a
  %broadcast.splatinsert621 = insertelement <4 x i1> poison, i1 %bc.merge.rdx, i64 0
  %broadcast.splat622 = shufflevector <4 x i1> %broadcast.splatinsert621, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index623 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next626, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi624 = phi <4 x i1> [ %broadcast.splat622, %vec.epilog.ph ], [ %i.pj, %vec.epilog.vector.body ]
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %index623
  %wide.load625 = load <4 x i32>, ptr %i.ph, align 4, !tbaa !63
  %i.pi = icmp eq <4 x i32> %wide.load625, %broadcast.splat620
  %.fr = freeze <4 x i1> %i.pi
  %i.pj = or <4 x i1> %vec.phi624, %.fr           ; 2 uses
  %index.next626 = add nuw i64 %index623, 4       ; 2 uses
  %i.pk = icmp eq i64 %index.next626, %n.vec618
  br i1 %i.pk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !353

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.pl = bitcast <4 x i1> %i.pj to i4
  %i.pm = icmp ne i4 %i.pl, 0                     ; 2 uses
  %cmp.n627 = icmp eq i64 %n.vec618, %wide.trip.count447
  br i1 %cmp.n627, label %._crit_edge374, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv445.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec618, %vec.epilog.middle.block ]
  %.0231371.ph = phi i1 [ false, %iter.check ], [ %i.pg, %vec.epilog.iter.check ], [ %i.pm, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge381.loopexit:                          ; preds = %.loopexit307
  %i.pn = icmp eq i32 %.sroa.0459.3, 1
  %i.po = icmp eq i32 %.sroa.6.2, 1
  %i.pp = icmp eq i32 %.sroa.9.2, 0
  br label %._crit_edge381

._crit_edge381:                                   ; preds = %._crit_edge381.loopexit, %bb.ca
  %.sroa.9.1 = phi i1 [ true, %bb.ca ], [ %i.pp, %._crit_edge381.loopexit ]
  %.sroa.6.1 = phi i1 [ false, %bb.ca ], [ %i.po, %._crit_edge381.loopexit ]
  %.sroa.0459.1 = phi i1 [ false, %bb.ca ], [ %i.pn, %._crit_edge381.loopexit ]
  %.sroa.11.1 = phi i32 [ 0, %bb.ca ], [ %.sroa.11.2, %._crit_edge381.loopexit ] ; 2 uses
  %.sroa.7.1 = phi i32 [ 0, %bb.ca ], [ %.sroa.7.2, %._crit_edge381.loopexit ] ; 2 uses
  %.sroa.0.1 = phi i32 [ 0, %bb.ca ], [ %.sroa.0.3, %._crit_edge381.loopexit ] ; 2 uses
  %.0237.lcssa = phi i1 [ false, %bb.ca ], [ %.3, %._crit_edge381.loopexit ] ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.of, i64 56 ; 3 uses
  %i.pr = load i32, ptr %i.pq, align 8, !tbaa !23
  switch i32 %i.pr, label %.loopexit310 [
    i32 1, label %bb.cg
    i32 2, label %bb.ch
  ]

._crit_edge374:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %spec.select.lcssa = phi i1 [ %i.pm, %vec.epilog.middle.block ], [ %i.pg, %middle.block ], [ %spec.select, %vec.epilog.scalar.ph ]
  br i1 %spec.select.lcssa, label %.preheader, label %.loopexit307

.preheader:                                       ; preds = %._crit_edge374
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.0278.0379, i64 116
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !63
  %i.pu = icmp eq i32 %i.pt, 1
  br i1 %i.pu, label %bb.cb, label %bb.cc

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv445 = phi i64 [ %indvars.iv.next446, %vec.epilog.scalar.ph ], [ %indvars.iv445.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0231371 = phi i1 [ %spec.select, %vec.epilog.scalar.ph ], [ %.0231371.ph, %vec.epilog.scalar.ph.preheader ]
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %indvars.iv445
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !63
  %i.px = icmp eq i32 %i.pw, %i.om
  %spec.select = select i1 %i.px, i1 true, i1 %.0231371 ; 2 uses
  %indvars.iv.next446 = add nuw nsw i64 %indvars.iv445, 1 ; 2 uses
  %exitcond448.not = icmp eq i64 %indvars.iv.next446, %wide.trip.count447
  br i1 %exitcond448.not, label %._crit_edge374, label %vec.epilog.scalar.ph, !llvm.loop !354

bb.cb:                                            ; preds = %.preheader
  %i.py = load i32, ptr %.sroa.0278.0379, align 8, !tbaa !107
  %i.pz = icmp eq i32 %i.py, 1                    ; 2 uses
  %spec.select567 = select i1 %i.pz, i32 1, i32 %.sroa.0.0
  %spec.select568 = select i1 %i.pz, i1 true, i1 %.0237380
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.preheader
  %.sroa.0459.2 = phi i32 [ %.sroa.0459.0, %.preheader ], [ 1, %bb.cb ] ; 2 uses
  %.sroa.0.2 = phi i32 [ %.sroa.0.0, %.preheader ], [ %spec.select567, %bb.cb ] ; 2 uses
  %.2239 = phi i1 [ %.0237380, %.preheader ], [ %spec.select568, %bb.cb ] ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %.sroa.0278.0379, i64 120
  %i.qb = load i32, ptr %i.qa, align 8, !tbaa !63
  %i.qc = icmp eq i32 %i.qb, 1
  br i1 %i.qc, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.qd = load i32, ptr %.sroa.0278.0379, align 8, !tbaa !107
  %i.qe = icmp eq i32 %i.qd, 1                    ; 2 uses
  %spec.select569 = select i1 %i.qe, i32 1, i32 %.sroa.7.0
  %spec.select570 = select i1 %i.qe, i1 true, i1 %.2239
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.sroa.6.3 = phi i32 [ %.sroa.6.0, %bb.cc ], [ 1, %bb.cd ] ; 2 uses
  %.sroa.7.3 = phi i32 [ %.sroa.7.0, %bb.cc ], [ %spec.select569, %bb.cd ] ; 2 uses
  %.2239.1 = phi i1 [ %.2239, %bb.cc ], [ %spec.select570, %bb.cd ] ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %.sroa.0278.0379, i64 124
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !63
  %i.qh = icmp eq i32 %i.qg, 1
  br i1 %i.qh, label %bb.cf, label %.loopexit307

bb.cf:                                            ; preds = %bb.ce
  %i.qi = load i32, ptr %.sroa.0278.0379, align 8, !tbaa !107
  %i.qj = icmp eq i32 %i.qi, 1                    ; 2 uses
  %spec.select571 = select i1 %i.qj, i32 1, i32 %.sroa.11.0
  %spec.select572 = select i1 %i.qj, i1 true, i1 %.2239.1
  br label %.loopexit307

.loopexit307:                                     ; preds = %bb.cf, %bb.ce, %.preheader308, %._crit_edge374
  %.sroa.9.2 = phi i32 [ %.sroa.9.0, %.preheader308 ], [ %.sroa.9.0, %._crit_edge374 ], [ %.sroa.9.0, %bb.ce ], [ 1, %bb.cf ] ; 2 uses
  %.sroa.6.2 = phi i32 [ %.sroa.6.0, %.preheader308 ], [ %.sroa.6.0, %._crit_edge374 ], [ %.sroa.6.3, %bb.ce ], [ %.sroa.6.3, %bb.cf ] ; 2 uses
  %.sroa.0459.3 = phi i32 [ %.sroa.0459.0, %.preheader308 ], [ %.sroa.0459.0, %._crit_edge374 ], [ %.sroa.0459.2, %bb.ce ], [ %.sroa.0459.2, %bb.cf ] ; 2 uses
  %.sroa.11.2 = phi i32 [ %.sroa.11.0, %.preheader308 ], [ %.sroa.11.0, %._crit_edge374 ], [ %.sroa.11.0, %bb.ce ], [ %spec.select571, %bb.cf ] ; 2 uses
  %.sroa.7.2 = phi i32 [ %.sroa.7.0, %.preheader308 ], [ %.sroa.7.0, %._crit_edge374 ], [ %.sroa.7.3, %bb.ce ], [ %.sroa.7.3, %bb.cf ] ; 2 uses
  %.sroa.0.3 = phi i32 [ %.sroa.0.0, %.preheader308 ], [ %.sroa.0.0, %._crit_edge374 ], [ %.sroa.0.2, %bb.ce ], [ %.sroa.0.2, %bb.cf ] ; 2 uses
  %.3 = phi i1 [ %.0237380, %.preheader308 ], [ %.0237380, %._crit_edge374 ], [ %.2239.1, %bb.ce ], [ %spec.select572, %bb.cf ] ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %.sroa.0278.0379, i64 488 ; 2 uses
  %.not306 = icmp eq ptr %i.qk, %i.ol
  br i1 %.not306, label %._crit_edge381.loopexit, label %.preheader308

bb.cg:                                            ; preds = %._crit_edge381
  store i8 1, ptr %i.nd, align 4, !tbaa !349
  br label %.loopexit310

bb.ch:                                            ; preds = %._crit_edge381
  %i.ql = getelementptr inbounds nuw i8, ptr %i.of, i64 24
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !67
  %i.qn = getelementptr inbounds nuw i8, ptr %i.of, i64 32
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !67
  %i.qp = icmp eq ptr %i.qm, %i.qo
  br i1 %i.qp, label %.preheader309, label %bb.ci

.preheader309:                                    ; preds = %bb.ch
  %i.qq = load i32, ptr %i.nk, align 8, !tbaa !334 ; 3 uses
  %i.qr = icmp sgt i32 %i.qq, 0
  br i1 %i.qr, label %bb.cl, label %.loopexit310

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 1 dereferenceable(61) @.str.8, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef 2338, ptr noundef nonnull @.str.66) #28
          to label %bb.cj unwind label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  unreachable

bb.ck:                                            ; preds = %bb.ci
  %i.qs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.fl

bb.cl:                                            ; preds = %.preheader309
  br i1 %.sroa.0459.1, label %bb.cm, label %bb.cr

bb.cm:                                            ; preds = %bb.cl
  %i.qt = load i32, ptr %i.ne, align 8, !tbaa !350
  %or.cond261 = icmp slt i32 %i.qt, 1
  br i1 %or.cond261, label %bb.cq, label %bb.cn

bb.cn:                                            ; preds = %bb.cw, %bb.ct, %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 1 dereferenceable(61) @.str.8, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef 2348, ptr noundef nonnull @.str.67) #28
          to label %bb.co unwind label %bb.cp

bb.co:                                            ; preds = %bb.cn
  unreachable

bb.cp:                                            ; preds = %bb.cn
  %i.qu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.fl

bb.cq:                                            ; preds = %bb.cm
  store i32 0, ptr %i.ne, align 8, !tbaa !350
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cl, %bb.cq
  %.not575 = icmp eq i32 %i.qq, 1
  br i1 %.not575, label %.loopexit310, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  br i1 %.sroa.6.1, label %bb.ct, label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  %i.qv = load i32, ptr %i.ne, align 8, !tbaa !350 ; 2 uses
  %i.qw = icmp slt i32 %i.qv, 0
  %.not.1 = icmp eq i32 %i.qv, 1
  %or.cond261.1 = or i1 %i.qw, %.not.1
  br i1 %or.cond261.1, label %bb.cu, label %bb.cn

bb.cu:                                            ; preds = %bb.ct
  store i32 1, ptr %i.ne, align 8, !tbaa !350
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.cs
  %i.qx = icmp ult i32 %i.qq, 3
  %brmerge = select i1 %i.qx, i1 true, i1 %.sroa.9.1
  br i1 %brmerge, label %.loopexit310, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.qy = load i32, ptr %i.ne, align 8, !tbaa !350 ; 2 uses
  %i.qz = icmp slt i32 %i.qy, 0
  %.not.2 = icmp eq i32 %i.qy, 2
  %or.cond261.2 = or i1 %i.qz, %.not.2
  br i1 %or.cond261.2, label %bb.cx, label %bb.cn

bb.cx:                                            ; preds = %bb.cw
  store i32 2, ptr %i.ne, align 8, !tbaa !350
  br label %.loopexit310

.loopexit310:                                     ; preds = %bb.cv, %.preheader309, %bb.cr, %bb.cx, %bb.cg, %._crit_edge381
  %i.ra = trunc i64 %.0241384 to i32              ; 3 uses
  %.val = load i32, ptr %i.nl, align 8
  %i.rb = getelementptr inbounds nuw i8, ptr %i.of, i64 24 ; 4 uses
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !67
  %i.rd = getelementptr inbounds nuw i8, ptr %i.of, i64 32 ; 4 uses
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !67
  %i.rf = icmp eq ptr %i.rc, %i.re
  br i1 %i.rf, label %bb.cy, label %switch.edge.i

bb.cy:                                            ; preds = %.loopexit310
  %i.rg = load i32, ptr %i.nm, align 4, !tbaa !355 ; 2 uses
  %i.rh = icmp ult i32 %i.rg, 7
  br i1 %i.rh, label %switch.lookup, label %switch.edge.i

switch.lookup:                                    ; preds = %bb.cy
  %switch.cast = trunc nuw i32 %i.rg to i7
  %switch.downshift = lshr i7 -50, %switch.cast
  %switch.masked = trunc i7 %switch.downshift to i1
  br label %switch.edge.i

switch.edge.i:                                    ; preds = %bb.cy, %switch.lookup, %.loopexit310
  %i.ri = phi i1 [ %switch.masked, %switch.lookup ], [ true, %.loopexit310 ], [ false, %bb.cy ]
  %i.rj = icmp sgt i32 %.val, 1
  %.v.i = select i1 %i.rj, i64 72, i64 104
  %i.rk = getelementptr inbounds nuw i8, ptr %i.of, i64 %.v.i ; 4 uses
  %i.rl = ptrtoint ptr %i.oi to i64
  %i.rm = ptrtoint ptr %i.og to i64
  %i.rn = sub i64 %i.rl, %i.rm                    ; 2 uses
  %i.ro = ashr exact i64 %i.rn, 2                 ; 2 uses
  %i.rp = trunc i64 %i.ro to i32
  %i.rq = icmp sgt i32 %i.rp, 0
  br i1 %i.rq, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %switch.edge.i
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rk, i64 8 ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rk, i64 16 ; 2 uses
  %i.rt = icmp eq i32 %.sroa.0.1, 1
  %i.ru = icmp eq i32 %.sroa.7.1, 1
  %i.rv = icmp eq i32 %.sroa.11.1, 1
  br label %bb.cz

._crit_edge.i:                                    ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i
  %i.rw = ashr exact i64 %i.ws, 2                 ; 2 uses
  %i.rx = extractelement <2 x double> %i.wk, i64 1 ; 3 uses
  %i.ry = fcmp oeq double %i.rx, 0.000000e+00
  %i.rz = extractelement <2 x double> %i.wk, i64 0 ; 2 uses
  br i1 %i.ry, label %._crit_edge.thread.i, label %bb.ed

bb.cz:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i ] ; 3 uses
  %i.sa = phi ptr [ %i.og, %.lr.ph.i ], [ %i.wp, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i ]
  %.010627.i = phi i32 [ 0, %.lr.ph.i ], [ %.3.i, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i ] ; 4 uses
  %.011324.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.wn, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i ]
  %.0622.i = phi i32 [ 0, %.lr.ph.i ], [ %.17.i, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i ]
  %i.sb = phi <2 x double> [ zeroinitializer, %.lr.ph.i ], [ %i.wk, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i ]
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.sa, i64 %indvars.iv.i
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !63 ; 7 uses
  br i1 %.0237.lcssa, label %bb.da, label %.loopexit.i

bb.da:                                            ; preds = %bb.cz
  %i.se = load ptr, ptr %i.no, align 8, !tbaa !356 ; 2 uses
  %.not122.i = icmp eq ptr %i.se, null
  br i1 %.not122.i, label %.loopexit.i, label %.preheader8.preheader.i

.preheader8.preheader.i:                          ; preds = %bb.da
  br i1 %i.rt, label %bb.db, label %.preheader8.1.i

bb.db:                                            ; preds = %.preheader8.preheader.i
  %i.sf = call noundef i32 @_Z12getGroupTypeRK16SimulationGroups23SimulationAtomGroupTypei(ptr noundef nonnull align 8 dereferenceable(504) %i.nn, i32 noundef 3, i32 noundef %i.sd)
  %i.sg = sext i32 %i.sf to i64
  %i.sh = getelementptr inbounds [12 x i8], ptr %i.se, i64 %i.sg
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !63
  %.not123.i = icmp ne i32 %i.si, 0
  %i.sj = zext i1 %.not123.i to i32
  %spec.select.i = add nsw i32 %.010627.i, %i.sj
  br label %.preheader8.1.i

.preheader8.1.i:                                  ; preds = %bb.db, %.preheader8.preheader.i
  %.2.i = phi i32 [ %.010627.i, %.preheader8.preheader.i ], [ %spec.select.i, %bb.db ] ; 2 uses
  br i1 %i.ru, label %bb.dc, label %.preheader8.2.i

bb.dc:                                            ; preds = %.preheader8.1.i
  %i.sk = load ptr, ptr %i.no, align 8, !tbaa !356
  %i.sl = call noundef i32 @_Z12getGroupTypeRK16SimulationGroups23SimulationAtomGroupTypei(ptr noundef nonnull align 8 dereferenceable(504) %i.nn, i32 noundef 3, i32 noundef %i.sd)
  %i.sm = sext i32 %i.sl to i64
  %i.sn = getelementptr inbounds [12 x i8], ptr %i.sk, i64 %i.sm
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 4
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !63
  %.not123.1.i = icmp ne i32 %i.sp, 0
  %i.sq = zext i1 %.not123.1.i to i32
  %spec.select.1.i = add nsw i32 %.2.i, %i.sq
  br label %.preheader8.2.i

.preheader8.2.i:                                  ; preds = %bb.dc, %.preheader8.1.i
  %.2.1.i = phi i32 [ %.2.i, %.preheader8.1.i ], [ %spec.select.1.i, %bb.dc ] ; 2 uses
  br i1 %i.rv, label %bb.dd, label %.loopexit.i

bb.dd:                                            ; preds = %.preheader8.2.i
  %i.sr = load ptr, ptr %i.no, align 8, !tbaa !356
  %i.ss = call noundef i32 @_Z12getGroupTypeRK16SimulationGroups23SimulationAtomGroupTypei(ptr noundef nonnull align 8 dereferenceable(504) %i.nn, i32 noundef 3, i32 noundef %i.sd)
  %i.st = sext i32 %i.ss to i64
  %i.su = getelementptr inbounds [12 x i8], ptr %i.sr, i64 %i.st
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !63
  %.not123.2.i = icmp ne i32 %i.sw, 0
  %i.sx = zext i1 %.not123.2.i to i32
  %spec.select.2.i = add nsw i32 %.2.1.i, %i.sx
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.dd, %.preheader8.2.i, %bb.da, %bb.cz
  %.3.i = phi i32 [ %.010627.i, %bb.cz ], [ %.010627.i, %bb.da ], [ %.2.1.i, %.preheader8.2.i ], [ %spec.select.2.i, %bb.dd ] ; 3 uses
  %i.sy = load ptr, ptr %i.nq, align 8, !tbaa !357
  %i.sz = load ptr, ptr %i.np, align 8, !tbaa !360 ; 2 uses
  %i.ta = ptrtoint ptr %i.sy to i64
  %i.tb = ptrtoint ptr %i.sz to i64
  %i.tc = sub i64 %i.ta, %i.tb
  %i.td = sdiv exact i64 %i.tc, 56
  %i.te = trunc i64 %i.td to i32
  %i.tf = load ptr, ptr %i.nr, align 8, !tbaa !361
  br label %bb.de

bb.de:                                            ; preds = %bb.dg, %.loopexit.i
  %.17.i = phi i32 [ %.0622.i, %.loopexit.i ], [ %i.tp, %bb.dg ] ; 4 uses
  %.026.i.i.i = phi i32 [ %i.te, %.loopexit.i ], [ %.127.i.i.i, %bb.dg ]
  %.0.i.i.i = phi i32 [ -1, %.loopexit.i ], [ %.1.i.i.i, %bb.dg ]
  %i.tg = sext i32 %.17.i to i64                  ; 2 uses
  %i.th = getelementptr inbounds nuw [24 x i8], ptr %i.tf, i64 %i.tg ; 3 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 4
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !364
  %.fr1.i.i.i = freeze i32 %i.tj                  ; 2 uses
  %i.tk = icmp slt i32 %i.sd, %.fr1.i.i.i
  br i1 %i.tk, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.tl = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !366
  %.not.i.i.i = icmp slt i32 %i.sd, %i.tm
  br i1 %.not.i.i.i, label %_ZL21mtopGetAtomParametersRK10gmx_mtop_tiPi.exit.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.127.i.i.i = phi i32 [ %.17.i, %bb.de ], [ %.026.i.i.i, %bb.df ] ; 2 uses
  %.1.i.i.i = phi i32 [ %.0.i.i.i, %bb.de ], [ %.17.i, %bb.df ] ; 2 uses
  %i.tn = add i32 %.127.i.i.i, 1
  %i.to = add i32 %i.tn, %.1.i.i.i
  %i.tp = ashr i32 %i.to, 1
  br label %bb.de, !llvm.loop !367

_ZL21mtopGetAtomParametersRK10gmx_mtop_tiPi.exit.i: ; preds = %bb.df
  %i.tq = sub i32 %i.sd, %.fr1.i.i.i
  %i.tr = load i32, ptr %i.th, align 4, !tbaa !368
  %i.ts = srem i32 %i.tq, %i.tr
  %i.tt = getelementptr inbounds nuw [56 x i8], ptr %i.sz, i64 %i.tg
  %i.tu = load i32, ptr %i.tt, align 8, !tbaa !369
  %i.tv = sext i32 %i.tu to i64
  %i.tw = load ptr, ptr %i.ns, align 8, !tbaa !371
  %i.tx = getelementptr inbounds nuw [2408 x i8], ptr %i.tw, i64 %i.tv
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 16
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !374
  %i.ua = sext i32 %i.ts to i64
  %i.ub = getelementptr inbounds [36 x i8], ptr %i.tz, i64 %i.ua ; 2 uses
  %i.uc = load i32, ptr %i.nt, align 4, !tbaa !385
  %i.ud = icmp eq i32 %i.uc, 0
  %i.ue = load float, ptr %i.ub, align 4, !tbaa !386 ; 2 uses
  br i1 %i.ud, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %_ZL21mtopGetAtomParametersRK10gmx_mtop_tiPi.exit.i
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !390
  %i.uh = fmul float %7, %i.ug
  %i.ui = call float @llvm.fmuladd.f32(float %i.nu, float %i.ue, float %i.uh)
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %_ZL21mtopGetAtomParametersRK10gmx_mtop_tiPi.exit.i
  %.0109.i = phi float [ %i.ui, %bb.dh ], [ %i.ue, %_ZL21mtopGetAtomParametersRK10gmx_mtop_tiPi.exit.i ] ; 3 uses
  %i.uj = load ptr, ptr %i.rb, align 8, !tbaa !67 ; 2 uses
  %i.uk = load ptr, ptr %i.rd, align 8, !tbaa !67
  %i.ul = icmp eq ptr %i.uj, %i.uk
  br i1 %i.ul, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %indvars.iv.i
  %i.un = load float, ptr %i.um, align 4, !tbaa !68
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
end_hunk_1
