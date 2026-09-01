Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/3DSExporter?download=true
inline.NumInlined: 784
inline.NumDeleted: 369
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6Assimp19Discreet3DSExporterC2ERSt10shared_ptrINS_8IOStreamEEPK7aiScene:bb.a

bb.ap:                                            ; preds = %bb.r, %bb.q
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.aq:                                            ; preds = %bb.t, %bb.s
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ar:                                            ; preds = %bb.w, %bb.v
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %bb.y
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev(ptr nonnull %i.a, i64 %i.ct) #21
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %bb.aq
  %.pn.pn = phi { ptr, i32 } [ %i.hw, %bb.aq ], [ %i.hy, %bb.as ], [ %i.hx, %bb.ar ]
  call fastcc void @_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev(ptr nonnull %i.a, i64 %i.bs) #21
  br label %bb.aw

bb.au:                                            ; preds = %bb.af, %bb.ae
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.av:                                            ; preds = %bb.ag
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev(ptr nonnull %i.a, i64 %i.eg) #21
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av, %bb.ap, %bb.at
  %.pn18.pn = phi { ptr, i32 } [ %i.hv, %bb.ap ], [ %.pn.pn, %bb.at ], [ %i.ia, %bb.av ], [ %i.hz, %bb.au ]
  call fastcc void @_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev(ptr nonnull %i.a, i64 %i.aq) #21
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ao, %bb.aw, %bb.an
  %.pn18.pn.pn.pn = phi { ptr, i32 } [ %i.ht, %bb.an ], [ %.pn18.pn, %bb.aw ], [ %i.hu, %bb.ao ]
  call void @_ZNSt8multimapIPK6aiNodejSt4lessIS2_ESaISt4pairIKS2_jEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.ag) #21
  call void @_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.aa) #21
  call void @_ZN6Assimp12StreamWriterILb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #21
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.am
  %.pn18.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn18.pn.pn.pn, %bb.ax ], [ %i.hs, %bb.am ]
  resume { ptr, i32 } %.pn18.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp12StreamWriterILb0ELb0EEC2ESt10shared_ptrINS_8IOStreamEEb(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = load ptr, ptr %1, align 8
  store ptr %i.b, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  store ptr %i.e, ptr %i.c, align 8
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4
  br label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.a, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 32, i1 false)
  %i.o = invoke noalias noundef nonnull dereferenceable(1024) ptr @_Znwm(i64 noundef 1024) #22
          to label %.noexc unwind label %bb.g     ; 4 uses

.noexc:                                           ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit
  %i.p = load ptr, ptr %i.l, align 8              ; 4 uses
  %i.q = load ptr, ptr %i.n, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

bb.e:                                             ; preds = %.noexc
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.p, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i: ; preds = %bb.e, %.noexc
  %.not.i8.i = icmp eq ptr %i.p, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  %i.v = load ptr, ptr %i.m, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.x) #25
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  store ptr %i.o, ptr %i.l, align 8
  store ptr %i.o, ptr %i.n, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 1024
  store ptr %i.y, ptr %i.m, align 8
  ret void

bb.g:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2ERKS2_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %i.l, align 8             ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %i.m, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ae) #25
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.g, %bb.h
  tail call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #21
  resume { ptr, i32 } %i.z
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6Assimp12_GLOBAL__N_113CollectTrafosEPK6aiNodeRSt3mapIS3_12aiMatrix4x4tIfESt4lessIS3_ESaISt4pairIKS3_S6_EEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.22", align 8     ; 4 uses
  %3 = alloca %"class.std::tuple.25", align 1     ; 3 uses
  %4 = alloca %"class.std::tuple.22", align 8     ; 4 uses
  %5 = alloca %"class.std::tuple.25", align 1     ; 3 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.f, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp ult ptr %i.h, %i.c                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.i, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.i, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !7

_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.j = icmp eq ptr %.19.i.i.i.i, %i.f
  br i1 %i.j, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp ult ptr %i.c, %i.l
  br i1 %i.m, label %.critedge.i, label %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit

