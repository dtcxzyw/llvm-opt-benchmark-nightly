Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_hbond?download=true
inline.NumInlined: 2166
inline.NumDeleted: 889
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 48
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZNSt6vectorISt5arrayIiLm4EESaIS1_EEaSERKS3_:bb.a
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIiLm4EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.g:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !79
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k                      ; 4 uses
  %.not24 = icmp ult i64 %i.aa, %i.f
  br i1 %.not24, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp sgt i64 %i.f, 16
  br i1 %i.ab, label %bb.i, label %bb.j, !prof !67

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIiLm4EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.h
  %i.ac = icmp eq i64 %i.f, 16
  br i1 %i.ac, label %bb.k, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIiLm4EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !80
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIiLm4EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.l:                                             ; preds = %bb.g
  %i.ad = icmp sgt i64 %i.aa, 16
  br i1 %i.ad, label %bb.m, label %bb.n, !prof !67

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.aa, i1 false)
  br label %_ZSt4copyIPSt5arrayIiLm4EES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.l
  %i.ae = icmp eq i64 %i.aa, 16
  br i1 %i.ae, label %bb.o, label %_ZSt4copyIPSt5arrayIiLm4EES2_ET0_T_S4_S3_.exit

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !80
  br label %_ZSt4copyIPSt5arrayIiLm4EES2_ET0_T_S4_S3_.exit

_ZSt4copyIPSt5arrayIiLm4EES2_ET0_T_S4_S3_.exit:   ; preds = %bb.m, %bb.n, %bb.o
  %i.af = load ptr, ptr %1, align 8, !tbaa !76
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !79  ; 3 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !76
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ak ; 3 uses
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 3 uses
  %i.aq = icmp sgt i64 %i.ap, 16
  br i1 %i.aq, label %bb.p, label %bb.q, !prof !67

bb.p:                                             ; preds = %_ZSt4copyIPSt5arrayIiLm4EES2_ET0_T_S4_S3_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ag, ptr align 4 %i.al, i64 %i.ap, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIiLm4EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.q:                                             ; preds = %_ZSt4copyIPSt5arrayIiLm4EES2_ET0_T_S4_S3_.exit
  %i.ar = icmp eq i64 %i.ap, 16
  br i1 %i.ar, label %bb.r, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIiLm4EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ag, ptr noundef nonnull align 4 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !80
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIiLm4EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIiLm4EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %bb.r, %bb.q, %bb.p, %bb.k, %bb.j, %bb.i, %_ZNSt12_Vector_baseISt5arrayIiLm4EESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.as = load ptr, ptr %0, align 8, !tbaa !76
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.f
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %i.au, align 8, !tbaa !79
  br label %bb.s

bb.s:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt5arrayIiLm4EESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8t_donorsD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #32
  br label %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EED2Ev.exit

_ZNSt6vectorISt5arrayIiLm4EESaIS1_EED2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !76   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !77
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #32
  br label %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EED2Ev.exit2

_ZNSt6vectorISt5arrayIiLm4EESaIS1_EED2Ev.exit2:   ; preds = %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !70   ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EED2Ev.exit2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !71
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt5arrayIiLm4EESaIS1_EED2Ev.exit2, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !70   ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIiSaIiEED2Ev.exit5, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !71
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit5

_ZNSt6vectorIiSaIiEED2Ev.exit5:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !70 ; 3 uses
  %.not.i.i.i6 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i6, label %_ZNSt6vectorIiSaIiEED2Ev.exit7, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit5
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !71
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit7

_ZNSt6vectorIiSaIiEED2Ev.exit7:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit5, %bb.f
  %i.aj = load ptr, ptr %0, align 8, !tbaa !70    ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIiSaIiEED2Ev.exit9, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit7
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !71
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit9

_ZNSt6vectorIiSaIiEED2Ev.exit9:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit7, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK16HydrogenBondData7nFramesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(392) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 2
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

; Function Attrs: mustprogress uwtable
define void @_Z12analyse_corriPfS_S_S_S_S_S_ff(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readnone captures(address_is_null) %5, ptr nofree noundef readnone captures(address_is_null) %6, ptr nofree noundef readnone captures(address_is_null) %7, float noundef %8, float noundef %9) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca float, align 4                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = icmp ne ptr %5, null
  %i.c = icmp ne ptr %6, null
  %or.cond = and i1 %i.b, %i.c
  %i.d = icmp ne ptr %7, null
  %spec.select = and i1 %or.cond, %i.d            ; 3 uses
  %i.e = icmp sgt i32 %0, 2
  br i1 %i.e, label %.lr.ph, label %.critedge171

.lr.ph:                                           ; preds = %bb.a
  %10 = add nsw i32 %0, -2
  %i.f = load float, ptr %1, align 4, !tbaa !69
  %wide.trip.count = zext nneg i32 %10 to i64     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 18 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.h = load float, ptr %i.g, align 4, !tbaa !69
  %i.i = fsub float %i.h, %i.f
  %i.j = fcmp olt float %i.i, %8
  br i1 %i.j, label %bb.c, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.b
  %i.k = trunc nuw nsw i64 %indvars.iv to i32
  %i.l = icmp sgt i32 %0, %i.k                    ; 3 uses
  br i1 %i.l, label %.critedge.preheader229, label %.critedge._crit_edge

.critedge.preheader229:                           ; preds = %.critedge.preheader
  %wide.trip.count248 = zext nneg i32 %0 to i64   ; 3 uses
  %i.m = sub nsw i64 %wide.trip.count248, %indvars.iv
  %xtraiter = and i64 %i.m, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge.prol.loopexit, label %.critedge.prol

.critedge.prol:                                   ; preds = %.critedge.preheader229
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.o = load float, ptr %i.n, align 4, !tbaa !69 ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.q = load float, ptr %i.p, align 4, !tbaa !69 ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.s = load float, ptr %i.r, align 4, !tbaa !69 ; 3 uses
  %i.t = fmul float %i.o, %i.s
  %i.u = fpext float %i.t to double
  %i.v = fadd double %i.u, 0.000000e+00           ; 2 uses
  %i.w = fmul float %i.q, %i.s
  %i.x = fpext float %i.w to double
  %i.y = fadd double %i.x, 0.000000e+00           ; 2 uses
  %i.z = insertelement <4 x float> poison, float %i.q, i64 0
  %i.aa = insertelement <4 x float> %i.z, float %i.o, i64 1
  %i.ab = insertelement <4 x float> %i.aa, float %i.s, i64 2 ; 2 uses
  %i.ac = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 1>
  %i.ad = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 0>
  %i.ae = fmul <4 x float> %i.ac, %i.ad
  %i.af = fpext <4 x float> %i.ae to <4 x double>
  %i.ag = fadd <4 x double> %i.af, zeroinitializer ; 2 uses
  %indvars.iv.next246.prol = add nuw nsw i64 %indvars.iv, 1
  br label %.critedge.prol.loopexit

