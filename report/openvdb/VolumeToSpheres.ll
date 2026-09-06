Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/VolumeToSpheres?download=true
inline.NumInlined: 56869
inline.NumDeleted: 18802
loop-unroll.NumCompletelyUnrolled: 220
loop-unroll.NumRuntimeUnrolled: 172
loop-unroll.NumUnrolled: 790
begin_hunk_0_@_ZN7openvdb5v13_05tools23volume_to_mesh_internal20computeWeightedPointERKNS0_4math4Vec3IdEERKSt5arrayIdLm8EEhhd:_ZNSt12_Vector_baseIN7openvdb5v13_04math4Vec3IdEESaIS4_EE11_M_allocateEm.exit.i
  br i1 %i.gj, label %bb.ai, label %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i181

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #29
          to label %.noexc187 unwind label %bb.b

.noexc187:                                        ; preds = %bb.ai
  unreachable

_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i181: ; preds = %bb.ah
  %i.gk = sdiv exact i64 %i.gi, 24                ; 3 uses
  %.sroa.speculated.i.i.i182 = tail call i64 @llvm.umax.i64(i64 %i.gk, i64 1)
  %i.gl = add nsw i64 %.sroa.speculated.i.i.i182, %i.gk ; 2 uses
  %i.gm = icmp ult i64 %i.gl, %i.gk
  %i.gn = tail call i64 @llvm.umin.i64(i64 %i.gl, i64 384307168202282325)
  %i.go = select i1 %i.gm, i64 384307168202282325, i64 %i.gn ; 3 uses
  %.not.i.i.i183 = icmp ne i64 %i.go, 0
  tail call void @llvm.assume(i1 %.not.i.i.i183)
  %i.gp = mul nuw nsw i64 %i.go, 24
  %i.gq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gp) #30
          to label %.noexc188 unwind label %bb.b  ; 4 uses

.noexc188:                                        ; preds = %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i181
  %i.gr = getelementptr inbounds i8, ptr %i.gq, i64 %i.gi ; 4 uses
  store double 1.000000e+00, ptr %i.gr, align 8
  %.sroa.44.0..sroa_idx335 = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store double %i.ge, ptr %.sroa.44.0..sroa_idx335, align 8
  %.sroa.59.0..sroa_idx383 = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  store double 0.000000e+00, ptr %.sroa.59.0..sroa_idx383, align 8
  %i.gs = icmp sgt i64 %i.gi, 0
  br i1 %i.gs, label %bb.aj, label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i186

bb.aj:                                            ; preds = %.noexc188
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gq, ptr nonnull align 8 %.sroa.0393.9, i64 %i.gi, i1 false)
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i186

_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i186: ; preds = %bb.aj, %.noexc188
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0393.9, i64 noundef %i.gi) #31
  %i.gu = getelementptr inbounds nuw [24 x i8], ptr %i.gq, i64 %i.go
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit189

_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit189: ; preds = %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i186, %bb.ag, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit179
  %.sroa.0393.10 = phi ptr [ %.sroa.0393.9, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit179 ], [ %i.gq, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i186 ], [ %.sroa.0393.9, %bb.ag ] ; 7 uses
  %.sroa.39.9 = phi ptr [ %.sroa.39.8, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit179 ], [ %i.gt, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i186 ], [ %i.gf, %bb.ag ] ; 9 uses
  %.sroa.94.10 = phi ptr [ %.sroa.94.9, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit179 ], [ %i.gu, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i186 ], [ %.sroa.94.9, %bb.ag ] ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.d, i64 11
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !548
  %i.gx = icmp eq i8 %i.gw, %4
  br i1 %i.gx, label %bb.ak, label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit199

bb.ak:                                            ; preds = %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit189
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !701 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !701
  %i.hc = fsub double %5, %i.gz
  %i.hd = fsub double %i.hb, %i.gz
  %i.he = fdiv double %i.hc, %i.hd                ; 2 uses
  %.not.i190 = icmp eq ptr %.sroa.39.9, %.sroa.94.10
  br i1 %.not.i190, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store double 1.000000e+00, ptr %.sroa.39.9, align 8
  %.sroa.44.0..sroa_idx337 = getelementptr inbounds nuw i8, ptr %.sroa.39.9, i64 8
  store double %i.he, ptr %.sroa.44.0..sroa_idx337, align 8
  %.sroa.59.0..sroa_idx385 = getelementptr inbounds nuw i8, ptr %.sroa.39.9, i64 16
  store double 1.000000e+00, ptr %.sroa.59.0..sroa_idx385, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.39.9, i64 24
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit199