.critedge.i:                                      ; preds = %bb.c, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i, %bb.b
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.c ], [ %.19.i.i.i.i, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i ], [ %i.f, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr %i.b, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.n = call ptr @_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit

_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit: ; preds = %bb.c, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.n, %.critedge.i ], [ %.19.i.i.i.i, %bb.c ] ; 4 uses
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %7 = load <4 x float>, ptr %6, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56
  %8 = load <4 x float>, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 72
  %9 = load <4 x float>, ptr %.sroa.15.0..sroa_idx, align 4
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 88
  %10 = load <4 x float>, ptr %.sroa.21.0..sroa_idx, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit
  %11 = phi <4 x float> [ %7, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.a ] ; 4 uses
  %12 = phi <4 x float> [ %8, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit ], [ <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.a ] ; 4 uses
  %13 = phi <4 x float> [ %9, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit ], [ <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, %bb.a ] ; 4 uses
  %14 = phi <4 x float> [ %10, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit ], [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.a ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1028
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1044
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1060
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1076
  %i.s = load <4 x float>, ptr %i.o, align 4      ; 4 uses
  %i.t = load <4 x float>, ptr %i.p, align 4      ; 4 uses
  %i.u = shufflevector <4 x float> %11, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.v = fmul <4 x float> %i.u, %i.t
  %i.w = shufflevector <4 x float> %11, <4 x float> poison, <4 x i32> zeroinitializer
  %i.x = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.s, <4 x float> %i.w, <4 x float> %i.v)
  %i.y = load <4 x float>, ptr %i.q, align 4      ; 4 uses
  %i.z = shufflevector <4 x float> %11, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.aa = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.y, <4 x float> %i.z, <4 x float> %i.x)
  %i.ab = load <4 x float>, ptr %i.r, align 4     ; 4 uses
  %i.ac = shufflevector <4 x float> %11, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ad = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %i.ac, <4 x float> %i.aa)
  %15 = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ae = fmul <4 x float> %15, %i.t
  %16 = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> zeroinitializer
  %i.af = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.s, <4 x float> %16, <4 x float> %i.ae)
  %17 = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ag = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.y, <4 x float> %17, <4 x float> %i.af)
  %18 = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ah = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %18, <4 x float> %i.ag)
  %19 = shufflevector <4 x float> %13, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ai = fmul <4 x float> %19, %i.t
  %20 = shufflevector <4 x float> %13, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.s, <4 x float> %20, <4 x float> %i.ai)
  %21 = shufflevector <4 x float> %13, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ak = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.y, <4 x float> %21, <4 x float> %i.aj)
  %22 = shufflevector <4 x float> %13, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.al = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %22, <4 x float> %i.ak)
  %23 = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.am = fmul <4 x float> %23, %i.t
  %24 = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> zeroinitializer
  %i.an = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.s, <4 x float> %24, <4 x float> %i.am)
  %25 = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ao = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.y, <4 x float> %25, <4 x float> %i.an)
  %26 = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ap = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %26, <4 x float> %i.ao)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.not10.i.i.i.i6 = icmp eq ptr %i.ar, null
  br i1 %.not10.i.i.i.i6, label %.critedge.i17, label %.lr.ph.i.i.i.i7

.lr.ph.i.i.i.i7:                                  ; preds = %bb.d, %.lr.ph.i.i.i.i7
  %.012.i.i.i.i8 = phi ptr [ %.1.i.i.i.i13, %.lr.ph.i.i.i.i7 ], [ %i.ar, %bb.d ] ; 3 uses
  %.0811.i.i.i.i9 = phi ptr [ %.19.i.i.i.i10, %.lr.ph.i.i.i.i7 ], [ %i.as, %bb.d ]
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i8, i64 32
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = icmp ult ptr %i.au, %0                  ; 2 uses
  %.19.i.i.i.i10 = select i1 %i.av, ptr %.0811.i.i.i.i9, ptr %.012.i.i.i.i8 ; 6 uses
  %.1.in.v.i.i.i.i11 = select i1 %i.av, i64 24, i64 16
  %.1.in.i.i.i.i12 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i8, i64 %.1.in.v.i.i.i.i11
  %.1.i.i.i.i13 = load ptr, ptr %.1.in.i.i.i.i12, align 8 ; 2 uses
  %.not.i.i.i.i14 = icmp eq ptr %.1.i.i.i.i13, null
  br i1 %.not.i.i.i.i14, label %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i15, label %.lr.ph.i.i.i.i7, !llvm.loop !7