.critedge.prol.loopexit:                          ; preds = %.critedge.prol, %.critedge.preheader229
  %.lcssa306.unr = phi double [ poison, %.critedge.preheader229 ], [ %i.v, %.critedge.prol ]
  %.lcssa305.unr = phi double [ poison, %.critedge.preheader229 ], [ %i.y, %.critedge.prol ]
  %.lcssa304.unr = phi <4 x double> [ poison, %.critedge.preheader229 ], [ %i.ag, %.critedge.prol ]
  %indvars.iv245.unr = phi i64 [ %indvars.iv, %.critedge.preheader229 ], [ %indvars.iv.next246.prol, %.critedge.prol ]
  %.0211.unr = phi double [ 0.000000e+00, %.critedge.preheader229 ], [ %i.y, %.critedge.prol ]
  %.0156210.unr = phi double [ 0.000000e+00, %.critedge.preheader229 ], [ %i.v, %.critedge.prol ]
  %.unr = phi <4 x double> [ zeroinitializer, %.critedge.preheader229 ], [ %i.ag, %.critedge.prol ]
  %i.ah = add nsw i64 %wide.trip.count248, -1
  %i.ai = icmp eq i64 %indvars.iv, %i.ah
  br i1 %i.ai, label %.critedge._crit_edge, label %.critedge

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge171, label %bb.b, !llvm.loop !196

.critedge:                                        ; preds = %.critedge.prol.loopexit, %.critedge
  %indvars.iv245 = phi i64 [ %indvars.iv.next246.1, %.critedge ], [ %indvars.iv245.unr, %.critedge.prol.loopexit ] ; 5 uses
  %.0211 = phi double [ %i.bp, %.critedge ], [ %.0211.unr, %.critedge.prol.loopexit ]
  %.0156210 = phi double [ %i.bm, %.critedge ], [ %.0156210.unr, %.critedge.prol.loopexit ]
  %i.aj = phi <4 x double> [ %i.bx, %.critedge ], [ %.unr, %.critedge.prol.loopexit ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv245
  %i.al = load float, ptr %i.ak, align 4, !tbaa !69 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv245
  %i.an = load float, ptr %i.am, align 4, !tbaa !69 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv245
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !69 ; 3 uses
  %i.aq = fmul float %i.al, %i.ap
  %i.ar = fpext float %i.aq to double
  %i.as = fadd double %.0156210, %i.ar
  %i.at = fmul float %i.an, %i.ap
  %i.au = fpext float %i.at to double
  %i.av = fadd double %.0211, %i.au
  %i.aw = insertelement <4 x float> poison, float %i.an, i64 0
  %i.ax = insertelement <4 x float> %i.aw, float %i.al, i64 1
  %i.ay = insertelement <4 x float> %i.ax, float %i.ap, i64 2 ; 2 uses
  %i.az = shufflevector <4 x float> %i.ay, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 1>
  %i.ba = shufflevector <4 x float> %i.ay, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 0>
  %i.bb = fmul <4 x float> %i.az, %i.ba
  %i.bc = fpext <4 x float> %i.bb to <4 x double>
  %i.bd = fadd <4 x double> %i.aj, %i.bc
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1 ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next246
  %i.bf = load float, ptr %i.be, align 4, !tbaa !69 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next246
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !69 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next246
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !69 ; 3 uses
  %i.bk = fmul float %i.bf, %i.bj
  %i.bl = fpext float %i.bk to double
  %i.bm = fadd double %i.as, %i.bl                ; 2 uses
  %i.bn = fmul float %i.bh, %i.bj
  %i.bo = fpext float %i.bn to double
  %i.bp = fadd double %i.av, %i.bo                ; 2 uses
  %i.bq = insertelement <4 x float> poison, float %i.bh, i64 0
  %i.br = insertelement <4 x float> %i.bq, float %i.bf, i64 1
  %i.bs = insertelement <4 x float> %i.br, float %i.bj, i64 2 ; 2 uses
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 1>
  %i.bu = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 0>
  %i.bv = fmul <4 x float> %i.bt, %i.bu
  %i.bw = fpext <4 x float> %i.bv to <4 x double>
  %i.bx = fadd <4 x double> %i.bd, %i.bw          ; 2 uses
  %indvars.iv.next246.1 = add nuw nsw i64 %indvars.iv245, 2 ; 2 uses
  %exitcond249.not.1 = icmp eq i64 %indvars.iv.next246.1, %wide.trip.count248
  br i1 %exitcond249.not.1, label %.critedge._crit_edge, label %.critedge, !llvm.loop !197

.critedge._crit_edge:                             ; preds = %.critedge.prol.loopexit, %.critedge, %.critedge.preheader
  %.0156.lcssa = phi double [ 0.000000e+00, %.critedge.preheader ], [ %.lcssa306.unr, %.critedge.prol.loopexit ], [ %i.bm, %.critedge ] ; 3 uses
  %.0.lcssa = phi double [ 0.000000e+00, %.critedge.preheader ], [ %.lcssa305.unr, %.critedge.prol.loopexit ], [ %i.bp, %.critedge ] ; 2 uses
  %i.by = phi <4 x double> [ zeroinitializer, %.critedge.preheader ], [ %.lcssa304.unr, %.critedge.prol.loopexit ], [ %i.bx, %.critedge ] ; 4 uses
  %i.bz = fpext float %9 to double                ; 7 uses
  %i.ca = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %i.bz) ; 0 uses
  %i.cb = extractelement <4 x double> %i.by, i64 3 ; 5 uses
  %i.cc = fneg double %i.cb
  %i.cd = fmul double %i.cb, %i.cc
  %i.ce = extractelement <4 x double> %i.by, i64 1 ; 4 uses
  %i.cf = extractelement <4 x double> %i.by, i64 2 ; 5 uses
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.ce, double %i.cd) ; 2 uses
  %i.ch = fcmp ogt double %i.cg, 0.000000e+00
  %i.ci = fcmp ogt double %i.cf, 0.000000e+00
  %or.cond3 = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %or.cond3, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.critedge._crit_edge
  %i.cj = fneg double %.0.lcssa                   ; 2 uses
  %i.ck = fmul double %i.cb, %i.cj
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.cf, double %.0156.lcssa, double %i.ck)
  %i.cm = fdiv double %i.cl, %i.cg
  %i.cn = fptrunc double %i.cm to float           ; 14 uses
  %i.co = fpext float %i.cn to double             ; 4 uses
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.co, double %i.cb, double %i.cj)
  %i.cq = fdiv double %i.cp, %i.cf
  %i.cr = fptrunc double %i.cq to float           ; 15 uses
  br i1 %spec.select, label %.preheader, label %.preheader198

