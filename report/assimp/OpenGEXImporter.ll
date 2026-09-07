Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/OpenGEXImporter?download=true
inline.NumInlined: 1858
inline.NumDeleted: 966
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6Assimp7OpenGEX15OpenGEXImporter16handleCameraNodeEPN10ODDLParser7DDLNodeEP7aiScene:bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(1084) ptr @_Znwm(i64 noundef 1084) #31 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1044
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1084) %i.b, i8 0, i64 1044, i1 false)
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1060
  store <4 x float> <float 1.000000e+00, float f0x3F490FDB, float 1.000000e-01, float 1.000000e+03>, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1076
  store <2 x float> zeroinitializer, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.h, align 8
  %i.k = load ptr, ptr %i.g, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.l, ptr %i.g, align 8
  br label %_ZNSt6vectorIP8aiCameraSaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o                       ; 5 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIP8aiCameraSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #30
  unreachable

_ZNKSt6vectorIP8aiCameraSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #31 ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.p ; 2 uses
  store ptr %i.b, ptr %i.y, align 8
  %i.z = icmp sgt i64 %i.p, 0
  br i1 %i.z, label %bb.e, label %_ZNSt6vectorIP8aiCameraSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIP8aiCameraSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.m, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIP8aiCameraSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP8aiCameraSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIP8aiCameraSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.not.i17.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP8aiCameraSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIP8aiCameraSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.ab = load ptr, ptr %i.i, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.ad) #29
  br label %_ZNSt6vectorIP8aiCameraSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP8aiCameraSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIP8aiCameraSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.x, ptr %i.f, align 8
  store ptr %i.aa, ptr %i.g, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ae, ptr %i.i, align 8
  br label %_ZNSt6vectorIP8aiCameraSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP8aiCameraSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIP8aiCameraSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  store ptr %i.b, ptr %i.af, align 8
  %i.ag = tail call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #31 ; 5 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.ag)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %_ZNSt6vectorIP8aiCameraSaIS1_EE9push_backERKS1_.exit
  tail call void @_ZN6Assimp7OpenGEX15OpenGEXImporter8pushNodeEP6aiNodeP7aiScene(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull %i.ag, ptr noundef %2)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i32 6, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 416
  store ptr %i.ag, ptr %i.ai, align 8
  tail call void @_ZN6Assimp7OpenGEX15OpenGEXImporter11handleNodesEPN10ODDLParser7DDLNodeEP7aiScene(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr noundef %2)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = icmp eq ptr %i.ak, %i.am
  br i1 %i.an, label %_ZN6Assimp7OpenGEX15OpenGEXImporter7popNodeEv.exit, label %_ZNK6Assimp7OpenGEX15OpenGEXImporter3topEv.exit.i

_ZNK6Assimp7OpenGEX15OpenGEXImporter3topEv.exit.i: ; preds = %bb.g
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -8
  store ptr %i.ao, ptr %i.al, align 8
  br label %_ZN6Assimp7OpenGEX15OpenGEXImporter7popNodeEv.exit