_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i15: ; preds = %.lr.ph.i.i.i.i7
  %i.aw = icmp eq ptr %.19.i.i.i.i10, %i.as
  br i1 %i.aw, label %.critedge.i17, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i15
  %i.ax = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i10, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = icmp ult ptr %0, %i.ay
  br i1 %i.az, label %.critedge.i17, label %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit19

.critedge.i17:                                    ; preds = %bb.e, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i15, %bb.d
  %.08.lcssa.i.i.i11.i18 = phi ptr [ %.19.i.i.i.i10, %bb.e ], [ %.19.i.i.i.i10, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEE11lower_boundERS8_.exit.i15 ], [ %i.as, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr %i.a, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.ba = call ptr @_ZNSt8_Rb_treeIPK6aiNodeSt4pairIKS2_12aiMatrix4x4tIfEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %.08.lcssa.i.i.i11.i18, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit19

_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit19: ; preds = %bb.e, %.critedge.i17
  %.sroa.06.0.i16 = phi ptr [ %i.ba, %.critedge.i17 ], [ %.19.i.i.i.i10, %bb.e ] ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i16, i64 40
  store <4 x float> %i.ad, ptr %i.bb, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i16, i64 56
  store <4 x float> %i.ah, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i16, i64 72
  store <4 x float> %i.al, ptr %.sroa.20.0..sroa_idx, align 4
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i16, i64 88
  store <4 x float> %i.ap, ptr %.sroa.28.0..sroa_idx, align 4
  %i.bc = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1104
  %i.be = load i32, ptr %i.bd, align 8
  %.not60 = icmp eq i32 %i.be, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit19
  ret void

.lr.ph:                                           ; preds = %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit19, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit19 ] ; 2 uses
  %i.bf = phi ptr [ %i.bk, %.lr.ph ], [ %i.bc, %_ZNSt3mapIPK6aiNode12aiMatrix4x4tIfESt4lessIS2_ESaISt4pairIKS2_S4_EEEixERS8_.exit19 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1112
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv
  %i.bj = load ptr, ptr %i.bi, align 8
  call fastcc void @_ZN6Assimp12_GLOBAL__N_113CollectTrafosEPK6aiNodeRSt3mapIS3_12aiMatrix4x4tIfESt4lessIS3_ESaISt4pairIKS3_S6_EEE(ptr noundef %i.bj, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bk = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1104
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = zext i32 %i.bm to i64
  %i.bo = icmp samesign ult i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %.lr.ph, label %._crit_edge, !llvm.loop !9
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6Assimp12_GLOBAL__N_113CollectMeshesEPK6aiNodeRSt8multimapIS3_jSt4lessIS3_ESaISt4pairIKS3_jEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br label %bb.b

.preheader:                                       ; preds = %_ZNSt8multimapIPK6aiNodejSt4lessIS2_ESaISt4pairIKS2_jEEE6insertIS5_IS2_jEEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeEOSD_.exit, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %.not15 = icmp eq i32 %i.h, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph14

.lr.ph14:                                         ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1112
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph, %_ZNSt8multimapIPK6aiNodejSt4lessIS2_ESaISt4pairIKS2_jEEE6insertIS5_IS2_jEEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeEOSD_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt8multimapIPK6aiNodejSt4lessIS2_ESaISt4pairIKS2_jEEE6insertIS5_IS2_jEEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeEOSD_.exit ] ; 2 uses
  %i.j = load ptr, ptr %i.c, align 8
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4
  %i.m = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #22 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 %i.l, ptr %i.o, align 8
  %.078.i.i.i = load ptr, ptr %i.d, align 8       ; 2 uses
  %.not9.i.i.i = icmp eq ptr %.078.i.i.i, null
  br i1 %.not9.i.i.i, label %_ZNSt8multimapIPK6aiNodejSt4lessIS2_ESaISt4pairIKS2_jEEE6insertIS5_IS2_jEEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeEOSD_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.0710.i.i.i = phi ptr [ %.07.i.i.i, %.lr.ph.i.i.i ], [ %.078.i.i.i, %bb.b ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp ult ptr %0, %i.q                    ; 2 uses
  %.in.v.i.i.i = select i1 %i.r, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 %.in.v.i.i.i
  %.07.i.i.i = load ptr, ptr %.in.i.i.i, align 8  ; 2 uses
  %.not.i.i.i = icmp eq ptr %.07.i.i.i, null
  br i1 %.not.i.i.i, label %bb.c, label %.lr.ph.i.i.i, !llvm.loop !10

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.s = icmp eq ptr %.0710.i.i.i, %i.e
  %spec.select.i.i = or i1 %i.s, %i.r
  br label %_ZNSt8multimapIPK6aiNodejSt4lessIS2_ESaISt4pairIKS2_jEEE6insertIS5_IS2_jEEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeEOSD_.exit

_ZNSt8multimapIPK6aiNodejSt4lessIS2_ESaISt4pairIKS2_jEEE6insertIS5_IS2_jEEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueESt17_Rb_tree_iteratorIS7_EE4typeEOSD_.exit: ; preds = %bb.b, %bb.c
  %.0.lcssa.i15.i.i = phi ptr [ %i.e, %bb.b ], [ %.0710.i.i.i, %bb.c ]
  %i.t = phi i1 [ true, %bb.b ], [ %spec.select.i.i, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.t, ptr noundef nonnull %i.m, ptr noundef nonnull %.0.lcssa.i15.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.e) #21
  %i.u = load i64, ptr %i.f, align 8
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.f, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = load i32, ptr %i.a, align 8
  %i.x = zext i32 %i.w to i64
  %i.y = icmp samesign ult i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %bb.b, label %.preheader, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.d, %.preheader
  ret void

bb.d:                                             ; preds = %.lr.ph14, %bb.d
  %indvars.iv17 = phi i64 [ 0, %.lr.ph14 ], [ %indvars.iv.next18, %bb.d ] ; 2 uses
  %i.z = load ptr, ptr %i.i, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv17
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call fastcc void @_ZN6Assimp12_GLOBAL__N_113CollectMeshesEPK6aiNodeRSt8multimapIS3_jSt4lessIS3_ESaISt4pairIKS3_jEEE(ptr noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1 ; 2 uses
  %i.ac = load i32, ptr %i.g, align 8
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp samesign ult i64 %indvars.iv.next18, %i.ad
  br i1 %i.ae, label %bb.d, label %._crit_edge, !llvm.loop !12
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19Discreet3DSExporter14WriteMaterialsEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %1 = alloca %class.aiColor4t, align 8           ; 7 uses
  %2 = alloca %class.aiColor4t, align 8           ; 7 uses
  %3 = alloca %class.aiColor4t, align 8           ; 7 uses
  %4 = alloca %class.aiColor4t, align 8           ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %struct.aiColor3D, align 8          ; 13 uses
  %i.b = alloca float, align 4                    ; 9 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 130 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 111 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 39 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %i.g, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit260, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit260
  %i.r = phi i64 [ %.pre, %.lr.ph ], [ %i.yt, %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit260 ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN6Assimp12_GLOBAL__N_111ChunkWriterD2Ev.exit260 ] ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 4 uses
  %i.t = load ptr, ptr %i.i, align 8
end_hunk_0