.preheader198:                                    ; preds = %bb.d
  br i1 %i.l, label %.lr.ph220.preheader, label %._crit_edge

.lr.ph220.preheader:                              ; preds = %.preheader198
  %wide.trip.count255 = zext nneg i32 %0 to i64   ; 3 uses
  %i.cs = sub nsw i64 %wide.trip.count255, %indvars.iv
  %xtraiter312 = and i64 %i.cs, 3                 ; 2 uses
  %lcmp.mod313.not = icmp eq i64 %xtraiter312, 0
  br i1 %lcmp.mod313.not, label %.lr.ph220.prol.loopexit, label %.lr.ph220.prol

.lr.ph220.prol:                                   ; preds = %.lr.ph220.preheader, %.lr.ph220.prol
  %indvars.iv252.prol = phi i64 [ %indvars.iv.next253.prol, %.lr.ph220.prol ], [ %indvars.iv, %.lr.ph220.preheader ] ; 4 uses
  %.1219.prol = phi float [ %i.de, %.lr.ph220.prol ], [ 0.000000e+00, %.lr.ph220.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph220.prol ], [ 0, %.lr.ph220.preheader ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv252.prol
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !69
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv252.prol
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !69
  %i.cx = fneg float %i.cw
  %i.cy = fmul float %i.cr, %i.cx
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.cu, float %i.cy)
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv252.prol
  %i.db = load float, ptr %i.da, align 4, !tbaa !69
  %i.dc = fsub float %i.cz, %i.db                 ; 2 uses
  %i.dd = fmul float %i.dc, %i.dc
  %i.de = fadd float %.1219.prol, %i.dd           ; 3 uses
  %indvars.iv.next253.prol = add nuw nsw i64 %indvars.iv252.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter312
  br i1 %prol.iter.cmp.not, label %.lr.ph220.prol.loopexit, label %.lr.ph220.prol, !llvm.loop !198

.lr.ph220.prol.loopexit:                          ; preds = %.lr.ph220.prol, %.lr.ph220.preheader
  %.lcssa303.unr = phi float [ poison, %.lr.ph220.preheader ], [ %i.de, %.lr.ph220.prol ]
  %indvars.iv252.unr = phi i64 [ %indvars.iv, %.lr.ph220.preheader ], [ %indvars.iv.next253.prol, %.lr.ph220.prol ]
  %.1219.unr = phi float [ 0.000000e+00, %.lr.ph220.preheader ], [ %i.de, %.lr.ph220.prol ]
  %i.df = sub nsw i64 %indvars.iv, %wide.trip.count255
  %i.dg = icmp ugt i64 %i.df, -4
  br i1 %i.dg, label %._crit_edge.loopexit, label %.lr.ph220

.preheader:                                       ; preds = %bb.d
  br i1 %i.l, label %.lr.ph224.preheader, label %._crit_edge225

.lr.ph224.preheader:                              ; preds = %.preheader
  %wide.trip.count262 = zext nneg i32 %0 to i64   ; 3 uses
  %i.dh = sub nsw i64 %wide.trip.count262, %indvars.iv
  %xtraiter316 = and i64 %i.dh, 3                 ; 2 uses
  %lcmp.mod317.not = icmp eq i64 %xtraiter316, 0
  br i1 %lcmp.mod317.not, label %.lr.ph224.prol.loopexit, label %.lr.ph224.prol

.lr.ph224.prol:                                   ; preds = %.lr.ph224.preheader, %.lr.ph224.prol
  %indvars.iv259.prol = phi i64 [ %indvars.iv.next260.prol, %.lr.ph224.prol ], [ %indvars.iv, %.lr.ph224.preheader ] ; 4 uses
  %.0161223.prol = phi float [ %i.dt, %.lr.ph224.prol ], [ 0.000000e+00, %.lr.ph224.preheader ]
  %prol.iter318 = phi i64 [ %prol.iter318.next, %.lr.ph224.prol ], [ 0, %.lr.ph224.preheader ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv259.prol
  %i.dj = load float, ptr %i.di, align 4, !tbaa !69
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv259.prol
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !69
  %i.dm = fneg float %i.dl
end_hunk_0
begin_hunk_1_@_Z12analyse_corriPfS_S_S_S_S_S_ff:bb.a
  %i.hz = fptrunc double %i.gx to float           ; 2 uses
  %i.ia = fpext float %i.hz to double
  %i.ib = fmul float %i.hw, %i.hz
  %i.ic = fpext float %i.ib to double
  %i.id = fdiv double %i.ic, f0x3FD989BA751137D3
  %i.ie = tail call double @log(double noundef %i.id) #24
  %i.if = fmul double %i.ie, %i.ia
  %i.ig = fptrunc double %i.if to float
  %i.ih = fpext float %i.ig to double
  br label %_ZL7calc_dgff.exit176

_ZL7calc_dgff.exit176:                            ; preds = %_ZL7calc_dgff.exit, %bb.f
  %.0.i175 = phi double [ %i.ih, %bb.f ], [ -6.660000e+02, %_ZL7calc_dgff.exit ]
  %i.ii = fpext float %i.hv to double
  %i.ij = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %i.ht, double noundef %i.hr, double noundef %i.hx, double noundef %.0.i175, double noundef %i.ii) ; 0 uses
  br label %bb.i

