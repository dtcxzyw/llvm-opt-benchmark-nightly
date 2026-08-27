Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/FBXConverter?download=true
inline.NumInlined: 7596
inline.NumDeleted: 2895
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN6Assimp3FBX12FBXConverter13ConvertCameraERKNS0_6CameraERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.m, ptr %i.h, align 8
  br label %_ZNSt6vectorIP8aiCameraSaIS1_EE9push_backEOS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 5 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorIP8aiCameraSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.224) #31
  unreachable

_ZNKSt6vectorIP8aiCameraSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #30 ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.q ; 3 uses
  store ptr %i.d, ptr %i.z, align 8
  %i.aa = icmp sgt i64 %i.q, 0
  br i1 %i.aa, label %bb.e, label %_ZNSt6vectorIP8aiCameraSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIP8aiCameraSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %i.n, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIP8aiCameraSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP8aiCameraSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIP8aiCameraSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP8aiCameraSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIP8aiCameraSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.ac = load ptr, ptr %i.j, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.ae) #29
  br label %_ZNSt6vectorIP8aiCameraSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP8aiCameraSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIP8aiCameraSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.y, ptr %i.c, align 8
  store ptr %i.ab, ptr %i.h, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.af, ptr %i.j, align 8
  br label %_ZNSt6vectorIP8aiCameraSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIP8aiCameraSaIS1_EE9push_backEOS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIP8aiCameraSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.ag = phi ptr [ %i.l, %bb.b ], [ %i.z, %_ZNSt6vectorIP8aiCameraSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %i.ah = load ptr, ptr %i.ag, align 8            ; 9 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load i64, ptr %i.ai, align 8            ; 4 uses
  %i.ak = icmp ugt i64 %i.aj, 1023
  br i1 %i.ak, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIP8aiCameraSaIS1_EE9push_backEOS1_.exit
  %i.al = trunc nuw nsw i64 %i.aj to i32
  store i32 %i.al, ptr %i.ah, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  %i.an = load ptr, ptr %2, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.am, ptr align 1 %i.an, i64 %i.aj, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aj
  store i8 0, ptr %i.ao, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt6vectorIP8aiCameraSaIS1_EE9push_backEOS1_.exit, %bb.g
  %i.ap = tail call noundef float @_ZNK6Assimp3FBX6Camera11AspectWidthEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
  %i.aq = tail call noundef float @_ZNK6Assimp3FBX6Camera12AspectHeightEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
  %i.ar = fdiv float %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 1076
  store float %i.ar, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 1028
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 1060
  store float 0.000000e+00, ptr %.sroa.523.0..sroa_idx, align 4
  store <4 x float> zeroinitializer, ptr %i.at, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 1044
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.4.0..sroa_idx, align 4
  %i.au = tail call noundef float @_ZNK6Assimp3FBX6Camera11FieldOfViewEv(ptr noundef nonnull align 8 dereferenceable(72) %1) ; 2 uses
  %i.av = fcmp oeq float %i.au, -1.000000e+00
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.aw = tail call noundef float @_ZNK6Assimp3FBX6Camera9FilmWidthEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
  store float %i.aw, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.ax = tail call noundef float @_ZNK6Assimp3FBX6Camera11FocalLengthEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
  store float %i.ax, ptr %i.b, align 4
  %i.ay = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger12verboseDebugIJRA48_KcRfRA26_S2_S5_RA5_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ay, ptr noundef nonnull align 1 dereferenceable(48) @.str.9, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(26) @.str.10, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(5) @.str.11)
  %i.az = load float, ptr %i.a, align 4
  %i.ba = fpext float %i.az to double
  %i.bb = fmul double %i.ba, 2.540000e+01
  %i.bc = fmul double %i.bb, 5.000000e-01
  %i.bd = load float, ptr %i.b, align 4
  %i.be = fpext float %i.bd to double
  %i.bf = call noundef double @atan2(double noundef %i.bc, double noundef %i.be) #27
  %i.bg = fptrunc double %i.bf to float
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.j

bb.i:                                             ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bh = fmul float %i.au, f0x3C8EFA35
  %i.bi = fmul float %i.bh, 5.000000e-01
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink = phi float [ %i.bg, %bb.h ], [ %i.bi, %bb.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 1064
  store float %.sink, ptr %i.bj, align 4
  %i.bk = call noundef float @_ZNK6Assimp3FBX6Camera9NearPlaneEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ah, i64 1068
  store float %i.bk, ptr %i.bl, align 4
  %i.bm = call noundef float @_ZNK6Assimp3FBX6Camera8FarPlaneEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ah, i64 1072
  store float %i.bm, ptr %i.bn, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef float @_ZNK6Assimp3FBX5Light9IntensityEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.d, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.d, ptr noundef nonnull align 1 dereferenceable(9) @.str.204, i64 9, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 9, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 25
  store i8 0, ptr %i.f, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store float 1.000000e+02, ptr %i.a, align 4
  %i.g = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc4 unwind label %bb.c    ; 2 uses

.noexc4:                                          ; preds = %._crit_edge.i.i
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.noexc4
  %i.i = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.g, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyIfEE, i64 0) #27 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %spec.select.i = select i1 %i.j, ptr %i.a, ptr %i.k
  %.1.i.pre = load float, ptr %spec.select.i, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.noexc4
  %.1.i = phi float [ 1.000000e+02, %.noexc4 ], [ %.1.i.pre, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = load ptr, ptr %1, align 8                ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.d
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.n = load i64, ptr %i.d, align 8
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret float %.1.i

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = load ptr, ptr %1, align 8                ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.d
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.c
  %i.s = load i64, ptr %i.d, align 8
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { <2 x float>, float } @_ZNK6Assimp3FBX5Light5ColorEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.sroa.0 = alloca i64, align 8                  ; 6 uses
  %.sroa.6 = alloca float, align 4                ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.c, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.c, ptr noundef nonnull align 1 dereferenceable(5) @.str.124, i64 5, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 5, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 21
  store i8 0, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  store i64 4575657222473777152, ptr %.sroa.0, align 8
  store float 1.000000e+00, ptr %.sroa.6, align 4
  %i.f = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc8 unwind label %bb.c    ; 2 uses

.noexc8:                                          ; preds = %._crit_edge.i.i
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.noexc8
  %i.h = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.f, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyI10aiVector3tIfEEE, i64 0) #27 ; 3 uses
  %i.i = icmp eq ptr %i.h, null                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %spec.select.i = select i1 %i.i, ptr %.sroa.0, ptr %i.j
  %.sroa.gep16 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %spec.select.i.sroa.sel = select i1 %i.i, ptr %.sroa.6, ptr %.sroa.gep16
  %.sroa.4.1.i.pre = load float, ptr %spec.select.i.sroa.sel, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.noexc8
  %.sroa.4.1.i = phi float [ 1.000000e+00, %.noexc8 ], [ %.sroa.4.1.i.pre, %bb.a ]
  %.sroa.08.1.in.i = phi ptr [ %.sroa.0, %.noexc8 ], [ %spec.select.i, %bb.a ]
  %.sroa.08.1.i = load <2 x float>, ptr %.sroa.08.1.in.i, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.k = load ptr, ptr %1, align 8                ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.c
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.c, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.08.1.i, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %.sroa.4.1.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret { <2 x float>, float } %.fca.1.insert.i

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.p = load ptr, ptr %1, align 8                ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.c
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.c
  %i.r = load i64, ptr %i.c, align 8
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK6Assimp3FBX5Light9LightTypeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.d, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.d, ptr noundef nonnull align 1 dereferenceable(9) @.str.205, i64 9, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 9, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 25
  store i8 0, ptr %i.f, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.g = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc11 unwind label %bb.c   ; 2 uses