bb.am:                                            ; preds = %bb.ak
  %i.hg = ptrtoint ptr %.sroa.39.9 to i64
  %i.hh = ptrtoint ptr %.sroa.0393.10 to i64
  %i.hi = sub i64 %i.hg, %i.hh                    ; 6 uses
  %i.hj = icmp eq i64 %i.hi, 9223372036854775800
  br i1 %i.hj, label %bb.an, label %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i191

bb.an:                                            ; preds = %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #29
          to label %.noexc197 unwind label %bb.b

.noexc197:                                        ; preds = %bb.an
  unreachable

_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i191: ; preds = %bb.am
  %i.hk = sdiv exact i64 %i.hi, 24                ; 3 uses
  %.sroa.speculated.i.i.i192 = tail call i64 @llvm.umax.i64(i64 %i.hk, i64 1)
  %i.hl = add nsw i64 %.sroa.speculated.i.i.i192, %i.hk ; 2 uses
  %i.hm = icmp ult i64 %i.hl, %i.hk
  %i.hn = tail call i64 @llvm.umin.i64(i64 %i.hl, i64 384307168202282325)
  %i.ho = select i1 %i.hm, i64 384307168202282325, i64 %i.hn ; 3 uses
  %.not.i.i.i193 = icmp ne i64 %i.ho, 0
  tail call void @llvm.assume(i1 %.not.i.i.i193)
  %i.hp = mul nuw nsw i64 %i.ho, 24
  %i.hq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hp) #30
          to label %.noexc198 unwind label %bb.b  ; 4 uses

.noexc198:                                        ; preds = %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i191
  %i.hr = getelementptr inbounds i8, ptr %i.hq, i64 %i.hi ; 4 uses
  store double 1.000000e+00, ptr %i.hr, align 8
  %.sroa.44.0..sroa_idx339 = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store double %i.he, ptr %.sroa.44.0..sroa_idx339, align 8
  %.sroa.59.0..sroa_idx387 = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  store double 1.000000e+00, ptr %.sroa.59.0..sroa_idx387, align 8
  %i.hs = icmp sgt i64 %i.hi, 0
  br i1 %i.hs, label %bb.ao, label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i196

bb.ao:                                            ; preds = %.noexc198
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hq, ptr nonnull align 8 %.sroa.0393.10, i64 %i.hi, i1 false)
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i196

_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i196: ; preds = %bb.ao, %.noexc198
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0393.10, i64 noundef %i.hi) #31
  %i.hu = getelementptr inbounds nuw [24 x i8], ptr %i.hq, i64 %i.ho
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit199

_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit199: ; preds = %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i196, %bb.al, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit189
  %.sroa.0393.11 = phi ptr [ %.sroa.0393.10, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit189 ], [ %i.hq, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i196 ], [ %.sroa.0393.10, %bb.al ] ; 7 uses
  %.sroa.39.10 = phi ptr [ %.sroa.39.9, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit189 ], [ %i.ht, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i196 ], [ %i.hf, %bb.al ] ; 9 uses
  %.sroa.94.11 = phi ptr [ %.sroa.94.10, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit189 ], [ %i.hu, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i196 ], [ %.sroa.94.10, %bb.al ] ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !548
  %i.hx = icmp eq i8 %i.hw, %4
  br i1 %i.hx, label %bb.ap, label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit209

bb.ap:                                            ; preds = %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit199
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !701 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !701
  %i.ic = fsub double %5, %i.hz
  %i.id = fsub double %i.ib, %i.hz
  %i.ie = fdiv double %i.ic, %i.id                ; 2 uses
  %.not.i200 = icmp eq ptr %.sroa.39.10, %.sroa.94.11
  br i1 %.not.i200, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store double 0.000000e+00, ptr %.sroa.39.10, align 8
  %.sroa.44.0..sroa_idx341 = getelementptr inbounds nuw i8, ptr %.sroa.39.10, i64 8
  store double %i.ie, ptr %.sroa.44.0..sroa_idx341, align 8
  %.sroa.59.0..sroa_idx389 = getelementptr inbounds nuw i8, ptr %.sroa.39.10, i64 16
  store double 1.000000e+00, ptr %.sroa.59.0..sroa_idx389, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.39.10, i64 24
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit209

bb.ar:                                            ; preds = %bb.ap
  %i.ig = ptrtoint ptr %.sroa.39.10 to i64
  %i.ih = ptrtoint ptr %.sroa.0393.11 to i64
  %i.ii = sub i64 %i.ig, %i.ih                    ; 6 uses
  %i.ij = icmp eq i64 %i.ii, 9223372036854775800
  br i1 %i.ij, label %bb.as, label %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i201

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #29
          to label %.noexc207 unwind label %bb.b

.noexc207:                                        ; preds = %bb.as
  unreachable