.lr.ph220:                                        ; preds = %.lr.ph220.prol.loopexit, %.lr.ph220
  %indvars.iv252 = phi i64 [ %indvars.iv.next253.3, %.lr.ph220 ], [ %indvars.iv252.unr, %.lr.ph220.prol.loopexit ] ; 7 uses
  %.1219 = phi float [ %i.kf, %.lr.ph220 ], [ %.1219.unr, %.lr.ph220.prol.loopexit ]
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv252
  %i.il = load float, ptr %i.ik, align 4, !tbaa !69
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv252
  %i.in = load float, ptr %i.im, align 4, !tbaa !69
  %i.io = fneg float %i.in
  %i.ip = fmul float %i.cr, %i.io
  %i.iq = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.il, float %i.ip)
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv252
  %i.is = load float, ptr %i.ir, align 4, !tbaa !69
  %i.it = fsub float %i.iq, %i.is                 ; 2 uses
  %i.iu = fmul float %i.it, %i.it
  %i.iv = fadd float %.1219, %i.iu
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1 ; 3 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next253
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !69
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next253
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !69
  %i.ja = fneg float %i.iz
  %i.jb = fmul float %i.cr, %i.ja
  %i.jc = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.ix, float %i.jb)
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next253
  %i.je = load float, ptr %i.jd, align 4, !tbaa !69
  %i.jf = fsub float %i.jc, %i.je                 ; 2 uses
  %i.jg = fmul float %i.jf, %i.jf
  %i.jh = fadd float %i.iv, %i.jg
  %indvars.iv.next253.1 = add nuw nsw i64 %indvars.iv252, 2 ; 3 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next253.1
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !69
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next253.1
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !69
  %i.jm = fneg float %i.jl
  %i.jn = fmul float %i.cr, %i.jm
  %i.jo = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.jj, float %i.jn)
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next253.1
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !69
  %i.jr = fsub float %i.jo, %i.jq                 ; 2 uses
  %i.js = fmul float %i.jr, %i.jr
  %i.jt = fadd float %i.jh, %i.js
  %indvars.iv.next253.2 = add nuw nsw i64 %indvars.iv252, 3 ; 3 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next253.2
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !69
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next253.2
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !69
  %i.jy = fneg float %i.jx
  %i.jz = fmul float %i.cr, %i.jy
  %i.ka = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.jv, float %i.jz)
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next253.2
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !69
  %i.kd = fsub float %i.ka, %i.kc                 ; 2 uses
  %i.ke = fmul float %i.kd, %i.kd
  %i.kf = fadd float %i.jt, %i.ke                 ; 2 uses
  %indvars.iv.next253.3 = add nuw nsw i64 %indvars.iv252, 4 ; 2 uses
  %exitcond256.not.3 = icmp eq i64 %indvars.iv.next253.3, %wide.trip.count255
  br i1 %exitcond256.not.3, label %._crit_edge.loopexit, label %.lr.ph220, !llvm.loop !201

._crit_edge.loopexit:                             ; preds = %.lr.ph220, %.lr.ph220.prol.loopexit
  %.lcssa303 = phi float [ %.lcssa303.unr, %.lr.ph220.prol.loopexit ], [ %i.kf, %.lr.ph220 ]
  %i.kg = fpext float %.lcssa303 to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader198
  %.1.lcssa = phi double [ 0.000000e+00, %.preheader198 ], [ %i.kg, %._crit_edge.loopexit ] ; 2 uses
  %i.kh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %.1.lcssa, double noundef 0.000000e+00) ; 0 uses
  %puts168 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.ki = fdiv float 1.000000e+00, %i.cn          ; 3 uses
  %i.kj = fpext float %i.ki to double
  %i.kk = fcmp ugt float %i.ki, 0.000000e+00
  br i1 %i.kk, label %bb.g, label %_ZL7calc_dgff.exit178

bb.g:                                             ; preds = %._crit_edge
  %i.kl = fmul double %i.bz, f0x3F81072C483AF26D
  %i.km = fptrunc double %i.kl to float           ; 2 uses
  %i.kn = fpext float %i.km to double
  %i.ko = fmul float %i.ki, %i.km
  %i.kp = fpext float %i.ko to double
  %i.kq = fdiv double %i.kp, f0x3FD989BA751137D3
  %i.kr = tail call double @log(double noundef %i.kq) #24
  %i.ks = fmul double %i.kr, %i.kn
  %i.kt = fptrunc double %i.ks to float
  %i.ku = fpext float %i.kt to double
  br label %_ZL7calc_dgff.exit178

_ZL7calc_dgff.exit178:                            ; preds = %._crit_edge, %bb.g
  %.0.i177 = phi double [ %i.ku, %bb.g ], [ -6.660000e+02, %._crit_edge ]
  %i.kv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %i.co, double noundef %i.kj, double noundef %.0.i177, double noundef %.1.lcssa) ; 0 uses
  %i.kw = fpext float %i.cr to double
  %i.kx = fdiv float 1.000000e+00, %i.cr          ; 3 uses
  %i.ky = fpext float %i.kx to double
  %i.kz = fcmp ugt float %i.kx, 0.000000e+00
  br i1 %i.kz, label %bb.h, label %_ZL7calc_dgff.exit180

bb.h:                                             ; preds = %_ZL7calc_dgff.exit178
  %i.la = fmul double %i.bz, f0x3F81072C483AF26D
  %i.lb = fptrunc double %i.la to float           ; 2 uses
  %i.lc = fpext float %i.lb to double
  %i.ld = fmul float %i.kx, %i.lb
  %i.le = fpext float %i.ld to double
  %i.lf = fdiv double %i.le, f0x3FD989BA751137D3
  %i.lg = tail call double @log(double noundef %i.lf) #24
  %i.lh = fmul double %i.lg, %i.lc
  %i.li = fptrunc double %i.lh to float
  %i.lj = fpext float %i.li to double
  br label %_ZL7calc_dgff.exit180

_ZL7calc_dgff.exit180:                            ; preds = %_ZL7calc_dgff.exit178, %bb.h
  %.0.i179 = phi double [ %i.lj, %bb.h ], [ -6.660000e+02, %_ZL7calc_dgff.exit178 ]
  %i.lk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %i.kw, double noundef %i.ky, double noundef %.0.i179) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZL7calc_dgff.exit176, %_ZL7calc_dgff.exit180, %.critedge._crit_edge
  %i.ll = fcmp ogt double %i.ce, 0.000000e+00
  br i1 %i.ll, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.lm = fmul double %.0156.lcssa, 2.000000e+00
  %i.ln = fdiv double %i.lm, %i.ce
  %i.lo = fptrunc double %i.ln to float           ; 2 uses
  %i.lp = fpext float %i.lo to double
  %i.lq = select i1 %spec.select, ptr @.str.19, ptr @.str.20 ; 2 uses
  %i.lr = fdiv float 1.000000e+00, %i.lo          ; 3 uses
  %i.ls = fpext float %i.lr to double
  %i.lt = fcmp ugt float %i.lr, 0.000000e+00
  br i1 %i.lt, label %bb.k, label %_ZL7calc_dgff.exit182