.noexc11:                                         ; preds = %._crit_edge.i.i
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.noexc11
  %i.i = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.g, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyIiEE, i64 0) #27 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %spec.select.i = select i1 %i.j, ptr %i.a, ptr %i.k
  %.1.i.pre = load i32, ptr %spec.select.i, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.noexc11
  %.1.i = phi i32 [ 0, %.noexc11 ], [ %.1.i.pre, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = load ptr, ptr %1, align 8                ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.d
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.n = load i64, ptr %i.d, align 8
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %or.cond = icmp ugt i32 %.1.i, 4
  %. = select i1 %or.cond, i32 0, i32 %.1.i
  ret i32 %.

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = load ptr, ptr %1, align 8                ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.d
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.c
  %i.s = load i64, ptr %i.d, align 8
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef float @_ZNK6Assimp3FBX5Light10OuterAngleEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.d, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.d, ptr noundef nonnull align 1 dereferenceable(10) @.str.206, i64 10, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 10, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i8 0, ptr %i.f, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store float 4.500000e+01, ptr %i.a, align 4
  %i.g = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc4 unwind label %bb.c    ; 2 uses

.noexc4:                                          ; preds = %._crit_edge.i.i
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.noexc4
  %i.i = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.g, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyIfEE, i64 0) #27 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %spec.select.i = select i1 %i.j, ptr %i.a, ptr %i.k
  %.1.i.pre = load float, ptr %spec.select.i, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.noexc4
  %.1.i = phi float [ 4.500000e+01, %.noexc4 ], [ %.1.i.pre, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = load ptr, ptr %1, align 8                ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.d
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.n = load i64, ptr %i.d, align 8
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret float %.1.i

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = load ptr, ptr %1, align 8                ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.d
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.c
  %i.s = load i64, ptr %i.d, align 8
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef float @_ZNK6Assimp3FBX5Light10InnerAngleEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
begin_hunk_1_@_ZN6Assimp3FBX12FBXConverter24IsRedundantAnimationDataERKNS0_5ModelENS1_18TransformationCompERKSt6vectorIPKNS0_18AnimationCurveNodeESaIS9_EE:bb.a
  br label %.lr.ph.i.i.i96

.lr.ph.i.i.i96:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i102
  %.012.i.i.i97 = phi ptr [ %.1.i.i.i107, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i102 ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ] ; 4 uses
  %.0811.i.i.i98 = phi ptr [ %.19.i.i.i104, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i102 ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i97, i64 40
  %i.be = load i64, ptr %i.bd, align 8            ; 3 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i121, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i100

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i100: ; preds = %.lr.ph.i.i.i96
  %.sroa.speculated.i.i.i.i.i.i99 = call i64 @llvm.umin.i64(i64 %i.be, i64 3)
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i97, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = call i32 @memcmp(ptr noundef %i.bh, ptr noundef nonnull %i.ba, i64 noundef %.sroa.speculated.i.i.i.i.i.i99) #27 ; 2 uses
  %.not.i.i.i.i.i.i101 = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i.i.i.i.i101, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i121, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i102

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i121: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i100, %.lr.ph.i.i.i96
  %i.bj = add i64 %i.be, -3
  %spec.select7.i.i.i.i.i.i.i122 = call i64 @llvm.smax.i64(i64 %i.bj, i64 -2147483648)
  %.08.i.i.i.i.i.i.i123 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i122, i64 2147483647)
  %.0.i6.i.i.i.i.i.i124 = trunc nsw i64 %.08.i.i.i.i.i.i.i123 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i102

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i102: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i121, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i100
  %.0.i.i.i.i.i.i103 = phi i32 [ %i.bi, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i100 ], [ %.0.i6.i.i.i.i.i.i124, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i121 ]
  %i.bk = icmp slt i32 %.0.i.i.i.i.i.i103, 0      ; 2 uses
  %.19.i.i.i104 = select i1 %i.bk, ptr %.0811.i.i.i98, ptr %.012.i.i.i97 ; 5 uses
  %.1.in.v.i.i.i105 = select i1 %i.bk, i64 24, i64 16
  %.1.in.i.i.i106 = getelementptr inbounds nuw i8, ptr %.012.i.i.i97, i64 %.1.in.v.i.i.i105
  %.1.i.i.i107 = load ptr, ptr %.1.in.i.i.i106, align 8 ; 2 uses
  %.not.i.i.i108 = icmp eq ptr %.1.i.i.i107, null
  br i1 %.not.i.i.i108, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14AnimationCurveEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i109, label %.lr.ph.i.i.i96, !llvm.loop !366

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14AnimationCurveEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i109: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i102
  %i.bl = icmp eq ptr %.19.i.i.i104, %i.o
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.thread, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14AnimationCurveEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i109
  %i.bm = getelementptr inbounds nuw i8, ptr %.19.i.i.i104, i64 40
  %i.bn = load i64, ptr %i.bm, align 8            ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i117, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i111

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i111: ; preds = %bb.d
  %.sroa.speculated.i.i.i.i.i110 = call i64 @llvm.umin.i64(i64 %i.bn, i64 3)
  %i.bp = getelementptr inbounds nuw i8, ptr %.19.i.i.i104, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call i32 @memcmp(ptr noundef nonnull %i.ba, ptr noundef %i.bq, i64 noundef %.sroa.speculated.i.i.i.i.i110) #27 ; 2 uses
  %.not.i.i.i.i.i112 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i.i.i.i112, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i117, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i117: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i111, %bb.d
  %i.bs = sub i64 3, %i.bn
  %spec.select7.i.i.i.i.i.i118 = call i64 @llvm.smax.i64(i64 %i.bs, i64 -2147483648)
  %.08.i.i.i.i.i.i119 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i118, i64 2147483647)
  %.0.i6.i.i.i.i.i120 = trunc nsw i64 %.08.i.i.i.i.i.i119 to i32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3FBX14AnimationCurveEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %.critedge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i111, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i117
  %.0.i.i.i.i.i114 = phi i32 [ %i.br, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i111 ], [ %.0.i6.i.i.i.i.i120, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i117 ]
  %i.bt = icmp slt i32 %.0.i.i.i.i.i114, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.bu = icmp eq ptr %.sroa.0.0.i.i, %i.o
  %i.bv = icmp eq ptr %.sroa.0.0.i.i78, %i.o
  %or.cond = select i1 %i.bu, i1 true, i1 %i.bv
  %or.cond162 = select i1 %or.cond, i1 true, i1 %i.bt
  br i1 %or.cond162, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 80
  %i.bz = getelementptr inbounds nuw i8, ptr %.19.i.i.i104, i64 64
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 80
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 88
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %.not = icmp eq i64 %i.ch, 4
  br i1 %.not, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i78, i64 64
  %i.cj = load ptr, ptr %i.ci, align 8            ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 80
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 88
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %.not46 = icmp eq i64 %i.cq, 4
  br i1 %.not46, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ca, i64 88
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %.not47 = icmp eq i64 %i.cw, 4
  br i1 %.not47, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.cx = load float, ptr %i.ce, align 4
  %i.cy = load float, ptr %i.cn, align 4
  %i.cz = load float, ptr %i.ct, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.db = load ptr, ptr %i.da, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.dc = call noundef ptr @_ZN6Assimp3FBX12FBXConverter30NameTransformationCompPropertyENS1_18TransformationCompE(ptr nonnull align 8 poison, i32 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.dc, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.dd = icmp eq i32 %2, 12                      ; 2 uses
  %.sroa.5.0.i = select i1 %i.dd, float 1.000000e+00, float 0.000000e+00
  %.sroa.0.0.i = select i1 %i.dd, <2 x float> splat (float 1.000000e+00), <2 x float> zeroinitializer
  store <2 x float> %.sroa.0.0.i, ptr %9, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store float %.sroa.5.0.i, ptr %.sroa.28.0..sroa_idx, align 8
  %i.de = invoke { <2 x float>, float } @_ZN6Assimp3FBX11PropertyGetI10aiVector3tIfEEET_RKNS0_13PropertyTableERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS4_(ptr noundef nonnull align 8 dereferenceable(136) %i.db, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 4 dereferenceable(12) %9)
          to label %bb.i unwind label %bb.j       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %.fca.0.extract1 = extractvalue { <2 x float>, float } %i.de, 0 ; 2 uses
  %.fca.1.extract2 = extractvalue { <2 x float>, float } %i.de, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.df = load ptr, ptr %7, align 8               ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %bb.i
  %i.di = load i64, ptr %i.dg, align 8
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %.sroa.0146.0.vec.extract = extractelement <2 x float> %.fca.0.extract1, i64 0
  %i.dk = fsub float %i.cx, %.sroa.0146.0.vec.extract ; 2 uses
  %.sroa.0146.4.vec.extract = extractelement <2 x float> %.fca.0.extract1, i64 1
  %i.dl = fsub float %i.cy, %.sroa.0146.4.vec.extract ; 2 uses
  %i.dm = fsub float %i.cz, %.fca.1.extract2      ; 2 uses
  %i.dn = fmul float %i.dl, %i.dl
  %i.do = call float @llvm.fmuladd.f32(float %i.dk, float %i.dk, float %i.dn)
  %i.dp = call noundef float @llvm.fmuladd.f32(float %i.dm, float %i.dm, float %i.do)
  %i.dq = fcmp olt float %i.dp, f0x34000000
  br label %.critedge

bb.j:                                             ; preds = %bb.h
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.ds = load ptr, ptr %7, align 8               ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %bb.j
  %i.dv = load i64, ptr %i.dt, align 8
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  resume { ptr, i32 } %i.dr

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.thread, %bb.e, %bb.f, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ], [ false, %bb.e ], [ %i.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140 ], [ false, %bb.g ], [ false, %bb.f ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.thread ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN6Assimp3FBX12FBXConverter22GenerateSimpleNodeAnimERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ModelEPSt23_Rb_tree_const_iteratorISt4pairIS8_St6vectorIPKNS0_18AnimationCurveNodeESaISI_EEEESM_llRdSO_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(529) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree readnone captures(address) %4, i64 noundef %5, i64 noundef %6, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %8) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %class.aiMatrix4x4t, align 4        ; 11 uses
  %10 = alloca %class.aiMatrix4x4t, align 4       ; 11 uses
  %11 = alloca %class.aiMatrix4x4t, align 4       ; 11 uses
  %12 = alloca %"class.std::unique_ptr.574", align 8 ; 6 uses
  %13 = alloca [17 x %"class.std::vector.582"], align 16 ; 123 uses
  %14 = alloca %"class.std::vector.562", align 8  ; 20 uses
  %15 = alloca %"class.std::vector.582", align 16 ; 10 uses
  %16 = alloca %"class.std::vector.582", align 16 ; 10 uses
  %17 = alloca %class.aiVector3t, align 8         ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.sroa.0606 = alloca i64, align 8               ; 6 uses
  %.sroa.6607 = alloca float, align 4             ; 5 uses
  %19 = alloca %class.aiVector3t, align 8         ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.sroa.0603 = alloca i64, align 8               ; 6 uses
  %.sroa.6604 = alloca float, align 4             ; 5 uses
  %21 = alloca %class.aiVector3t, align 8         ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.sroa.0 = alloca i64, align 8                  ; 6 uses
  %.sroa.6 = alloca float, align 4                ; 5 uses
  %23 = alloca %class.aiVector3t, align 8         ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %class.aiVector3t, align 8         ; 6 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %class.aiMatrix4x4t, align 16      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.a = tail call noalias noundef nonnull dereferenceable(1080) ptr @_Znwm(i64 noundef 1080) #30 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1048
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1056
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1064
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1080) %i.a, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %12, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 4 uses
  %i.g = icmp ugt i64 %i.f, 1023
  br i1 %i.g, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = trunc nuw nsw i64 %i.f to i32
  store i32 %i.h, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.j = load ptr, ptr %1, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.i, ptr align 1 %i.j, i64 %i.f, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  store i8 0, ptr %i.k, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.m = load ptr, ptr %i.l, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(408) %13, i8 0, i64 408, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 6 uses
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorIlSaIlEE5eraseEN9__gnu_cxx17__normal_iteratorIPKlS1_EES6_.exit
  %i.s = invoke noundef i32 @_ZNK6Assimp3FBX5Model13RotationOrderEv(ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %._crit_edge.i.i222 unwind label %bb.aq ; 2 uses

bb.d:                                             ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNSt6vectorIlSaIlEE5eraseEN9__gnu_cxx17__normal_iteratorIPKlS1_EES6_.exit
  %.0167416 = phi i64 [ 0, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.dl, %_ZNSt6vectorIlSaIlEE5eraseEN9__gnu_cxx17__normal_iteratorIPKlS1_EES6_.exit ] ; 7 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.0167416
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %i.v = icmp eq ptr %i.u, %4
  br i1 %i.v, label %_ZNSt6vectorIlSaIlEE5eraseEN9__gnu_cxx17__normal_iteratorIPKlS1_EES6_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = and i64 %.0167416, 30
  %or.cond = icmp eq i64 %i.w, 6
  br i1 %or.cond, label %bb.f, label %switch.early.test

switch.early.test:                                ; preds = %bb.e
  switch i64 %.0167416, label %bb.m [
    i64 15, label %bb.f
    i64 8, label %bb.f
  ]

bb.f:                                             ; preds = %switch.early.test, %switch.early.test, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  invoke void @_ZN6Assimp3FBX12FBXConverter23GetRotationKeyframeListERKSt6vectorIPKNS0_18AnimationCurveNodeESaIS5_EEll(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.582") align 8 %15, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef %5, i64 noundef %6)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %13, i64 %.0167416 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = load <2 x ptr>, ptr %15, align 16
  store <2 x ptr> %i.ae, ptr %i.y, align 8
  %i.af = load ptr, ptr %i.q, align 16
  store ptr %i.af, ptr %i.ac, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES3_IS4_IfSaIfEEEjEEEEvT_SD_(ptr noundef %i.z, ptr noundef %i.ab)
          to label %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i.i.i unwind label %bb.i

_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i.i.i: ; preds = %bb.g
  %.not.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EEaSEOSA_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i.i.i
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = ptrtoint ptr %i.z to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ai) #29
  br label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EEaSEOSA_.exit

bb.i:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #32
  unreachable

_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EEaSEOSA_.exit: ; preds = %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i.i.i, %bb.h
  %i.al = load ptr, ptr %15, align 16
  %i.am = load ptr, ptr %i.p, align 8
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES3_IS4_IfSaIfEEEjEEEEvT_SD_(ptr noundef %i.al, ptr noundef %i.am)
          to label %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i unwind label %bb.k

_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EEaSEOSA_.exit
  %i.an = load ptr, ptr %15, align 16             ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i
  %i.ao = load ptr, ptr %i.q, align 16
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #29
  br label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit

bb.k:                                             ; preds = %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EEaSEOSA_.exit
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #32
  unreachable

_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %bb.t

bb.l:                                             ; preds = %bb.f
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %bb.cy

bb.m:                                             ; preds = %switch.early.test
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  invoke void @_ZN6Assimp3FBX12FBXConverter15GetKeyframeListERKSt6vectorIPKNS0_18AnimationCurveNodeESaIS5_EEll(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.582") align 8 %16, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 noundef %5, i64 noundef %6)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %13, i64 %.0167416 ; 4 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = load <2 x ptr>, ptr %16, align 16
  store <2 x ptr> %i.bc, ptr %i.aw, align 8
  %i.bd = load ptr, ptr %i.o, align 16
  store ptr %i.bd, ptr %i.ba, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES3_IS4_IfSaIfEEEjEEEEvT_SD_(ptr noundef %i.ax, ptr noundef %i.az)
          to label %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i.i.i210 unwind label %bb.p

_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i.i.i210: ; preds = %bb.n
  %.not.i.i.i.i.i211 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i211, label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EEaSEOSA_.exit212, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i.i.i210
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = ptrtoint ptr %i.ax to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bg) #29
  br label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EEaSEOSA_.exit212

bb.p:                                             ; preds = %bb.n
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #32
  unreachable

_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EEaSEOSA_.exit212: ; preds = %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i.i.i210, %bb.o
  %i.bj = load ptr, ptr %16, align 16
  %i.bk = load ptr, ptr %i.n, align 8
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES3_IS4_IfSaIfEEEjEEEEvT_SD_(ptr noundef %i.bj, ptr noundef %i.bk)
          to label %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i213 unwind label %bb.r

_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i213: ; preds = %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EEaSEOSA_.exit212
  %i.bl = load ptr, ptr %16, align 16             ; 3 uses
  %.not.i.i.i214 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i214, label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit215, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i213
  %i.bm = load ptr, ptr %i.o, align 16
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bl to i64
  %i.bp = sub i64 %i.bn, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bp) #29
  br label %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit215