_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i201: ; preds = %bb.ar
  %i.ik = sdiv exact i64 %i.ii, 24                ; 3 uses
  %.sroa.speculated.i.i.i202 = tail call i64 @llvm.umax.i64(i64 %i.ik, i64 1)
  %i.il = add nsw i64 %.sroa.speculated.i.i.i202, %i.ik ; 2 uses
  %i.im = icmp ult i64 %i.il, %i.ik
  %i.in = tail call i64 @llvm.umin.i64(i64 %i.il, i64 384307168202282325)
  %i.io = select i1 %i.im, i64 384307168202282325, i64 %i.in ; 3 uses
  %.not.i.i.i203 = icmp ne i64 %i.io, 0
  tail call void @llvm.assume(i1 %.not.i.i.i203)
  %i.ip = mul nuw nsw i64 %i.io, 24
  %i.iq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ip) #30
          to label %.noexc208 unwind label %bb.b  ; 4 uses

.noexc208:                                        ; preds = %_ZNKSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE12_M_check_lenEmPKc.exit.i.i201
  %i.ir = getelementptr inbounds i8, ptr %i.iq, i64 %i.ii ; 4 uses
  store double 0.000000e+00, ptr %i.ir, align 8
  %.sroa.44.0..sroa_idx343 = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store double %i.ie, ptr %.sroa.44.0..sroa_idx343, align 8
  %.sroa.59.0..sroa_idx391 = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  store double 1.000000e+00, ptr %.sroa.59.0..sroa_idx391, align 8
  %i.is = icmp sgt i64 %i.ii, 0
  br i1 %i.is, label %bb.at, label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i206

bb.at:                                            ; preds = %.noexc208
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iq, ptr nonnull align 8 %.sroa.0393.11, i64 %i.ii, i1 false)
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i206

_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i206: ; preds = %bb.at, %.noexc208
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0393.11, i64 noundef %i.ii) #31
  %i.iu = getelementptr inbounds nuw [24 x i8], ptr %i.iq, i64 %i.io
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit209

_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit209: ; preds = %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i206, %bb.aq, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit199
  %.sroa.0393.12 = phi ptr [ %.sroa.0393.11, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit199 ], [ %i.iq, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i206 ], [ %.sroa.0393.11, %bb.aq ] ; 11 uses
  %.sroa.39.11 = phi ptr [ %.sroa.39.10, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit199 ], [ %i.it, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i206 ], [ %i.if, %bb.aq ] ; 3 uses
  %.sroa.94.12 = phi ptr [ %.sroa.94.11, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit199 ], [ %i.iu, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i206 ], [ %.sroa.94.11, %bb.aq ] ; 4 uses
  %i.iv = ptrtoint ptr %.sroa.39.11 to i64
  %i.iw = ptrtoint ptr %.sroa.0393.12 to i64      ; 5 uses
  %i.ix = sub i64 %i.iv, %i.iw                    ; 2 uses
  %i.iy = sdiv exact i64 %i.ix, 24                ; 6 uses
  %i.iz = icmp eq i64 %i.ix, 24
  br i1 %i.iz, label %.thread486, label %bb.au

.thread486:                                       ; preds = %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit209
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0393.12, i64 24, i1 false)
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EED2Ev.exit

bb.au:                                            ; preds = %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EE9push_backERKS4_.exit209
  %6 = icmp ugt i64 %i.iy, 1152921504606846975
  br i1 %6, label %bb.av, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i

bb.av:                                            ; preds = %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #29
          to label %.noexc211 unwind label %.thread

.noexc211:                                        ; preds = %bb.av
  unreachable

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i: ; preds = %bb.au
  %.not = icmp ne ptr %.sroa.39.11, %.sroa.0393.12 ; 2 uses
  tail call void @llvm.assume(i1 %.not)
  %i.ja = shl nuw nsw i64 %i.iy, 3
  %i.jb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ja) #30
          to label %.lr.ph unwind label %.thread  ; 3 uses

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.iy
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.aw

._crit_edge:                                      ; preds = %_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_.exit
  %i.jf = load double, ptr %.sroa.0246.3, align 8, !tbaa !701 ; 6 uses
  %i.jg = ptrtoint ptr %.sroa.22.2 to i64
  %i.jh = ptrtoint ptr %.sroa.0246.3 to i64       ; 2 uses
  %i.ji = sub i64 %i.jg, %i.jh                    ; 2 uses
  %i.jj = ashr exact i64 %i.ji, 3                 ; 9 uses
  %i.jk = icmp ugt i64 %i.jj, 1
  br i1 %i.jk, label %.lr.ph522.preheader, label %._crit_edge523

.lr.ph522.preheader:                              ; preds = %._crit_edge
  %i.jl = add nsw i64 %i.jj, -1                   ; 3 uses
  %xtraiter = and i64 %i.jl, 1
  %i.jm = icmp eq i64 %i.ji, 16
  br i1 %i.jm, label %.lr.ph522.epil.preheader, label %.lr.ph522.preheader.new