bb.k:                                             ; preds = %bb.j
  %i.lu = fmul double %i.bz, f0x3F81072C483AF26D
  %i.lv = fptrunc double %i.lu to float           ; 2 uses
  %i.lw = fpext float %i.lv to double
  %i.lx = fmul float %i.lr, %i.lv
  %i.ly = fpext float %i.lx to double
  %i.lz = fdiv double %i.ly, f0x3FD989BA751137D3
  %i.ma = tail call double @log(double noundef %i.lz) #24
  %i.mb = fmul double %i.ma, %i.lw
  %i.mc = fptrunc double %i.mb to float
  %i.md = fpext float %i.mc to double
  br label %_ZL7calc_dgff.exit182

_ZL7calc_dgff.exit182:                            ; preds = %bb.j, %bb.k
  %.0.i181 = phi double [ %i.md, %bb.k ], [ -6.660000e+02, %bb.j ]
  %i.me = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, double noundef %i.lp, ptr noundef nonnull %i.lq, double noundef %i.ls, double noundef %.0.i181) ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.mf = extractelement <4 x double> %i.by, i64 0
  %i.mg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, double noundef %i.ce, double noundef %i.cf, double noundef %i.mf, double noundef %.0156.lcssa, double noundef %.0.lcssa, double noundef %i.cb) ; 0 uses
  %.pre = select i1 %spec.select, ptr @.str.19, ptr @.str.20
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZL7calc_dgff.exit182
  %.pre-phi = phi ptr [ %.pre, %bb.l ], [ %i.lq, %_ZL7calc_dgff.exit182 ] ; 2 uses
  %i.mh = zext nneg i32 %0 to i64
  %i.mi = getelementptr [4 x i8], ptr %1, i64 %i.mh
  %i.mj = getelementptr i8, ptr %i.mi, i64 -4
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !69
  %i.ml = load float, ptr %1, align 4, !tbaa !69
  %i.mm = fsub float %i.mk, %i.ml
  %i.mn = fmul float %i.mm, 5.000000e-01
  %i.mo = call noundef float @_Z17evaluate_integraliPKfS0_S0_fPf(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef null, float noundef %i.mn, ptr noundef nonnull %i.a) ; 4 uses
  %i.mp = fdiv float 1.000000e+00, %i.mo
  %i.mq = fpext float %i.mp to double
  %i.mr = fpext float %i.mo to double
  %i.ms = fcmp ugt float %i.mo, 0.000000e+00
  br i1 %i.ms, label %bb.n, label %.lr.ph228.preheader

bb.n:                                             ; preds = %bb.m
  %i.mt = fmul double %i.bz, f0x3F81072C483AF26D
  %i.mu = fptrunc double %i.mt to float           ; 2 uses
  %i.mv = fpext float %i.mu to double
  %i.mw = fmul float %i.mo, %i.mu
  %i.mx = fpext float %i.mw to double
  %i.my = fdiv double %i.mx, f0x3FD989BA751137D3
  %i.mz = call double @log(double noundef %i.my) #24
  %i.na = fmul double %i.mz, %i.mv
  %i.nb = fptrunc double %i.na to float
  %i.nc = fpext float %i.nb to double
  br label %.lr.ph228.preheader

.lr.ph228.preheader:                              ; preds = %bb.n, %bb.m
  %.0.i183 = phi double [ %i.nc, %bb.n ], [ -6.660000e+02, %bb.m ]
  %i.nd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, double noundef %i.mq, ptr noundef nonnull %.pre-phi, double noundef %i.mr, double noundef %.0.i183) ; 0 uses
  br label %.lr.ph228

.lr.ph228:                                        ; preds = %.lr.ph228.preheader, %bb.p
  %indvars.iv264 = phi i64 [ 0, %.lr.ph228.preheader ], [ %indvars.iv.next265, %bb.p ] ; 4 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv264 ; 2 uses
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !69 ; 3 uses
  %i.ng = fcmp ogt float %i.nf, f0x3EBC5AB2
  br i1 %i.ng, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph228
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 4
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !69
  %i.nj = fcmp ugt float %i.ni, f0x3EBC5AB2
  br i1 %i.nj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph228, %bb.o
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 1 ; 2 uses
  %exitcond268.not = icmp eq i64 %indvars.iv.next265, %wide.trip.count
  br i1 %exitcond268.not, label %.critedge173, label %.lr.ph228, !llvm.loop !202

bb.q:                                             ; preds = %bb.o
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv264
  %i.nl = load float, ptr %i.nk, align 4, !tbaa !69 ; 2 uses
  %i.nm = load float, ptr %1, align 4, !tbaa !69
  %i.nn = fsub float %i.nl, %i.nm
  %i.no = fsub nnan float f0x3EBC5AB2, %i.nf
  %i.np = add nuw i64 %indvars.iv264, 1
  %i.nq = and i64 %i.np, 4294967295               ; 2 uses
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.nq
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !69
  %i.nt = fsub float %i.ns, %i.nl
  %i.nu = fmul float %i.no, %i.nt
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.nq
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !69
  %i.nx = fsub float %i.nw, %i.nf
  %i.ny = fdiv float %i.nu, %i.nx
  %i.nz = fadd float %i.nn, %i.ny                 ; 4 uses
  %i.oa = fdiv float 1.000000e+00, %i.nz
  %i.ob = fpext float %i.oa to double
  %i.oc = fpext float %i.nz to double
  %i.od = fcmp ugt float %i.nz, 0.000000e+00
  br i1 %i.od, label %bb.r, label %_ZL7calc_dgff.exit186

bb.r:                                             ; preds = %bb.q
  %i.oe = fmul double %i.bz, f0x3F81072C483AF26D
  %i.of = fptrunc double %i.oe to float           ; 2 uses
  %i.og = fpext float %i.of to double
  %i.oh = fmul float %i.nz, %i.of
  %i.oi = fpext float %i.oh to double
  %i.oj = fdiv double %i.oi, f0x3FD989BA751137D3
  %i.ok = call double @log(double noundef %i.oj) #24
  %i.ol = fmul double %i.ok, %i.og
  %i.om = fptrunc double %i.ol to float
  %i.on = fpext float %i.om to double
  br label %_ZL7calc_dgff.exit186