bb.r:                                             ; preds = %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EEaSEOSA_.exit212
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #32
  unreachable

_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit215: ; preds = %_ZSt8_DestroyIPSt5tupleIJSt10shared_ptrISt6vectorIlSaIlEEES1_IS2_IfSaIfEEEjEES9_EvT_SB_RSaIT0_E.exit.i213, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %bb.t

bb.s:                                             ; preds = %bb.m
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %bb.cy

bb.t:                                             ; preds = %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit215, %_ZNSt6vectorISt5tupleIJSt10shared_ptrIS_IlSaIlEEES1_IS_IfSaIfEEEjEESaIS8_EED2Ev.exit
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %13, i64 %.0167416 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %.not406414 = icmp eq ptr %i.bu, %i.bw
  br i1 %.not406414, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.v, %bb.t
  %i.bx = load ptr, ptr %14, align 8              ; 4 uses
  %i.by = load ptr, ptr %i.r, align 8             ; 4 uses
  %.not.i.i = icmp eq ptr %i.bx, %i.by
  br i1 %.not.i.i, label %_ZNSt6vectorIlSaIlEE5eraseEN9__gnu_cxx17__normal_iteratorIPKlS1_EES6_.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 3
  %i.cd = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cc, i1 true)
  %i.ce = shl nuw nsw i64 %i.cd, 1
  %i.cf = xor i64 %i.ce, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.bx, ptr %i.by, i64 noundef %i.cf)
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.u
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.bx, ptr %i.by)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_.exit unwind label %bb.aa