.lr.ph522.preheader.new:                          ; preds = %.lr.ph522.preheader
  %unroll_iter = and i64 %i.jl, -2
  br label %.lr.ph522

.thread:                                          ; preds = %bb.av, %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EED2Ev.exit225

bb.aw:                                            ; preds = %.lr.ph, %_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_.exit
  %.sroa.0243.0515 = phi ptr [ %.sroa.0393.12, %.lr.ph ], [ %i.kl, %_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_.exit ] ; 4 uses
  %.sroa.31.0514 = phi ptr [ %i.jc, %.lr.ph ], [ %.sroa.31.3, %_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_.exit ] ; 3 uses
  %.sroa.22.0513 = phi ptr [ %i.jb, %.lr.ph ], [ %.sroa.22.2, %_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_.exit ] ; 3 uses
  %.sroa.0246.0512 = phi ptr [ %i.jb, %.lr.ph ], [ %.sroa.0246.3, %_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_.exit ] ; 7 uses
  %.sroa.0235.0.copyload = load double, ptr %.sroa.0243.0515, align 8
  %.sroa.7237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0243.0515, i64 8
  %.sroa.7237.0.copyload = load double, ptr %.sroa.7237.0..sroa_idx, align 8
  %.sroa.10239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0243.0515, i64 16
  %.sroa.10239.0.copyload = load double, ptr %.sroa.10239.0..sroa_idx, align 8
  %i.jo = load double, ptr %1, align 8, !tbaa !701, !noalias !9813
  %i.jp = fsub double %.sroa.0235.0.copyload, %i.jo ; 2 uses
  %i.jq = load double, ptr %i.jd, align 8, !tbaa !701, !noalias !9813
  %i.jr = fsub double %.sroa.7237.0.copyload, %i.jq ; 2 uses
  %i.js = load double, ptr %i.je, align 8, !tbaa !701, !noalias !9813
  %i.jt = fsub double %.sroa.10239.0.copyload, %i.js ; 2 uses
  %i.ju = fmul double %i.jr, %i.jr
  %i.jv = tail call double @llvm.fmuladd.f64(double %i.jp, double %i.jp, double %i.ju)
  %i.jw = tail call noundef double @llvm.fmuladd.f64(double %i.jt, double %i.jt, double %i.jv) ; 2 uses
  %.not.i213 = icmp eq ptr %.sroa.22.0513, %.sroa.31.0514
  br i1 %.not.i213, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store double %i.jw, ptr %.sroa.22.0513, align 8, !tbaa !701
  br label %_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_.exit

bb.ay:                                            ; preds = %bb.aw
  %i.jx = ptrtoint ptr %.sroa.31.0514 to i64
  %i.jy = ptrtoint ptr %.sroa.0246.0512 to i64
  %i.jz = sub i64 %i.jx, %i.jy                    ; 7 uses
  %i.ka = icmp eq i64 %i.jz, 9223372036854775800
  br i1 %i.ka, label %bb.az, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #29
          to label %.noexc217 unwind label %.loopexit.split-lp

.noexc217:                                        ; preds = %bb.az
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ay
  %i.kb = ashr exact i64 %i.jz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i214 = tail call i64 @llvm.umax.i64(i64 %i.kb, i64 1)
  %i.kc = add nsw i64 %.sroa.speculated.i.i.i214, %i.kb ; 2 uses
  %i.kd = icmp ult i64 %i.kc, %i.kb
  %i.ke = tail call i64 @llvm.umin.i64(i64 %i.kc, i64 1152921504606846975)
  %i.kf = select i1 %i.kd, i64 1152921504606846975, i64 %i.ke ; 3 uses
  %.not.i.i.i215 = icmp ne i64 %i.kf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i215)
  %i.kg = shl nuw nsw i64 %i.kf, 3
  %i.kh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kg) #30
          to label %.noexc218 unwind label %.loopexit ; 4 uses

.noexc218:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %i.ki = getelementptr inbounds i8, ptr %i.kh, i64 %i.jz ; 2 uses
  store double %i.jw, ptr %i.ki, align 8, !tbaa !701
  %i.kj = icmp sgt i64 %i.jz, 0
  br i1 %i.kj, label %bb.ba, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

bb.ba:                                            ; preds = %.noexc218
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kh, ptr align 8 %.sroa.0246.0512, i64 %i.jz, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i: ; preds = %bb.ba, %.noexc218
  %.not.i17.i.i216 = icmp eq ptr %.sroa.0246.0512, null
  br i1 %.not.i17.i.i216, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0246.0512, i64 noundef %i.jz) #31
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i: ; preds = %bb.bb, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %i.kf
  br label %_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_.exit