_ZL7calc_dgff.exit186:                            ; preds = %bb.q, %bb.r
  %.0.i185 = phi double [ %i.on, %bb.r ], [ -6.660000e+02, %bb.q ]
  %i.oo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, double noundef %i.ob, double noundef %i.oc, ptr noundef nonnull %.pre-phi, double noundef %.0.i185) ; 0 uses
  br label %.critedge173

.critedge171:                                     ; preds = %bb.c, %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %.critedge173

.critedge173:                                     ; preds = %bb.p, %_ZL7calc_dgff.exit186, %.critedge171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #14

declare noundef float @_Z17evaluate_integraliPKfS0_S0_fPf(i32 noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z18compute_derivativeiPKfS0_Pf(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #16 {
bb.a:
  %i.a = add i32 %0, -1                           ; 2 uses
  %i.b = icmp sgt i32 %0, 2
  br i1 %i.b, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 5 uses
  %i.c = add nsw i64 %wide.trip.count, -1         ; 7 uses
  %min.iters.check = icmp ult i64 %i.c, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %3, i64 4      ; 2 uses
  %i.d = shl nuw nsw i64 %wide.trip.count, 2      ; 2 uses
  %scevgep24 = getelementptr i8, ptr %3, i64 %i.d ; 2 uses
  %i.e = add nuw nsw i64 %i.d, 4                  ; 2 uses
  %scevgep25 = getelementptr i8, ptr %2, i64 %i.e
  %scevgep26 = getelementptr i8, ptr %1, i64 %i.e
  %bound0 = icmp ult ptr %scevgep, %scevgep25
  %bound1 = icmp ult ptr %2, %scevgep24
  %found.conflict = and i1 %bound0, %bound1
  %bound027 = icmp ult ptr %scevgep, %scevgep26
  %bound128 = icmp ult ptr %1, %scevgep24
  %found.conflict29 = and i1 %bound027, %bound128
  %conflict.rdx = or i1 %found.conflict, %found.conflict29
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check30 = icmp ult i64 %i.c, 16
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %i.c, 12
  %n.vec = and i64 %i.c, -16                      ; 4 uses
  %i.g = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.h = or disjoint i64 %index, 2                ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %wide.load = load <8 x float>, ptr %i.i, align 4, !tbaa !69, !alias.scope !211
  %wide.load31 = load <8 x float>, ptr %i.j, align 4, !tbaa !69, !alias.scope !211
  %i.k = getelementptr inbounds [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %wide.load32 = load <8 x float>, ptr %i.k, align 4, !tbaa !69, !alias.scope !211
  %wide.load33 = load <8 x float>, ptr %i.l, align 4, !tbaa !69, !alias.scope !211
  %i.m = fsub <8 x float> %wide.load, %wide.load32
  %i.n = fsub <8 x float> %wide.load31, %wide.load33
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.h ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %wide.load34 = load <8 x float>, ptr %i.o, align 4, !tbaa !69, !alias.scope !212
  %wide.load35 = load <8 x float>, ptr %i.p, align 4, !tbaa !69, !alias.scope !212
  %i.q = getelementptr inbounds [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %wide.load36 = load <8 x float>, ptr %i.q, align 4, !tbaa !69, !alias.scope !212
  %wide.load37 = load <8 x float>, ptr %i.r, align 4, !tbaa !69, !alias.scope !212
  %i.s = fsub <8 x float> %wide.load34, %wide.load36
  %i.t = fsub <8 x float> %wide.load35, %wide.load37
  %i.u = fdiv <8 x float> %i.m, %i.s
  %i.v = fdiv <8 x float> %i.n, %i.t
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  store <8 x float> %i.u, ptr %i.x, align 4, !tbaa !69, !alias.scope !213, !noalias !214
  store <8 x float> %i.v, ptr %i.y, align 4, !tbaa !69, !alias.scope !213, !noalias !214
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !207

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !85

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec38 = and i64 %i.c, -4                     ; 3 uses
  %i.aa = or disjoint i64 %n.vec38, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index39 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next44, %vec.epilog.vector.body ] ; 5 uses
  %i.ab = or disjoint i64 %index39, 2             ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ab
  %wide.load40 = load <4 x float>, ptr %i.ac, align 4, !tbaa !69, !alias.scope !211
  %i.ad = getelementptr inbounds [4 x i8], ptr %2, i64 %index39
  %wide.load41 = load <4 x float>, ptr %i.ad, align 4, !tbaa !69, !alias.scope !211
  %i.ae = fsub <4 x float> %wide.load40, %wide.load41
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ab
  %wide.load42 = load <4 x float>, ptr %i.af, align 4, !tbaa !69, !alias.scope !212
  %i.ag = getelementptr inbounds [4 x i8], ptr %1, i64 %index39
  %wide.load43 = load <4 x float>, ptr %i.ag, align 4, !tbaa !69, !alias.scope !212
  %i.ah = fsub <4 x float> %wide.load42, %wide.load43
  %i.ai = fdiv <4 x float> %i.ae, %i.ah
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index39
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store <4 x float> %i.ai, ptr %i.ak, align 4, !tbaa !69, !alias.scope !213, !noalias !214
  %index.next44 = add nuw i64 %index39, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next44, %n.vec38
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !208

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n45 = icmp eq i64 %i.c, %n.vec38
  br i1 %cmp.n45, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.g, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ] ; 4 uses
  %i.am = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.am, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 4 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.prol
  %i.ao = load float, ptr %i.an, align 4, !tbaa !69
  %i.ap = add nsw i64 %indvars.iv.prol, -1        ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ap
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !69
  %i.as = fsub float %i.ao, %i.ar
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.prol
  %i.au = load float, ptr %i.at, align 4, !tbaa !69
end_hunk_1
begin_hunk_2_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !23   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !21
  %i.z = load i64, ptr %i.t, align 8, !tbaa !22
  store i64 %i.z, ptr %i.r, align 8, !tbaa !22
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !23
  store ptr %i.t, ptr %2, align 8, !tbaa !21
  store i64 0, ptr %i.ab, align 8, !tbaa !23
  store i8 0, ptr %i.t, align 8, !tbaa !22
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !17, !alias.scope !569, !noalias !570
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !21, !alias.scope !570, !noalias !569 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !23, !alias.scope !570, !noalias !569 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !571
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !21, !alias.scope !569, !noalias !570
  %i.al = load i64, ptr %i.af, align 8, !tbaa !22, !alias.scope !570, !noalias !569
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !22, !alias.scope !569, !noalias !570
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !23, !alias.scope !570, !noalias !569
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !23, !alias.scope !569, !noalias !570
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !21, !alias.scope !570, !noalias !569
  store i64 0, ptr %i.an, align 8, !tbaa !23, !alias.scope !570, !noalias !569
  store i8 0, ptr %i.af, align 8, !tbaa !22, !alias.scope !570, !noalias !569
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !565

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !17, !alias.scope !572, !noalias !573
  %i.at = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !21, !alias.scope !573, !noalias !572 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !23, !alias.scope !573, !noalias !572 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !574
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !21, !alias.scope !572, !noalias !573
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !22, !alias.scope !573, !noalias !572
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !22, !alias.scope !572, !noalias !573
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !23, !alias.scope !573, !noalias !572
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.bb = phi i64 [ %i.ax, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !23, !alias.scope !572, !noalias !573
  store ptr %i.au, ptr %.0911.i.i.i19, align 8, !tbaa !21, !alias.scope !573, !noalias !572
  store i64 0, ptr %i.bc, align 8, !tbaa !23, !alias.scope !573, !noalias !572
  store i8 0, ptr %i.au, align 8, !tbaa !22, !alias.scope !573, !noalias !572
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !565

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !190
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #32
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !188
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !189
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !190
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_gmx_hbond.cpp() #28 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 16), ptr @_ZL11hxtypenamesB5cxx11, align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 16), ptr noundef nonnull align 1 dereferenceable(3) @.str, i64 3, i1 false)
  store i64 3, ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 8), align 8, !tbaa !23
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 19), align 1, !tbaa !22
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 32), align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 48), ptr noundef nonnull align 1 dereferenceable(5) @.str.1, i64 5, i1 false)
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 40), align 8, !tbaa !23
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 53), align 1, !tbaa !22
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 80), ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 64), align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 80), ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i64 5, i1 false)
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 72), align 8, !tbaa !23
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 85), align 1, !tbaa !22
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 96), align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 112), ptr noundef nonnull align 1 dereferenceable(5) @.str.3, i64 5, i1 false)
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 104), align 8, !tbaa !23
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 117), align 1, !tbaa !22
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 144), ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 128), align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 144), ptr noundef nonnull align 1 dereferenceable(5) @.str.4, i64 5, i1 false)
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 136), align 8, !tbaa !23
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 149), align 1, !tbaa !22
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 176), ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 160), align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 176), ptr noundef nonnull align 1 dereferenceable(5) @.str.5, i64 5, i1 false)
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 168), align 8, !tbaa !23
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 181), align 1, !tbaa !22
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 208), ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 192), align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 208), ptr noundef nonnull align 1 dereferenceable(5) @.str.6, i64 5, i1 false)
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 200), align 8, !tbaa !23
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL11hxtypenamesB5cxx11, i64 213), align 1, !tbaa !22
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm7EED2Ev, ptr nonnull @_ZL11hxtypenamesB5cxx11, ptr nonnull @__dso_handle) #24 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #29

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias returned writeonly, ptr noalias readonly captures(none)) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #14

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nofree nounwind }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #19 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #20 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #21 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #22 = { nounwind memory(none) }
attributes #23 = { convergent nounwind }
attributes #24 = { nounwind }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #27 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #28 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { noreturn }
attributes #32 = { builtin nounwind }
attributes #33 = { noreturn nounwind }
attributes #34 = { builtin allocsize(0) }
attributes #35 = { cold nounwind }
attributes #36 = { cold }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !81}
!1 = distinct !{!1, !81}
!2 = distinct !{!2, !81}
!3 = distinct !{!3, !81}
!4 = distinct !{!4, !81}
!5 = !{i32 7, !"openmp", i32 51}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"long", !10, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0, !18, i64 8, !10, i64 16}
!21 = !{!20, !15, i64 0}
!22 = !{!10, !10, i64 0}
!23 = !{!20, !18, i64 8}
!24 = !{!"bool", !10, i64 0}
!25 = !{!"p1 int", !14, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !26, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !27, i64 0}
!29 = !{!"_ZTSSt6vectorIiSaIiEE", !28, i64 0}
!30 = !{!"p1 _ZTSSt5arrayIiLm4EE", !14, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseISt5arrayIiLm4EESaIS1_EE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!32 = !{!"_ZTSNSt12_Vector_baseISt5arrayIiLm4EESaIS1_EE12_Vector_implE", !31, i64 0}
!33 = !{!"_ZTSSt12_Vector_baseISt5arrayIiLm4EESaIS1_EE", !32, i64 0}
!34 = !{!"_ZTSSt6vectorISt5arrayIiLm4EESaIS1_EE", !33, i64 0}
!35 = !{!"p1 float", !14, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!37 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !36, i64 0}
!38 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !37, i64 0}
!39 = !{!"_ZTSSt6vectorIfSaIfEE", !38, i64 0}
!40 = !{!"p1 _ZTSN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLS1_3EEE", !14, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseIN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLS2_3EEESaIS3_EE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!42 = !{!"_ZTSNSt12_Vector_baseIN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLS2_3EEESaIS3_EE12_Vector_implE", !41, i64 0}
!43 = !{!"_ZTSSt12_Vector_baseIN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLS2_3EEESaIS3_EE", !42, i64 0}
!44 = !{!"_ZTSSt6vectorIN3gmx16EnumerationArrayI21HydrogenExchangeGroupiLS2_3EEESaIS3_EE", !43, i64 0}
!45 = !{!"p1 _ZTSSt5arrayIiLm7EE", !14, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseISt5arrayIiLm7EESaIS1_EE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!47 = !{!"_ZTSNSt12_Vector_baseISt5arrayIiLm7EESaIS1_EE12_Vector_implE", !46, i64 0}
!48 = !{!"_ZTSSt12_Vector_baseISt5arrayIiLm7EESaIS1_EE", !47, i64 0}
!49 = !{!"_ZTSSt6vectorISt5arrayIiLm7EESaIS1_EE", !48, i64 0}
!50 = !{!"_ZTS8t_donors", !29, i64 0, !29, i64 24, !29, i64 48, !29, i64 72, !34, i64 96, !34, i64 120}
!51 = !{!"_ZTS11t_acceptors", !29, i64 0, !29, i64 24, !29, i64 48}
!52 = !{!"any p2 pointer", !14, i64 0}
!53 = !{!"any p3 pointer", !52, i64 0}
!54 = !{!"_ZTS16HydrogenBondData", !24, i64 0, !24, i64 1, !11, i64 4, !11, i64 8, !29, i64 16, !29, i64 40, !34, i64 64, !39, i64 88, !44, i64 112, !49, i64 136, !50, i64 160, !51, i64 304, !11, i64 376, !11, i64 380, !53, i64 384}
!55 = !{!54, !24, i64 0}
!56 = !{!54, !24, i64 1}
!57 = !{!54, !11, i64 4}
!58 = !{!54, !11, i64 8}
!59 = !{i8 0, i8 2}
!60 = !{}
!61 = !{!11, !11, i64 0}
!62 = !{!54, !53, i64 384}
!63 = !{!36, !35, i64 8}
!64 = !{!36, !35, i64 0}
!65 = !{!36, !35, i64 16}
!66 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!67 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!68 = !{!"float", !10, i64 0}
!69 = !{!68, !68, i64 0}
!70 = !{!26, !25, i64 0}
!71 = !{!26, !25, i64 16}
!72 = !{!46, !45, i64 0}
!73 = !{!46, !45, i64 16}
!74 = !{!41, !40, i64 0}
!75 = !{!41, !40, i64 16}
!76 = !{!31, !30, i64 0}
!77 = !{!31, !30, i64 16}
!78 = !{!26, !25, i64 8}
!79 = !{!31, !30, i64 8}
!80 = !{i64 0, i64 16, !22}
!81 = !{!"llvm.loop.mustprogress"}
!82 = !{!"llvm.loop.unroll.disable"}
!83 = !{!"llvm.loop.isvectorized", i32 1}
!84 = !{!"llvm.loop.unroll.runtime.disable"}
!85 = !{!"branch_weights", i32 4, i32 12}
!86 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !86, i64 0, !86, i64 8, !86, i64 16}
!88 = !{!24, !24, i64 0}
!89 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!90 = !{!89, !89, i64 0}
!91 = !{!"p2 int", !52, i64 0}
!92 = !{!91, !91, i64 0}
!93 = !{!15, !15, i64 0}
!94 = !{!"p1 _ZTS16gmx_output_env_t", !14, i64 0}
!95 = !{!94, !94, i64 0}
!96 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !14, i64 0}
!97 = !{!96, !96, i64 0}
!98 = !{!"p2 omnipotent char", !52, i64 0}
!99 = !{!"p1 _ZTS9t_iparams", !14, i64 0}
!100 = !{!"_ZTSN3gmx16EnumerationArrayI19InteractionFunction7t_ilistLS1_95EEE", !10, i64 0}
!101 = !{!"_ZTS6t_idef", !11, i64 0, !11, i64 4, !14, i64 8, !99, i64 16, !68, i64 24, !99, i64 32, !99, i64 40, !100, i64 48, !11, i64 2328}
!102 = !{!"p1 _ZTS6t_atom", !14, i64 0}
!103 = !{!"p3 omnipotent char", !53, i64 0}
!104 = !{!"p1 _ZTS9t_resinfo", !14, i64 0}
!105 = !{!"p1 _ZTS9t_pdbinfo", !14, i64 0}
!106 = !{!"_ZTS7t_atoms", !11, i64 0, !102, i64 8, !103, i64 16, !103, i64 24, !103, i64 32, !11, i64 40, !104, i64 48, !105, i64 56, !24, i64 64, !24, i64 65, !24, i64 66, !24, i64 67, !24, i64 68}
!107 = !{!"_ZTS7t_block", !11, i64 0, !25, i64 8, !11, i64 16}
!108 = !{!"p1 _ZTS8t_symbuf", !14, i64 0}
!109 = !{!"_ZTS8t_symtab", !11, i64 0, !108, i64 8}
!110 = !{!"_ZTS10t_topology", !98, i64 0, !101, i64 8, !106, i64 2344, !107, i64 2416, !24, i64 2440, !109, i64 2448}
!111 = !{!110, !11, i64 2344}
!112 = !{!25, !25, i64 0}
!113 = !{!110, !103, i64 2360}
!114 = !{!98, !98, i64 0}
!115 = !{!52, !52, i64 0}
!116 = !{!14, !14, i64 0}
!117 = !{!"double", !10, i64 0}
!118 = !{!"p1 _ZTSSt6vectorIS_I16HydrogenGridCellSaIS0_EESaIS2_EE", !14, i64 0}
!119 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_I16HydrogenGridCellSaIS1_EESaIS3_EESaIS5_EE17_Vector_impl_dataE", !118, i64 0, !118, i64 8, !118, i64 16}
!120 = !{!119, !118, i64 8}
!121 = !{!119, !118, i64 0}
!122 = !{!119, !118, i64 16}
!123 = !{!"p1 _ZTSSt6vectorI16HydrogenGridCellSaIS0_EE", !14, i64 0}
!124 = !{!"_ZTSNSt12_Vector_baseISt6vectorI16HydrogenGridCellSaIS1_EESaIS3_EE17_Vector_impl_dataE", !123, i64 0, !123, i64 8, !123, i64 16}
!125 = !{!124, !123, i64 16}
!126 = !{!124, !123, i64 0}
!127 = !{!124, !123, i64 8}
!128 = !{!"p1 _ZTS16HydrogenGridCell", !14, i64 0}
!129 = !{!"_ZTSNSt12_Vector_baseI16HydrogenGridCellSaIS0_EE17_Vector_impl_dataE", !128, i64 0, !128, i64 8, !128, i64 16}
!130 = !{!129, !128, i64 8}
!131 = !{!129, !128, i64 0}
!132 = !{!129, !128, i64 16}
!133 = !{!"p1 _ZTS16HydrogenBondData", !14, i64 0}
!134 = !{!"_ZTSNSt12_Vector_baseI16HydrogenBondDataSaIS0_EE17_Vector_impl_dataE", !133, i64 0, !133, i64 8, !133, i64 16}
!135 = !{!134, !133, i64 16}
!136 = !{!134, !133, i64 0}
!137 = !{!134, !133, i64 8}
!138 = !{!30, !30, i64 0}
!139 = !{!35, !35, i64 0}
!140 = !{!40, !40, i64 0}
!141 = !{!45, !45, i64 0}
!142 = !{!"p1 _ZTS11t_trxstatus", !14, i64 0}
!143 = !{!142, !142, i64 0}
!144 = !{!54, !11, i64 376}
!145 = !{!54, !11, i64 380}
!146 = !{!"_ZTS7t_hbond", !10, i64 0, !11, i64 16, !11, i64 20, !11, i64 24, !91, i64 32, !91, i64 40}
!147 = !{!146, !11, i64 16}
!148 = !{!146, !11, i64 20}
!149 = !{!146, !91, i64 32}
end_hunk_2