_ZN6Assimp7OpenGEX15OpenGEXImporter7popNodeEv.exit: ; preds = %bb.g, %_ZNK6Assimp7OpenGEX15OpenGEXImporter3topEv.exit.i
  %i.ap = load ptr, ptr %i.af, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.ar, ptr %3, align 8
  %i.as = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aq) #32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.as, ptr %i.a, align 8
  %i.at = icmp ugt i64 %i.as, 15
  br i1 %i.at, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN6Assimp7OpenGEX15OpenGEXImporter7popNodeEv.exit
  %i.au = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.au, ptr %3, align 8
  %i.av = load i64, ptr %i.a, align 8
  store i64 %i.av, ptr %i.ar, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %_ZN6Assimp7OpenGEX15OpenGEXImporter7popNodeEv.exit
  %i.aw = phi ptr [ %i.au, %.noexc.i ], [ %i.ar, %_ZN6Assimp7OpenGEX15OpenGEXImporter7popNodeEv.exit ] ; 2 uses
  switch i64 %i.as, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ax = load i8, ptr %i.aq, align 1
  store i8 %i.ax, ptr %i.aw, align 1
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr nonnull align 1 %i.aq, i64 %i.as, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i
  %i.ay = load i64, ptr %i.a, align 8             ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.ay, ptr %i.az, align 8
  %i.ba = load ptr, ptr %3, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ay
  store i8 0, ptr %i.bb, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.bc = load i64, ptr %i.az, align 8            ; 5 uses
  %i.bd = icmp ugt i64 %i.bc, 1023
  %.pre = load ptr, ptr %3, align 8               ; 3 uses
  br i1 %i.bd, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = trunc nuw nsw i64 %i.bc to i32
  store i32 %i.be, ptr %i.ap, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bf, ptr align 1 %.pre, i64 %i.bc, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bc
  store i8 0, ptr %i.bg, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.j, %bb.k
  %i.bh = icmp eq ptr %.pre, %i.ar
  br i1 %i.bh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bi = icmp ult i64 %i.bc, 16
  call void @llvm.assume(i1 %i.bi)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bj = load i64, ptr %i.ar, align 8
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.bk) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.l:                                             ; preds = %_ZNSt6vectorIP8aiCameraSaIS1_EE9push_backERKS1_.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 1144) #29
  resume { ptr, i32 } %i.bl
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp7OpenGEX15OpenGEXImporter20handleGeometryObjectEPN10ODDLParser7DDLNodeEP7aiScene(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN6Assimp7OpenGEX15OpenGEXImporter11handleNodesEPN10ODDLParser7DDLNodeEP7aiScene(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp7OpenGEX15OpenGEXImporter18handleCameraObjectEPN10ODDLParser7DDLNodeEP7aiScene(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN6Assimp7OpenGEX15OpenGEXImporter11handleNodesEPN10ODDLParser7DDLNodeEP7aiScene(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp7OpenGEX15OpenGEXImporter19handleTransformNodeEPN10ODDLParser7DDLNodeEP7aiScene(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(776) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x float], align 16            ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.10)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZNK10ODDLParser7DDLNode16getDataArrayListEv(ptr noundef nonnull align 8 dereferenceable(136) %1) ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load i64, ptr %i.g, align 8
  %.not8 = icmp eq i64 %i.h, 16
  br i1 %.not8, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str.15)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %bb.f
  %i.k = load ptr, ptr %i.b, align 8              ; 7 uses
  %i.l = getelementptr i8, ptr %i.g, i64 8
  %.val = load ptr, ptr %i.l, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = tail call noundef float @_ZNK10ODDLParser5Value8getFloatEv(ptr noundef nonnull align 8 dereferenceable(32) %.val)
  %.not1.i = icmp eq ptr %i.n, null
  br i1 %.not1.i, label %_ZN6Assimp7OpenGEXL9setMatrixEP6aiNodePN10ODDLParser13DataArrayListE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.03.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.n, %bb.j ] ; 2 uses
  %.0222.i = phi i64 [ %i.t, %.lr.ph.i ], [ 1, %bb.j ] ; 2 uses
  %i.p = tail call noundef float @_ZNK10ODDLParser5Value8getFloatEv(ptr noundef nonnull align 8 dereferenceable(32) %.03.i)
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0222.i
  store float %i.p, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %.03.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = add nuw nsw i64 %.0222.i, 1
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN6Assimp7OpenGEXL9setMatrixEP6aiNodePN10ODDLParser13DataArrayListE.exit, label %.lr.ph.i, !llvm.loop !53

_ZN6Assimp7OpenGEXL9setMatrixEP6aiNodePN10ODDLParser13DataArrayListE.exit: ; preds = %.lr.ph.i, %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 1028
  store float %i.o, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 1032
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.x = load <12 x float>, ptr %i.w, align 4
  %i.y = shufflevector <12 x float> %i.x, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.y, ptr %i.v, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 1048
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load <12 x float>, ptr %i.aa, align 8
  %i.ac = shufflevector <12 x float> %i.ab, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.ac, ptr %i.z, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 1064
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.af = load <12 x float>, ptr %i.ae, align 4
  %i.ag = shufflevector <12 x float> %i.af, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.ag, ptr %i.ad, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ai = load float, ptr %i.ah, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 1080
  store float %i.ai, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.al = load float, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 1084
  store float %i.al, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.ao = load float, ptr %i.an, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 1088
  store float %i.ao, ptr %i.ap, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.k

bb.k:                                             ; preds = %_ZN6Assimp7OpenGEXL9setMatrixEP6aiNodePN10ODDLParser13DataArrayListE.exit, %bb.e
  ret void

bb.l:                                             ; preds = %bb.i, %bb.d
  %.sink = phi ptr [ %i.i, %bb.i ], [ %i.e, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.j, %bb.i ], [ %i.f, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #32
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp7OpenGEX15OpenGEXImporter14handleMeshNodeEPN10ODDLParser7DDLNodeEP7aiScene(ptr noundef nonnull align 8 dereferenceable(776) initializes((616, 624)) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #31 ; 9 uses
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1272
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1312
  store ptr null, ptr %i.g, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.d, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.e, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.f, i8 0, i64 36, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  store ptr %i.a, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 5 uses
  %i.l = load ptr, ptr %i.i, align 8              ; 10 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 4 uses
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = ashr exact i64 %i.o, 3                   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8
  %.not.i = icmp eq ptr %i.k, %i.r
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %i.k, align 8
  %i.s = load ptr, ptr %i.j, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.t, ptr %i.j, align 8
  br label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12emplace_backIJRPS1_EEERS4_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.u = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.u, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #30
  unreachable

_ZNKSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.p
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975)
  %i.y = select i1 %i.w, i64 1152921504606846975, i64 %i.x ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #31 ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.o
  %i.ac = load ptr, ptr %i.h, align 8
  store ptr %i.ac, ptr %i.ab, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.l, %i.k
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.ad = add i64 %i.m, -8
  %i.ae = sub i64 %i.ad, %i.n                     ; 2 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader56, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ah = add i64 %i.m, -8
  %i.ai = sub i64 %i.ah, %i.n
  %i.aj = and i64 %i.ai, -8
  %i.ak = add i64 %i.aj, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aa, i64 %i.ak
  %scevgep52 = getelementptr i8, ptr %i.l, i64 %i.ak
  %bound0 = icmp ult ptr %i.aa, %scevgep52
  %bound1 = icmp ult ptr %i.l, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader56, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 4611686018427387900     ; 3 uses
  %i.al = shl i64 %n.vec, 3                       ; 2 uses
  %i.am = getelementptr i8, ptr %i.aa, i64 %i.al  ; 2 uses
  %i.an = getelementptr i8, ptr %i.l, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.ao ; 2 uses
  %next.gep53 = getelementptr i8, ptr %i.l, i64 %i.ao ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.ap = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep53, align 8, !alias.scope !64, !noalias !62
  %wide.load54 = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !64, !noalias !62
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !65, !noalias !64
  store <2 x i64> %wide.load54, ptr %i.aq, align 8, !alias.scope !65, !noalias !64
  %i.ar = getelementptr i8, ptr %next.gep53, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep53, align 8, !alias.scope !64, !noalias !62
  store <2 x ptr> splat (ptr null), ptr %i.ar, align 8, !alias.scope !64, !noalias !62
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader56

.lr.ph.i.i.i.i.i.preheader56:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph.i.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader56, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader56 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader56 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.at = load i64, ptr %.0911.i.i.i.i.i, align 8, !alias.scope !63, !noalias !62
  store i64 %i.at, ptr %.012.i.i.i.i.i, align 8, !alias.scope !62, !noalias !63
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !alias.scope !63, !noalias !62
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.au, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !61

_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aa, %_ZNKSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.am, %middle.block ], [ %i.av, %.lr.ph.i.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJRPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  %i.ax = load ptr, ptr %i.q, align 8
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.az) #29
  br label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJRPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJRPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  store ptr %i.aa, ptr %i.i, align 8
  store ptr %i.aw, ptr %i.j, align 8
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.ba, ptr %i.q, align 8
  br label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12emplace_backIJRPS1_EEERS4_DpOT_.exit

_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12emplace_backIJRPS1_EEERS4_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJRPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %i.bb = tail call noundef ptr @_ZNK10ODDLParser7DDLNode13getPropertiesEv(ptr noundef nonnull align 8 dereferenceable(136) %1) ; 2 uses
  %.not = icmp eq ptr %i.bb, null
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12emplace_backIJRPS1_EEERS4_DpOT_.exit
end_hunk_0