.lr.ph:                                           ; preds = %bb.t, %bb.v
  %.sroa.0401.0415 = phi ptr [ %i.cr, %bb.v ], [ %i.bu, %bb.t ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0401.0415, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.ci = load ptr, ptr %i.r, align 8
  %i.cj = load ptr, ptr %i.ch, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = load ptr, ptr %14, align 8              ; 2 uses
  %i.cn = ptrtoint ptr %i.ci to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = getelementptr inbounds i8, ptr %i.cm, i64 %i.cp
  invoke void @_ZNSt6vectorIlSaIlEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEvNS4_IPlS1_EET_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr %i.cq, ptr %i.cj, ptr %i.cl)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %.lr.ph
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0401.0415, i64 40 ; 2 uses
  %.not406 = icmp eq ptr %i.cr, %i.bw
  br i1 %.not406, label %._crit_edge, label %.lr.ph, !llvm.loop !367

bb.w:                                             ; preds = %.lr.ph
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_.exit: ; preds = %.noexc
  %.pre = load ptr, ptr %14, align 8              ; 4 uses
  %.pre454 = load ptr, ptr %i.r, align 8          ; 5 uses
  %i.ct = icmp eq ptr %.pre, %.pre454
  br i1 %i.ct, label %_ZNSt6vectorIlSaIlEE5eraseEN9__gnu_cxx17__normal_iteratorIPKlS1_EES6_.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_.exit, %bb.x
  %.sroa.09.0.i.i.i = phi ptr [ %i.cu, %bb.x ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_.exit ] ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 8 ; 3 uses
  %.not.i.i.i218 = icmp eq ptr %i.cu, %.pre454
  br i1 %.not.i.i.i218, label %_ZNSt6vectorIlSaIlEE5eraseEN9__gnu_cxx17__normal_iteratorIPKlS1_EES6_.exit, label %bb.x