_ZNSt6vectorIdSaIdEE12emplace_backIJdEEERdDpOT_.exit: ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i, %bb.ax
  %.sroa.0246.3 = phi ptr [ %i.kh, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %.sroa.0246.0512, %bb.ax ] ; 22 uses
  %.pn = phi ptr [ %i.ki, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %.sroa.22.0513, %bb.ax ]
  %.sroa.31.3 = phi ptr [ %i.kk, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i ], [ %.sroa.31.0514, %bb.ax ] ; 2 uses
  %.sroa.22.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0243.0515, i64 24 ; 2 uses
  %.not501 = icmp eq ptr %i.kl, %.sroa.39.11
  br i1 %.not501, label %._crit_edge, label %bb.aw

._crit_edge523.loopexit.unr-lcssa:                ; preds = %.lr.ph522
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge523, label %.lr.ph522.epil.preheader

.lr.ph522.epil.preheader:                         ; preds = %._crit_edge523.loopexit.unr-lcssa, %.lr.ph522.preheader
  %.090520.epil.init = phi i64 [ 1, %.lr.ph522.preheader ], [ %i.lg, %._crit_edge523.loopexit.unr-lcssa ]
  %.0471519.epil.init = phi double [ %i.jf, %.lr.ph522.preheader ], [ %.sroa.speculated.1, %._crit_edge523.loopexit.unr-lcssa ] ; 2 uses
  %.0472518.epil.init = phi double [ %i.jf, %.lr.ph522.preheader ], [ %.sroa.speculated232.1, %._crit_edge523.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod602 = trunc i64 %i.jl to i1
  tail call void @llvm.assume(i1 %lcmp.mod602)
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.3, i64 %.090520.epil.init
  %i.kn = load double, ptr %i.km, align 8, !tbaa !701 ; 4 uses
  %i.ko = fcmp olt double %i.kn, %.0472518.epil.init
  %.sroa.speculated232.epil = select i1 %i.ko, double %i.kn, double %.0472518.epil.init
  %i.kp = fcmp olt double %.0471519.epil.init, %i.kn
  %.sroa.speculated.epil = select i1 %i.kp, double %i.kn, double %.0471519.epil.init
  br label %._crit_edge523

._crit_edge523:                                   ; preds = %.lr.ph522.epil.preheader, %._crit_edge523.loopexit.unr-lcssa, %._crit_edge
  %.0472.lcssa = phi double [ %i.jf, %._crit_edge ], [ %.sroa.speculated232.1, %._crit_edge523.loopexit.unr-lcssa ], [ %.sroa.speculated232.epil, %.lr.ph522.epil.preheader ]
  %.0471.lcssa = phi double [ %i.jf, %._crit_edge ], [ %.sroa.speculated.1, %._crit_edge523.loopexit.unr-lcssa ], [ %.sroa.speculated.epil, %.lr.ph522.epil.preheader ]
  %i.kq = tail call double @llvm.fmuladd.f64(double %.0472.lcssa, double 1.000000e-01, double %.0471.lcssa) ; 2 uses
  %.not542 = icmp eq ptr %.sroa.22.2, %.sroa.0246.3
  br i1 %.not542, label %.preheader, label %.lr.ph528.preheader

.lr.ph528.preheader:                              ; preds = %._crit_edge523
  %min.iters.check = icmp ult i64 %i.jj, 4
  br i1 %min.iters.check, label %.lr.ph528.preheader594, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph528.preheader
  %n.vec = and i64 %i.jj, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.kq, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.3, i64 %index ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.kr, align 8, !tbaa !701
  %wide.load591 = load <2 x double>, ptr %i.ks, align 8, !tbaa !701
  %i.kt = fsub <2 x double> %broadcast.splat, %wide.load
  %i.ku = fsub <2 x double> %broadcast.splat, %wide.load591
  store <2 x double> %i.kt, ptr %i.kr, align 8, !tbaa !701
  store <2 x double> %i.ku, ptr %i.ks, align 8, !tbaa !701
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kv = icmp eq i64 %index.next, %n.vec
  br i1 %i.kv, label %middle.block, label %vector.body, !llvm.loop !9807

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jj, %n.vec
  br i1 %cmp.n, label %.lr.ph531.preheader, label %.lr.ph528.preheader594

.lr.ph528.preheader594:                           ; preds = %.lr.ph528.preheader, %middle.block
  %.089526.ph = phi i64 [ 0, %.lr.ph528.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph528

.lr.ph531.preheader:                              ; preds = %.lr.ph528, %middle.block
  %xtraiter603 = and i64 %i.jj, 7                 ; 3 uses
  %i.kw = icmp ult i64 %i.jj, 8
  br i1 %i.kw, label %.lr.ph531.epil.preheader, label %.lr.ph531.preheader.new

.lr.ph531.preheader.new:                          ; preds = %.lr.ph531.preheader
  %unroll_iter607 = and i64 %i.jj, -8
  br label %.lr.ph531

.lr.ph522:                                        ; preds = %.lr.ph522, %.lr.ph522.preheader.new
  %.090520 = phi i64 [ 1, %.lr.ph522.preheader.new ], [ %i.lg, %.lr.ph522 ] ; 3 uses
  %.0471519 = phi double [ %i.jf, %.lr.ph522.preheader.new ], [ %.sroa.speculated.1, %.lr.ph522 ] ; 2 uses
  %.0472518 = phi double [ %i.jf, %.lr.ph522.preheader.new ], [ %.sroa.speculated232.1, %.lr.ph522 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph522.preheader.new ], [ %niter.next.1, %.lr.ph522 ]
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.3, i64 %.090520
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !701 ; 4 uses
  %i.kz = fcmp olt double %i.ky, %.0472518
  %.sroa.speculated232 = select i1 %i.kz, double %i.ky, double %.0472518 ; 2 uses
  %i.la = fcmp olt double %.0471519, %i.ky
  %.sroa.speculated = select i1 %i.la, double %i.ky, double %.0471519 ; 2 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.3, i64 %.090520
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !701 ; 4 uses
  %i.le = fcmp olt double %i.ld, %.sroa.speculated232
  %.sroa.speculated232.1 = select i1 %i.le, double %i.ld, double %.sroa.speculated232 ; 3 uses
  %i.lf = fcmp olt double %.sroa.speculated, %i.ld
  %.sroa.speculated.1 = select i1 %i.lf, double %i.ld, double %.sroa.speculated ; 3 uses
  %i.lg = add nuw i64 %.090520, 2                 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge523.loopexit.unr-lcssa, label %.lr.ph522, !llvm.loop !9808

.lr.ph528:                                        ; preds = %.lr.ph528.preheader594, %.lr.ph528
  %.089526 = phi i64 [ %i.lk, %.lr.ph528 ], [ %.089526.ph, %.lr.ph528.preheader594 ] ; 2 uses
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.3, i64 %.089526 ; 2 uses
  %i.li = load double, ptr %i.lh, align 8, !tbaa !701
  %i.lj = fsub double %i.kq, %i.li
  store double %i.lj, ptr %i.lh, align 8, !tbaa !701
  %i.lk = add nuw i64 %.089526, 1                 ; 2 uses
  %exitcond554.not = icmp eq i64 %i.lk, %i.jj
  br i1 %exitcond554.not, label %.lr.ph531.preheader, label %.lr.ph528, !llvm.loop !9809

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph531
  %lcmp.mod604.not = icmp eq i64 %xtraiter603, 0
  br i1 %lcmp.mod604.not, label %.preheader, label %.lr.ph531.epil.preheader

.lr.ph531.epil.preheader:                         ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph531.preheader
  %.087530.epil.init = phi i64 [ 0, %.lr.ph531.preheader ], [ %i.mu, %.preheader.loopexit.unr-lcssa ]
  %.088529.epil.init = phi double [ 0.000000e+00, %.lr.ph531.preheader ], [ %i.mt, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod606 = icmp ne i64 %xtraiter603, 0
  tail call void @llvm.assume(i1 %lcmp.mod606)
  br label %.lr.ph531.epil

.lr.ph531.epil:                                   ; preds = %.lr.ph531.epil, %.lr.ph531.epil.preheader
  %.087530.epil = phi i64 [ %i.lo, %.lr.ph531.epil ], [ %.087530.epil.init, %.lr.ph531.epil.preheader ] ; 2 uses
  %.088529.epil = phi double [ %i.ln, %.lr.ph531.epil ], [ %.088529.epil.init, %.lr.ph531.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph531.epil ], [ 0, %.lr.ph531.epil.preheader ]
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.3, i64 %.087530.epil
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !701
  %i.ln = fadd double %.088529.epil, %i.lm        ; 2 uses
  %i.lo = add nuw i64 %.087530.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter603
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph531.epil, !llvm.loop !9810

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph531.epil, %._crit_edge523
  %.088.lcssa = phi double [ 0.000000e+00, %._crit_edge523 ], [ %i.mt, %.preheader.loopexit.unr-lcssa ], [ %i.ln, %.lr.ph531.epil ] ; 3 uses
  br i1 %.not, label %.lr.ph537.preheader, label %._crit_edge538

.lr.ph537.preheader:                              ; preds = %.preheader
  %xtraiter609 = and i64 %i.iy, 1
  %unroll_iter615 = and i64 %i.iy, 1152921504606846974
  br label %.lr.ph537

.lr.ph531:                                        ; preds = %.lr.ph531, %.lr.ph531.preheader.new
  %.087530 = phi i64 [ 0, %.lr.ph531.preheader.new ], [ %i.mu, %.lr.ph531 ] ; 9 uses
  %.088529 = phi double [ 0.000000e+00, %.lr.ph531.preheader.new ], [ %i.mt, %.lr.ph531 ]
  %niter608 = phi i64 [ 0, %.lr.ph531.preheader.new ], [ %niter608.next.7, %.lr.ph531 ]
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.3, i64 %.087530
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !701
  %i.lr = fadd double %.088529, %i.lq
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.3, i64 %.087530
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !701
  %i.lv = fadd double %i.lr, %i.lu
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.3, i64 %.087530
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !701
  %i.lz = fadd double %i.lv, %i.ly
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.3, i64 %.087530
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 24
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !701
  %i.md = fadd double %i.lz, %i.mc
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.3, i64 %.087530
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 32
  %i.mg = load double, ptr %i.mf, align 8, !tbaa !701
  %i.mh = fadd double %i.md, %i.mg
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.3, i64 %.087530
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 40
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !701
  %i.ml = fadd double %i.mh, %i.mk
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.3, i64 %.087530
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 48
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !701
  %i.mp = fadd double %i.ml, %i.mo
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.3, i64 %.087530
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 56
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !701
  %i.mt = fadd double %i.mp, %i.ms                ; 3 uses
  %i.mu = add nuw i64 %.087530, 8                 ; 2 uses
  %niter608.next.7 = add i64 %niter608, 8         ; 2 uses
  %niter608.ncmp.7 = icmp eq i64 %niter608.next.7, %unroll_iter607
  br i1 %niter608.ncmp.7, label %.preheader.loopexit.unr-lcssa, label %.lr.ph531, !llvm.loop !9811

.lr.ph537:                                        ; preds = %.lr.ph537, %.lr.ph537.preheader
  %.0536 = phi i64 [ 0, %.lr.ph537.preheader ], [ %i.nt, %.lr.ph537 ] ; 4 uses
  %.sroa.59.0535 = phi double [ 0.000000e+00, %.lr.ph537.preheader ], [ %i.ns, %.lr.ph537 ]
  %i.mv = phi <2 x double> [ zeroinitializer, %.lr.ph537.preheader ], [ %i.nr, %.lr.ph537 ]
  %niter616 = phi i64 [ 0, %.lr.ph537.preheader ], [ %niter616.next.1, %.lr.ph537 ]
  %i.mw = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0393.12, i64 %.0536 ; 2 uses
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.3, i64 %.0536
  %i.my = load double, ptr %i.mx, align 8, !tbaa !701
  %i.mz = fdiv double %i.my, %.088.lcssa          ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %.sroa.10.0.copyload = load double, ptr %.sroa.10.0..sroa_idx, align 8
  %i.na = load <2 x double>, ptr %i.mw, align 8
  %i.nb = insertelement <2 x double> poison, double %i.mz, i64 0
  %i.nc = shufflevector <2 x double> %i.nb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nd = fmul <2 x double> %i.nc, %i.na
  %i.ne = fmul double %i.mz, %.sroa.10.0.copyload
  %i.nf = fadd <2 x double> %i.mv, %i.nd
  %i.ng = fadd double %.sroa.59.0535, %i.ne
  %i.nh = or disjoint i64 %.0536, 1               ; 2 uses
  %i.ni = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0393.12, i64 %i.nh ; 2 uses
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.3, i64 %i.nh
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !701
  %i.nl = fdiv double %i.nk, %.088.lcssa          ; 2 uses
  %.sroa.10.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ni, i64 16
  %.sroa.10.0.copyload.1 = load double, ptr %.sroa.10.0..sroa_idx.1, align 8
  %i.nm = load <2 x double>, ptr %i.ni, align 8
  %i.nn = insertelement <2 x double> poison, double %i.nl, i64 0
  %i.no = shufflevector <2 x double> %i.nn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.np = fmul <2 x double> %i.no, %i.nm
  %i.nq = fmul double %i.nl, %.sroa.10.0.copyload.1
  %i.nr = fadd <2 x double> %i.nf, %i.np          ; 3 uses
  %i.ns = fadd double %i.ng, %i.nq                ; 3 uses
  %i.nt = add nuw i64 %.0536, 2                   ; 3 uses
  %niter616.next.1 = add i64 %niter616, 2         ; 2 uses
  %niter616.ncmp.1 = icmp eq i64 %niter616.next.1, %unroll_iter615
  br i1 %niter616.ncmp.1, label %._crit_edge538.loopexit.unr-lcssa, label %.lr.ph537, !llvm.loop !9812

.loopexit:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit.split-lp:                               ; preds = %bb.az
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i221 = icmp eq ptr %.sroa.0246.0512, null
  br i1 %.not.i.i.i221, label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EED2Ev.exit225, label %.thread478

.thread478:                                       ; preds = %bb.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0246.0512, i64 noundef %i.jz) #31
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EED2Ev.exit225

._crit_edge538.loopexit.unr-lcssa:                ; preds = %.lr.ph537
  %lcmp.mod611.not = icmp eq i64 %xtraiter609, 0
  br i1 %lcmp.mod611.not, label %._crit_edge538, label %.lr.ph537.epil.preheader

.lr.ph537.epil.preheader:                         ; preds = %._crit_edge538.loopexit.unr-lcssa
  %lcmp.mod614 = trunc i64 %i.iy to i1
  tail call void @llvm.assume(i1 %lcmp.mod614)
  %i.nu = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0393.12, i64 %i.nt ; 2 uses
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.3, i64 %i.nt
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !701
  %i.nx = fdiv double %i.nw, %.088.lcssa          ; 2 uses
  %.sroa.10.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  %.sroa.10.0.copyload.epil = load double, ptr %.sroa.10.0..sroa_idx.epil, align 8
  %i.ny = load <2 x double>, ptr %i.nu, align 8
  %i.nz = insertelement <2 x double> poison, double %i.nx, i64 0
  %i.oa = shufflevector <2 x double> %i.nz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ob = fmul <2 x double> %i.oa, %i.ny
  %i.oc = fmul double %i.nx, %.sroa.10.0.copyload.epil
  %i.od = fadd <2 x double> %i.nr, %i.ob
  %i.oe = fadd double %i.ns, %i.oc
  br label %._crit_edge538

._crit_edge538:                                   ; preds = %.lr.ph537.epil.preheader, %._crit_edge538.loopexit.unr-lcssa, %.preheader
  %.sroa.59.0.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %i.ns, %._crit_edge538.loopexit.unr-lcssa ], [ %i.oe, %.lr.ph537.epil.preheader ]
  %i.of = phi <2 x double> [ zeroinitializer, %.preheader ], [ %i.nr, %._crit_edge538.loopexit.unr-lcssa ], [ %i.od, %.lr.ph537.epil.preheader ]
  store <2 x double> %i.of, ptr %0, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.59.0.lcssa, ptr %.sroa.59.0..sroa_idx, align 8
  %i.og = ptrtoint ptr %.sroa.31.3 to i64
  %i.oh = sub i64 %i.og, %i.jh
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0246.3, i64 noundef %i.oh) #31
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EED2Ev.exit