bb.x:                                             ; preds = %.preheader.i.i.i
  %i.cv = load i64, ptr %.sroa.09.0.i.i.i, align 8 ; 2 uses
  %i.cw = load i64, ptr %i.cu, align 8
  %i.cx = icmp eq i64 %i.cv, %i.cw
  br i1 %i.cx, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !368

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %bb.x
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 16 ; 2 uses
  %.not18.i.i = icmp eq ptr %i.cy, %.pre454
  br i1 %.not18.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEET_S7_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, %bb.z
  %i.cz = phi i64 [ %i.db, %bb.z ], [ %i.cv, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ]
  %i.da = phi ptr [ %i.de, %bb.z ], [ %i.cy, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ] ; 2 uses
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.z ], [ %.sroa.09.0.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ] ; 2 uses
  %i.db = load i64, ptr %i.da, align 8            ; 3 uses
  %i.dc = icmp eq i64 %i.cz, %i.db
  br i1 %i.dc, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 8 ; 2 uses
  store i64 %i.db, ptr %i.dd, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %i.dd, %bb.y ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %.not.i.i219 = icmp eq ptr %i.de, %.pre454
  br i1 %.not.i.i219, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i, !llvm.loop !369

._crit_edge.i.i.loopexit:                         ; preds = %bb.z
  %.pre455.pre = load ptr, ptr %i.r, align 8
  br label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEET_S7_S7_.exit

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEET_S7_S7_.exit: ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, %._crit_edge.i.i.loopexit
  %.pre455 = phi ptr [ %.pre454, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ], [ %.pre455.pre, %._crit_edge.i.i.loopexit ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.09.0.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ], [ %.sroa.0.1.i.i, %._crit_edge.i.i.loopexit ]
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 8 ; 2 uses
  %i.dg = icmp eq ptr %i.df, %.pre455
  br i1 %i.dg, label %_ZNSt6vectorIlSaIlEE5eraseEN9__gnu_cxx17__normal_iteratorIPKlS1_EES6_.exit, label %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEET_S7_S7_.exit
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %.pre to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = getelementptr inbounds i8, ptr %.pre, i64 %i.dj
  store ptr %i.dk, ptr %i.r, align 8
  br label %_ZNSt6vectorIlSaIlEE5eraseEN9__gnu_cxx17__normal_iteratorIPKlS1_EES6_.exit

_ZNSt6vectorIlSaIlEE5eraseEN9__gnu_cxx17__normal_iteratorIPKlS1_EES6_.exit: ; preds = %.preheader.i.i.i, %._crit_edge, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEvT_S7_.exit, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEET_S7_S7_.exit, %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i.i, %bb.d
  %i.dl = add nuw nsw i64 %.0167416, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.dl, 17
  br i1 %exitcond.not, label %bb.c, label %bb.d, !llvm.loop !370

bb.aa:                                            ; preds = %.noexc, %bb.u
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

._crit_edge.i.i222:                               ; preds = %bb.c
  %i.dn = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.do = load ptr, ptr %14, align 8              ; 2 uses
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq                    ; 9 uses
  %i.ds = ashr exact i64 %i.dr, 3                 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  %i.dt = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.dt, ptr %18, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.dt, ptr noundef nonnull align 1 dereferenceable(15) @.str.29, i64 15, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 15, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %18, i64 31
  store i8 0, ptr %i.dv, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0606)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6607)
  store i64 0, ptr %.sroa.0606, align 8
  store float 0.000000e+00, ptr %.sroa.6607, align 4
  %i.dw = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %.noexc224 unwind label %bb.ar ; 2 uses

.noexc224:                                        ; preds = %._crit_edge.i.i222
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.noexc224
  %i.dy = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.dw, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyI10aiVector3tIfEEE, i64 0) #27 ; 3 uses
  %i.dz = icmp eq ptr %i.dy, null                 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %spec.select.i = select i1 %i.dz, ptr %.sroa.0606, ptr %i.ea
  %.sroa.gep605 = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %spec.select.i.sroa.sel = select i1 %i.dz, ptr %.sroa.6607, ptr %.sroa.gep605
  %.sroa.4.1.i.pre = load float, ptr %spec.select.i.sroa.sel, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.noexc224
  %.sroa.4.1.i = phi float [ 0.000000e+00, %.noexc224 ], [ %.sroa.4.1.i.pre, %bb.ab ]
  %.sroa.08.1.in.i = phi ptr [ %.sroa.0606, %.noexc224 ], [ %spec.select.i, %bb.ab ]
  %.sroa.08.1.i = load <2 x float>, ptr %.sroa.08.1.in.i, align 4
  store <2 x float> %.sroa.08.1.i, ptr %17, align 8
  %.sroa.281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store float %.sroa.4.1.i, ptr %.sroa.281.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0606)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6607)
  %i.eb = load ptr, ptr %18, align 8              ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.dt
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ac
  %i.ed = load i64, ptr %i.dt, align 8
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  %i.ef = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  store ptr %i.ef, ptr %20, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ef, ptr noundef nonnull align 1 dereferenceable(12) @.str.30, i64 12, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 12, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %20, i64 28
  store i8 0, ptr %i.eh, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0603)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6604)
  store i64 0, ptr %.sroa.0603, align 8
  store float 0.000000e+00, ptr %.sroa.6604, align 4
  %i.ei = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %.noexc236 unwind label %bb.as ; 2 uses

.noexc236:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.noexc236
  %i.ek = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.ei, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyI10aiVector3tIfEEE, i64 0) #27 ; 3 uses
  %i.el = icmp eq ptr %i.ek, null                 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %spec.select.i229 = select i1 %i.el, ptr %.sroa.0603, ptr %i.em
  %.sroa.gep602 = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %spec.select.i229.sroa.sel = select i1 %i.el, ptr %.sroa.6604, ptr %.sroa.gep602
  %.sroa.4.1.i232.pre = load float, ptr %spec.select.i229.sroa.sel, align 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.noexc236
  %.sroa.4.1.i232 = phi float [ 0.000000e+00, %.noexc236 ], [ %.sroa.4.1.i232.pre, %bb.ad ]
  %.sroa.08.1.in.i230 = phi ptr [ %.sroa.0603, %.noexc236 ], [ %spec.select.i229, %bb.ad ]
  %.sroa.08.1.i233 = load <2 x float>, ptr %.sroa.08.1.in.i230, align 4
  store <2 x float> %.sroa.08.1.i233, ptr %19, align 8
  %.sroa.277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %19, i64 8
  store float %.sroa.4.1.i232, ptr %.sroa.277.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0603)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6604)
  %i.en = load ptr, ptr %20, align 8              ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.ef
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238: ; preds = %bb.ae
  %i.ep = load i64, ptr %i.ef, align 8
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27
  %i.er = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  store ptr %i.er, ptr %22, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.er, ptr noundef nonnull align 1 dereferenceable(11) @.str.31, i64 11, i1 false)
  %i.es = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 11, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %22, i64 27
  store i8 0, ptr %i.et, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  store i64 4575657222473777152, ptr %.sroa.0, align 8
  store float 1.000000e+00, ptr %.sroa.6, align 4
  %i.eu = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %.noexc252 unwind label %bb.at ; 2 uses

.noexc252:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.noexc252
  %i.ew = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.eu, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyI10aiVector3tIfEEE, i64 0) #27 ; 3 uses
  %i.ex = icmp eq ptr %i.ew, null                 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %spec.select.i245 = select i1 %i.ex, ptr %.sroa.0, ptr %i.ey
  %.sroa.gep601 = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %spec.select.i245.sroa.sel = select i1 %i.ex, ptr %.sroa.6, ptr %.sroa.gep601
  %.sroa.4.1.i248.pre = load float, ptr %spec.select.i245.sroa.sel, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.noexc252
  %.sroa.4.1.i248 = phi float [ 1.000000e+00, %.noexc252 ], [ %.sroa.4.1.i248.pre, %bb.af ]
  %.sroa.08.1.in.i246 = phi ptr [ %.sroa.0, %.noexc252 ], [ %spec.select.i245, %bb.af ]
  %.sroa.08.1.i249 = load <2 x float>, ptr %.sroa.08.1.in.i246, align 4
  store <2 x float> %.sroa.08.1.i249, ptr %21, align 8
  %.sroa.273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 8
  store float %.sroa.4.1.i248, ptr %.sroa.273.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.ez = load ptr, ptr %22, align 8              ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.er
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254: ; preds = %bb.ag
  %i.fb = load i64, ptr %i.er, align 8
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  %i.fd = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ds, i64 24) ; 2 uses
  %i.fe = extractvalue { i64, i1 } %i.fd, 1
  %i.ff = extractvalue { i64, i1 } %i.fd, 0
  %i.fg = select i1 %i.fe, i64 -1, i64 %i.ff      ; 2 uses
  %i.fh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fg) #30
          to label %bb.ah unwind label %bb.au     ; 8 uses

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256
  %i.fi = icmp eq ptr %i.dn, %i.do                ; 8 uses
  br i1 %i.fi, label %.loopexit412, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fj = getelementptr inbounds [24 x i8], ptr %i.fh, i64 %i.ds
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %i.fk = phi ptr [ %i.fh, %bb.ai ], [ %i.fm, %bb.aj ] ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fk, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.fl, align 4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 24 ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.fj
  br i1 %i.fn, label %.loopexit412, label %bb.aj