_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EED2Ev.exit: ; preds = %.thread486, %._crit_edge538
  %i.oi = ptrtoint ptr %.sroa.94.12 to i64
  %i.oj = sub i64 %i.oi, %i.iw
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0393.12, i64 noundef %i.oj) #31
  ret void

_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EED2Ev.exit225: ; preds = %bb.b, %.thread, %bb.bc, %.thread478
  %.pre-phi = phi i64 [ %i.iw, %.thread ], [ %.pre, %bb.b ], [ %i.iw, %bb.bc ], [ %i.iw, %.thread478 ]
  %.pn.pn.pn494 = phi { ptr, i32 } [ %i.jn, %.thread ], [ %i.n, %bb.b ], [ %lpad.phi, %bb.bc ], [ %lpad.phi, %.thread478 ]
  %.sroa.94.14493 = phi ptr [ %.sroa.94.12, %.thread ], [ %.sroa.94.0, %bb.b ], [ %.sroa.94.12, %bb.bc ], [ %.sroa.94.12, %.thread478 ]
  %.sroa.0393.14492 = phi ptr [ %.sroa.0393.12, %.thread ], [ %.sroa.0393.0, %bb.b ], [ %.sroa.0393.12, %bb.bc ], [ %.sroa.0393.12, %.thread478 ]
  %i.ok = ptrtoint ptr %.sroa.94.14493 to i64
  %i.ol = sub i64 %i.ok, %.pre-phi
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0393.14492, i64 noundef %i.ol) #31
  resume { ptr, i32 } %.pn.pn.pn494
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !921
  tail call void @_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !922  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !924  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !926
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #31
  br label %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %.lr.ph, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 64) #31
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !9814

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEEEE13initLeafArrayEb(ptr noundef nonnull align 8 dereferenceable(96) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %3 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.std::deque.2678", align 8   ; 32 uses
  %5 = alloca %"class.std::vector.320", align 8   ; 20 uses
  %6 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %7 = alloca %class.anon.2684, align 8           ; 6 uses
  %8 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<unsigned int, 3>, 4>::ChildIter.2044", align 8 ; 7 uses
  %9 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  %10 = alloca %class.anon.2685, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIPN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIjLj3EEELj4EEESaIS7_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %4, i64 noundef 0)
end_hunk_0