.loopexit412:                                     ; preds = %bb.aj, %bb.ah
  %i.fo = icmp ugt i64 %i.ds, 576460752303423487
  %i.fp = shl i64 %i.dr, 2
  %i.fq = select i1 %i.fo, i64 -1, i64 %i.fp
  %i.fr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fq) #30
          to label %bb.ak unwind label %bb.av     ; 11 uses

bb.ak:                                            ; preds = %.loopexit412
  br i1 %i.fi, label %.loopexit411, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fs = getelementptr inbounds [32 x i8], ptr %i.fr, i64 %i.ds
  %i.ft = shl i64 %i.dr, 2
  %i.fu = add i64 %i.ft, -32                      ; 2 uses
  %i.fv = lshr i64 %i.fu, 5
  %i.fw = add nuw nsw i64 %i.fv, 1
  %xtraiter = and i64 %i.fw, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.al, %.prol.preheader
  %i.fx = phi ptr [ %i.ga, %.prol.preheader ], [ %i.fr, %bb.al ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.al ]
  store double 0.000000e+00, ptr %i.fx, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.fy, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  store i32 1, ptr %i.fz, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !371

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.al
  %.unr = phi ptr [ %i.fr, %bb.al ], [ %i.ga, %.prol.preheader ]
  %i.gb = icmp ult i64 %i.fu, 224
  br i1 %i.gb, label %.loopexit411, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.gc = phi ptr [ %i.ha, %.new ], [ %.unr, %.prol.loopexit ] ; 25 uses
  store double 0.000000e+00, ptr %i.gc, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.gd, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  store i32 1, ptr %i.ge, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  store double 0.000000e+00, ptr %i.gf, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 40
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.gg, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 56
  store i32 1, ptr %i.gh, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gc, i64 64
  store double 0.000000e+00, ptr %i.gi, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gc, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.gj, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gc, i64 88
  store i32 1, ptr %i.gk, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gc, i64 96
  store double 0.000000e+00, ptr %i.gl, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gc, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.gm, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gc, i64 120
  store i32 1, ptr %i.gn, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.gc, i64 128
  store double 0.000000e+00, ptr %i.go, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gc, i64 136
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.gp, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gc, i64 152
  store i32 1, ptr %i.gq, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gc, i64 160
  store double 0.000000e+00, ptr %i.gr, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gc, i64 168
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.gs, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gc, i64 184
  store i32 1, ptr %i.gt, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gc, i64 192
  store double 0.000000e+00, ptr %i.gu, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gc, i64 200
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.gv, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gc, i64 216
  store i32 1, ptr %i.gw, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gc, i64 224
  store double 0.000000e+00, ptr %i.gx, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gc, i64 232
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.gy, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gc, i64 248
  store i32 1, ptr %i.gz, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gc, i64 256 ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.fs
  br i1 %i.hb, label %.loopexit411, label %.new

.loopexit411:                                     ; preds = %.prol.loopexit, %.new, %bb.ak
  %i.hc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fg) #30
          to label %bb.am unwind label %bb.aw     ; 8 uses

bb.am:                                            ; preds = %.loopexit411
  br i1 %i.fi, label %.loopexit410, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hd = getelementptr inbounds [24 x i8], ptr %i.hc, i64 %i.ds
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %bb.an
  %i.he = phi ptr [ %i.hc, %bb.an ], [ %i.hg, %bb.ao ] ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.he, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.hf, align 4
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 24 ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.hd
  br i1 %i.hh, label %.loopexit410.thread, label %bb.ao

.loopexit410:                                     ; preds = %bb.am
  %i.hi = getelementptr inbounds nuw i8, ptr %13, i64 72 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %13, i64 80
  %i.hk = load ptr, ptr %i.hj, align 16
  %i.hl = load ptr, ptr %i.hi, align 8
  %.not = icmp eq ptr %i.hk, %i.hl
  br i1 %.not, label %.loopexit409, label %bb.ap

.loopexit410.thread:                              ; preds = %bb.ao
  %i.hm = getelementptr inbounds nuw i8, ptr %13, i64 72 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %13, i64 80
  %i.ho = load ptr, ptr %i.hn, align 16
  %i.hp = load ptr, ptr %i.hm, align 8
  %.not577 = icmp eq ptr %i.ho, %i.hp
  br i1 %.not577, label %.lr.ph420, label %bb.ap

.lr.ph420:                                        ; preds = %.loopexit410.thread
  %i.hq = load ptr, ptr %14, align 8              ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.hs = load double, ptr %i.hr, align 8         ; 3 uses
  %i.ht = icmp eq i64 %i.dr, 8
  br i1 %i.ht, label %.epil.preheader, label %.lr.ph420.new

.lr.ph420.new:                                    ; preds = %.lr.ph420
  %unroll_iter = and i64 %i.ds, -2
  br label %bb.ax
end_hunk_1
begin_hunk_2_@_ZNK6Assimp3FBX18FileGlobalSettings18OriginalUpAxisSignEv:.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 1, ptr %i.b, align 4
  %i.j = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc4 unwind label %bb.c    ; 2 uses

.noexc4:                                          ; preds = %.noexc.i
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.noexc4
  %i.l = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.j, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyIiEE, i64 0) #27 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %spec.select.i = select i1 %i.m, ptr %i.b, ptr %i.n
  %.1.i.pre = load i32, ptr %spec.select.i, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.noexc4
  %.1.i = phi i32 [ 1, %.noexc4 ], [ %.1.i.pre, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = load ptr, ptr %1, align 8                ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.d
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.q = load i64, ptr %i.d, align 8
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret i32 %.1.i

bb.c:                                             ; preds = %.noexc.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.t = load ptr, ptr %1, align 8                ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.d
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.c
  %i.v = load i64, ptr %i.d, align 8
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef float @_ZNK6Assimp3FBX18FileGlobalSettings15UnitScaleFactorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.c, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.c, ptr noundef nonnull align 1 dereferenceable(15) @.str.194, i64 15, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 15, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 31
  store i8 0, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store float 1.000000e+00, ptr %i.a, align 4
  %i.f = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc4 unwind label %bb.c    ; 2 uses

.noexc4:                                          ; preds = %._crit_edge.i.i
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.noexc4
  %i.h = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.f, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyIfEE, i64 0) #27 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %spec.select.i = select i1 %i.i, ptr %i.a, ptr %i.j
  %.1.i.pre = load float, ptr %spec.select.i, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.noexc4
  %.1.i = phi float [ 1.000000e+00, %.noexc4 ], [ %.1.i.pre, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %1, align 8                ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.c
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.c, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret float %.1.i

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = load ptr, ptr %1, align 8                ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.c
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.c
  %i.r = load i64, ptr %i.c, align 8
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef float @_ZNK6Assimp3FBX18FileGlobalSettings23OriginalUnitScaleFactorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.d, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 23, ptr %i.a, align 8
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %1, align 8
  %i.f = load i64, ptr %i.a, align 8              ; 3 uses
  store i64 %i.f, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.e, ptr noundef nonnull align 1 dereferenceable(23) @.str.195, i64 23, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.f, ptr %i.g, align 8
  %i.h = load ptr, ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  store i8 0, ptr %i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store float 1.000000e+00, ptr %i.b, align 4
  %i.j = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc4 unwind label %bb.c    ; 2 uses

.noexc4:                                          ; preds = %.noexc.i
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.noexc4
  %i.l = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.j, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyIfEE, i64 0) #27 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %spec.select.i = select i1 %i.m, ptr %i.b, ptr %i.n
  %.1.i.pre = load float, ptr %spec.select.i, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.noexc4
  %.1.i = phi float [ 1.000000e+00, %.noexc4 ], [ %.1.i.pre, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = load ptr, ptr %1, align 8                ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.d
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.q = load i64, ptr %i.d, align 8
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret float %.1.i

bb.c:                                             ; preds = %.noexc.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.t = load ptr, ptr %1, align 8                ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.d
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.c
  %i.v = load i64, ptr %i.d, align 8
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { <2 x float>, float } @_ZNK6Assimp3FBX18FileGlobalSettings12AmbientColorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.sroa.0 = alloca i64, align 8                  ; 6 uses
  %.sroa.6 = alloca float, align 4                ; 5 uses
  %i.a = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.b, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef nonnull align 1 dereferenceable(12) @.str.75, i64 12, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 12, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i8 0, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  store i64 0, ptr %.sroa.0, align 8
  store float 0.000000e+00, ptr %.sroa.6, align 4
  %i.e = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc8 unwind label %bb.c    ; 2 uses

.noexc8:                                          ; preds = %._crit_edge.i.i
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.noexc8
  %i.g = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.e, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyI10aiVector3tIfEEE, i64 0) #27 ; 3 uses
  %i.h = icmp eq ptr %i.g, null                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %spec.select.i = select i1 %i.h, ptr %.sroa.0, ptr %i.i
  %.sroa.gep16 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %spec.select.i.sroa.sel = select i1 %i.h, ptr %.sroa.6, ptr %.sroa.gep16
  %.sroa.4.1.i.pre = load float, ptr %spec.select.i.sroa.sel, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.noexc8
  %.sroa.4.1.i = phi float [ 0.000000e+00, %.noexc8 ], [ %.sroa.4.1.i.pre, %bb.a ]
  %.sroa.08.1.in.i = phi ptr [ %.sroa.0, %.noexc8 ], [ %spec.select.i, %bb.a ]
  %.sroa.08.1.i = load <2 x float>, ptr %.sroa.08.1.in.i, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.j = load ptr, ptr %1, align 8                ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.b
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.b, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.08.1.i, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %.sroa.4.1.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret { <2 x float>, float } %.fca.1.insert.i

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.o = load ptr, ptr %1, align 8                ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.c
  %i.q = load i64, ptr %i.b, align 8
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNK6Assimp3FBX18FileGlobalSettings13TimeSpanStartEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.c, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.c, ptr noundef nonnull align 1 dereferenceable(13) @.str.197, i64 13, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 13, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 29
  store i8 0, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.f = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc4 unwind label %bb.c    ; 2 uses

.noexc4:                                          ; preds = %._crit_edge.i.i
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.noexc4
  %i.h = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.f, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyImEE, i64 0) #27 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %spec.select.i = select i1 %i.i, ptr %i.a, ptr %i.j
  %.1.i.pre = load i64, ptr %spec.select.i, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.noexc4
  %.1.i = phi i64 [ 0, %.noexc4 ], [ %.1.i.pre, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %1, align 8                ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.c
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.c, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret i64 %.1.i

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = load ptr, ptr %1, align 8                ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.c
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.c
  %i.r = load i64, ptr %i.c, align 8
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNK6Assimp3FBX18FileGlobalSettings12TimeSpanStopEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.c, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull align 1 dereferenceable(12) @.str.198, i64 12, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 12, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i8 0, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.f = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc4 unwind label %bb.c    ; 2 uses

.noexc4:                                          ; preds = %._crit_edge.i.i
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.noexc4
  %i.h = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.f, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyImEE, i64 0) #27 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %spec.select.i = select i1 %i.i, ptr %i.a, ptr %i.j
  %.1.i.pre = load i64, ptr %spec.select.i, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.noexc4
  %.1.i = phi i64 [ 0, %.noexc4 ], [ %.1.i.pre, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %1, align 8                ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.c
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.c, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret i64 %.1.i

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = load ptr, ptr %1, align 8                ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.c
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.c
  %i.r = load i64, ptr %i.c, align 8
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %i.o
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_Z12ai_to_stringIjENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
end_hunk_2
