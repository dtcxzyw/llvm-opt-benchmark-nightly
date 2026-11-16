Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CB3DMeshFileLoader?download=true
inline.NumInlined: 1646
inline.NumDeleted: 601
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN5scene18CB3DMeshFileLoader13readChunkBRUSEv:bb.a

bb.by:                                            ; preds = %bb.bx
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.kj, ptr nonnull align 8 %i.kk, i64 %i.km, i1 false)
  br label %_ZN4core5arrayIN5scene9SB3dChunkEE5eraseEj.exit

bb.bz:                                            ; preds = %bb.bx
  %i.ko = icmp eq i64 %i.km, 16
  br i1 %i.ko, label %bb.ca, label %_ZN4core5arrayIN5scene9SB3dChunkEE5eraseEj.exit

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kj, ptr noundef nonnull align 8 dereferenceable(16) %i.kk, i64 16, i1 false), !tbaa.struct !91
  br label %_ZN4core5arrayIN5scene9SB3dChunkEE5eraseEj.exit

_ZN4core5arrayIN5scene9SB3dChunkEE5eraseEj.exit:  ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5scene9SB3dChunkESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %bb.by, %bb.bz, %bb.ca
  %i.kp = load ptr, ptr %i.n, align 8, !tbaa !88
  %i.kq = getelementptr inbounds i8, ptr %i.kp, i64 -16
  store ptr %i.kq, ptr %i.n, align 8, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5scene18CB3DMeshFileLoader13readChunkNODEEPNS_11SkinnedMesh6SJointE(ptr noundef nonnull align 8 dereferenceable(247) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca [3 x float], align 4              ; 5 uses
  %i.c = alloca [3 x float], align 4              ; 5 uses
  %i.d = alloca [4 x float], align 16             ; 6 uses
  %3 = alloca %"struct.scene::SB3dChunkHeader", align 4 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.f = tail call noundef ptr @_ZN5scene18SkinnedMeshBuilder8addJointEPNS_11SkinnedMesh6SJointE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef %1) ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !68, !alias.scope !228
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.h, align 8, !tbaa !71, !alias.scope !228
  store i8 0, ptr %i.g, align 8, !tbaa !72, !alias.scope !228
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !228
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !74, !noalias !228 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef i64 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZN5scene18CB3DMeshFileLoader10readStringB5cxx11Ev.exit, label %bb.e

bb.d:                                             ; preds = %bb.g, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !228
  %i.p = load ptr, ptr %2, align 8, !tbaa !73, !alias.scope !228 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.g
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.g, align 8, !tbaa !72, !alias.scope !228
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.t = load i8, ptr %i.a, align 1, !tbaa !72, !noalias !228 ; 2 uses
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %_ZN5scene18CB3DMeshFileLoader10readStringB5cxx11Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.h, align 8, !tbaa !71, !alias.scope !228 ; 4 uses
  %i.w = add i64 %i.v, 1                          ; 3 uses
  %i.x = load ptr, ptr %2, align 8, !tbaa !73, !alias.scope !228 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.g
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i8.i: ; preds = %bb.f
  %i.z = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.z)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.f
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !72, !alias.scope !228
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i8.i
  %i.ab = phi i64 [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i8.i ]
  %i.ac = icmp ugt i64 %i.w, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.v, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc9.i unwind label %bb.d

.noexc9.i:                                        ; preds = %bb.g
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !73, !alias.scope !228
  br label %bb.h

bb.h:                                             ; preds = %.noexc9.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.ad = phi ptr [ %.pre.i.i, %.noexc9.i ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.v
  store i8 %i.t, ptr %i.ae, align 1, !tbaa !72
  store i64 %i.w, ptr %i.h, align 8, !tbaa !71, !alias.scope !228
  %i.af = load ptr, ptr %2, align 8, !tbaa !73, !alias.scope !228
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.w
  store i8 0, ptr %i.ag, align 1, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !228
  br label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.o

_ZN5scene18CB3DMeshFileLoader10readStringB5cxx11Ev.exit: ; preds = %bb.c, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !228
  %i.ah = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %2) #25 ; 0 uses
  %i.ai = load ptr, ptr %2, align 8, !tbaa !73    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.g
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5scene18CB3DMeshFileLoader10readStringB5cxx11Ev.exit
  %i.ak = load i64, ptr %i.g, align 8, !tbaa !72
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5scene18CB3DMeshFileLoader10readStringB5cxx11Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.am = load ptr, ptr %i.i, align 8, !tbaa !74  ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !14
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call noundef i64 %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull %i.b, i64 noundef 12), !inline_history !109 ; 0 uses
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !74  ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !14
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call noundef i64 %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull %i.c, i64 noundef 12), !inline_history !109 ; 0 uses
  %i.au = load ptr, ptr %i.i, align 8, !tbaa !74  ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !14
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call noundef i64 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull %i.d, i64 noundef 16), !inline_history !109 ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.az = load float, ptr %i.b, align 4, !tbaa !116 ; 3 uses
  %i.ba = load <2 x float>, ptr %i.ay, align 4, !tbaa !116 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !116 ; 7 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.be = load <2 x float>, ptr %i.bd, align 8, !tbaa !116 ; 5 uses
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 0> ; 5 uses
  %i.bg = load float, ptr %i.d, align 16, !tbaa !116 ; 7 uses
  %i.bh = load float, ptr %i.c, align 4, !tbaa !116 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bj = load <2 x float>, ptr %i.bi, align 4, !tbaa !116 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 4, !tbaa !230
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %_ZNSt7variantIJN4core9TransformENS0_8CMatrix4IfEEEEaSIRS1_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS1_S3_EE4typeEE18is_constructible_vISC_S9_E15is_assignable_vIRSC_S9_EERS4_E4typeESA_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store i8 0, ptr %i.bl, align 4, !tbaa !230
  br label %_ZNSt7variantIJN4core9TransformENS0_8CMatrix4IfEEEEaSIRS1_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS1_S3_EE4typeEE18is_constructible_vISC_S9_E15is_assignable_vIRSC_S9_EERS4_E4typeESA_.exit

_ZNSt7variantIJN4core9TransformENS0_8CMatrix4IfEEEEaSIRS1_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS1_S3_EE4typeEE18is_constructible_vISC_S9_E15is_assignable_vIRSC_S9_EERS4_E4typeESA_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i
  store float %i.az, ptr %i.bk, align 4, !tbaa !116
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  store <2 x float> %i.ba, ptr %i.bo, align 4, !tbaa !116
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  store float %i.bc, ptr %i.bp, align 4, !tbaa !116
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store <2 x float> %i.be, ptr %i.bq, align 4, !tbaa !116
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.bs = insertelement <4 x float> poison, float %i.bg, i64 0
  %i.bt = insertelement <4 x float> %i.bs, float %i.bh, i64 1
  %i.bu = shufflevector <2 x float> %i.bj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bv = shufflevector <4 x float> %i.bt, <4 x float> %i.bu, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x float> %i.bv, ptr %i.br, align 4, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt7variantIJN4core9TransformENS0_8CMatrix4IfEEEEaSIRS1_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS1_S3_EE4typeEE18is_constructible_vISC_S9_E15is_assignable_vIRSC_S9_EERS4_E4typeESA_.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 256
  %foldExtExtBinop = fmul <3 x float> %i.bf, %i.bf
  %i.bx = extractelement <3 x float> %foldExtExtBinop, i64 2
  %i.by = call float @llvm.fmuladd.f32(float %i.bc, float %i.bc, float %i.bx)
  %i.bz = extractelement <2 x float> %i.be, i64 1 ; 2 uses
  %i.ca = call float @llvm.fmuladd.f32(float %i.bz, float %i.bz, float %i.by)
  %i.cb = call float @llvm.fmuladd.f32(float %i.bg, float %i.bg, float %i.ca)
  %i.cc = fpext float %i.cb to double
  %sqrt.i.i.i = call double @llvm.sqrt.f64(double %i.cc)
  %i.cd = fdiv double 1.000000e+00, %sqrt.i.i.i
  %i.ce = fptrunc double %i.cd to float           ; 3 uses
  %4 = fmul float %i.bc, %i.ce                    ; 2 uses
  %i.cf = fmul float %i.bg, %i.ce                 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.cj = insertelement <3 x float> poison, float %i.ce, i64 0
  %i.ck = shufflevector <3 x float> %i.cj, <3 x float> poison, <3 x i32> zeroinitializer
  %i.cl = fmul <3 x float> %i.bf, %i.ck           ; 5 uses
  %i.cm = extractelement <3 x float> %i.cl, i64 2 ; 2 uses
  %5 = fmul float %i.cm, 2.000000e+00             ; 2 uses
  %i.cn = extractelement <3 x float> %i.cl, i64 0
  %6 = insertelement <3 x float> poison, float %4, i64 0
  %7 = fmul float %i.cf, %5                       ; 2 uses
  %8 = fneg float %7
  %i.co = insertelement <3 x float> poison, float %7, i64 0
  %i.cp = insertelement <3 x float> poison, float %i.bh, i64 0
  %i.cq = shufflevector <3 x float> %i.cp, <3 x float> poison, <3 x i32> zeroinitializer
  %i.cr = load <4 x float>, ptr %i.bw, align 4, !tbaa !116, !noalias !231 ; 4 uses
  %i.cs = load <4 x float>, ptr %i.cg, align 4, !tbaa !116, !noalias !231 ; 4 uses
  %i.ct = load <4 x float>, ptr %i.ch, align 4, !tbaa !116, !noalias !231 ; 4 uses
  %i.cu = load <4 x float>, ptr %i.ci, align 4, !tbaa !116, !noalias !231 ; 4 uses
  %i.cv = shufflevector <3 x float> %i.cl, <3 x float> poison, <3 x i32> <i32 2, i32 2, i32 0>
  %i.cw = shufflevector <2 x float> %i.bj, <2 x float> poison, <3 x i32> zeroinitializer
  %9 = fneg float %5                              ; 2 uses
  %10 = call float @llvm.fmuladd.f32(float %9, float %i.cm, float 1.000000e+00)
  %i.cx = fmul float %i.cn, 2.000000e+00          ; 4 uses
  %i.cy = fneg float %i.cx                        ; 2 uses
  %i.cz = insertelement <3 x float> %6, float %i.cy, i64 1
  %i.da = fmul <3 x float> %i.cz, <float 2.000000e+00, float 1.000000e+00, float poison> ; 3 uses
  %i.db = shufflevector <3 x float> %i.da, <3 x float> poison, <3 x i32> <i32 0, i32 1, i32 0>
  %11 = fmul float %i.cf, %i.cx                   ; 2 uses
  %12 = extractelement <3 x float> %i.da, i64 0   ; 2 uses
  %13 = fneg float %11
  %i.dc = fneg float %12
  %i.dd = call float @llvm.fmuladd.f32(float %i.dc, float %4, float 1.000000e+00) ; 2 uses
  %14 = fmul float %i.cf, %12                     ; 2 uses
  %15 = insertelement <3 x float> %i.co, float %10, i64 1
  %16 = insertelement <3 x float> %15, float %13, i64 2
  %17 = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.db, <3 x float> %i.cl, <3 x float> %16)
  %18 = fneg float %14
  %i.de = shufflevector <3 x float> %i.da, <3 x float> poison, <3 x i32> <i32 poison, i32 0, i32 poison> ; 2 uses
  %i.df = insertelement <3 x float> %i.de, float %9, i64 0
  %i.dg = insertelement <3 x float> %i.df, float %i.cx, i64 2
  %i.dh = shufflevector <3 x float> %i.cl, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 2>
  %19 = insertelement <3 x float> poison, float %i.dd, i64 0
  %20 = insertelement <3 x float> %19, float %8, i64 1
  %21 = insertelement <3 x float> %20, float %14, i64 2
  %i.di = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dg, <3 x float> %i.dh, <3 x float> %21)
  %i.dj = fmul <3 x float> %i.cq, %17             ; 3 uses
  %i.dk = shufflevector <2 x float> %i.bj, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.dl = fmul <3 x float> %i.dk, %i.di           ; 3 uses
  %i.dm = shufflevector <3 x float> %i.dj, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.dn = fmul <4 x float> %i.dm, %i.cs
  %i.do = shufflevector <3 x float> %i.dj, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cr, <4 x float> %i.do, <4 x float> %i.dn)
  %i.dq = shufflevector <3 x float> %i.dj, <3 x float> poison, <4 x i32> zeroinitializer
  %i.dr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ct, <4 x float> %i.dq, <4 x float> %i.dp)
  %i.ds = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> zeroinitializer, <4 x float> %i.dr)
  %22 = insertelement <3 x float> %i.de, float %i.cx, i64 0
  %i.dt = insertelement <3 x float> %22, float %i.cy, i64 2
  %i.du = insertelement <3 x float> poison, float %18, i64 0
  %23 = insertelement <3 x float> %i.du, float %11, i64 1
  %i.dv = insertelement <3 x float> %23, float %i.dd, i64 2
  %i.dw = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dt, <3 x float> %i.cv, <3 x float> %i.dv)
  %i.dx = fmul <3 x float> %i.cw, %i.dw           ; 3 uses
  %i.dy = shufflevector <3 x float> %i.dx, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.dz = fmul <4 x float> %i.dy, %i.cs
  %i.ea = shufflevector <3 x float> %i.dx, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.eb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cr, <4 x float> %i.ea, <4 x float> %i.dz)
  %i.ec = shufflevector <3 x float> %i.dx, <3 x float> poison, <4 x i32> zeroinitializer
  %i.ed = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ct, <4 x float> %i.ec, <4 x float> %i.eb)
  %i.ee = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> zeroinitializer, <4 x float> %i.ed)
  %i.ef = shufflevector <3 x float> %i.dl, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.eg = fmul <4 x float> %i.ef, %i.cs
  %i.eh = shufflevector <3 x float> %i.dl, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ei = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cr, <4 x float> %i.eh, <4 x float> %i.eg)
  %i.ej = shufflevector <3 x float> %i.dl, <3 x float> poison, <4 x i32> zeroinitializer
  %i.ek = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ct, <4 x float> %i.ej, <4 x float> %i.ei)
  %i.el = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> zeroinitializer, <4 x float> %i.ek)
  %i.em = shufflevector <2 x float> %i.ba, <2 x float> poison, <4 x i32> zeroinitializer
  %i.en = fmul <4 x float> %i.em, %i.cs
  %i.eo = insertelement <4 x float> poison, float %i.az, i64 0
  %i.ep = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cr, <4 x float> %i.ep, <4 x float> %i.en)
  %i.er = shufflevector <2 x float> %i.ba, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.es = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ct, <4 x float> %i.er, <4 x float> %i.eq)
  %i.et = fadd <4 x float> %i.cu, %i.es
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt7variantIJN4core9TransformENS0_8CMatrix4IfEEEEaSIRS1_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS1_S3_EE4typeEE18is_constructible_vISC_S9_E15is_assignable_vIRSC_S9_EERS4_E4typeESA_.exit
  %foldExtExtBinop201 = fmul <3 x float> %i.bf, %i.bf
  %i.eu = extractelement <3 x float> %foldExtExtBinop201, i64 2
  %i.ev = call float @llvm.fmuladd.f32(float %i.bc, float %i.bc, float %i.eu)
  %i.ew = extractelement <2 x float> %i.be, i64 1 ; 2 uses
  %i.ex = call float @llvm.fmuladd.f32(float %i.ew, float %i.ew, float %i.ev)
  %i.ey = call float @llvm.fmuladd.f32(float %i.bg, float %i.bg, float %i.ex)
  %i.ez = fpext float %i.ey to double
  %sqrt.i.i.i22 = call double @llvm.sqrt.f64(double %i.ez)
  %i.fa = fdiv double 1.000000e+00, %sqrt.i.i.i22
  %i.fb = fptrunc double %i.fa to float           ; 3 uses
  %i.fc = fmul float %i.bc, %i.fb                 ; 2 uses
  %i.fd = fmul float %i.bg, %i.fb                 ; 3 uses
  %i.fe = shufflevector <2 x float> %i.be, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 poison>
  %i.ff = insertelement <4 x float> %i.fe, float -0.000000e+00, i64 3
  %i.fg = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.fb, i64 0
  %i.fh = shufflevector <4 x float> %i.fg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fi = fmul <4 x float> %i.ff, %i.fh           ; 5 uses
  %i.fj = extractelement <4 x float> %i.fi, i64 1 ; 2 uses
  %i.fk = fmul float %i.fj, 2.000000e+00          ; 2 uses
  %i.fl = extractelement <4 x float> %i.fi, i64 0
  %i.fm = fmul float %i.fd, %i.fk                 ; 2 uses
  %i.fn = fneg float %i.fm
  %i.fo = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.bh, i64 0
  %i.fp = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fq = shufflevector <4 x float> %i.fi, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 0, i32 1, i32 7>
  %i.fr = shufflevector <2 x float> %i.bj, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fs = shufflevector <4 x float> %i.fr, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.ft = fneg float %i.fk                        ; 2 uses
  %i.fu = call float @llvm.fmuladd.f32(float %i.ft, float %i.fj, float 1.000000e+00)
  %i.fv = fmul float %i.fl, 2.000000e+00          ; 4 uses
  %i.fw = fneg float %i.fv                        ; 2 uses
  %i.fx = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.fw, i64 0
  %i.fy = insertelement <4 x float> %i.fx, float %i.fc, i64 1
  %i.fz = fmul <4 x float> %i.fy, <float 1.000000e+00, float 2.000000e+00, float poison, float 0.000000e+00> ; 3 uses
  %i.ga = shufflevector <4 x float> %i.fz, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.gb = fmul float %i.fd, %i.fv                 ; 2 uses
  %i.gc = extractelement <4 x float> %i.fz, i64 1 ; 2 uses
  %i.gd = fneg float %i.gb
  %i.ge = fneg float %i.gc
  %i.gf = call float @llvm.fmuladd.f32(float %i.ge, float %i.fc, float 1.000000e+00) ; 2 uses
  %i.gg = fmul float %i.fd, %i.gc                 ; 2 uses
  %i.gh = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.fu, i64 0
  %i.gi = insertelement <4 x float> %i.gh, float %i.gd, i64 1
  %i.gj = insertelement <4 x float> %i.gi, float %i.fm, i64 2
  %i.gk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ga, <4 x float> %i.fi, <4 x float> %i.gj)
  %i.gl = fneg float %i.gg
  %i.gm = shufflevector <4 x float> %i.fz, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 poison, i32 poison, i32 7> ; 2 uses
  %i.gn = insertelement <4 x float> %i.gm, float %i.fv, i64 1
  %i.go = insertelement <4 x float> %i.gn, float %i.ft, i64 2
  %i.gp = shufflevector <4 x float> %i.fi, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 1, i32 7>
  %i.gq = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.fn, i64 0
  %i.gr = insertelement <4 x float> %i.gq, float %i.gg, i64 1
  %i.gs = insertelement <4 x float> %i.gr, float %i.gf, i64 2
  %i.gt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.go, <4 x float> %i.gp, <4 x float> %i.gs)
  %i.gu = fmul <4 x float> %i.fp, %i.gk
  %i.gv = insertelement <4 x float> %i.gm, float %i.fw, i64 1
  %i.gw = insertelement <4 x float> %i.gv, float %i.fv, i64 2
  %i.gx = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.gb, i64 0
  %i.gy = insertelement <4 x float> %i.gx, float %i.gf, i64 1
  %i.gz = insertelement <4 x float> %i.gy, float %i.gl, i64 2
  %i.ha = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gw, <4 x float> %i.fq, <4 x float> %i.gz)
  %i.hb = fmul <4 x float> %i.fs, %i.ha
  %i.hc = shufflevector <4 x float> %i.bu, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.hd = fmul <4 x float> %i.hc, %i.gt
  %i.he = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.az, i64 0
  %i.hf = shufflevector <2 x float> %i.ba, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hg = shufflevector <4 x float> %i.he, <4 x float> %i.hf, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.hh = phi <4 x float> [ %i.gu, %bb.k ], [ %i.ds, %bb.j ]
  %i.hi = phi <4 x float> [ %i.hb, %bb.k ], [ %i.ee, %bb.j ]
  %i.hj = phi <4 x float> [ %i.hd, %bb.k ], [ %i.el, %bb.j ]
  %i.hk = phi <4 x float> [ %i.hg, %bb.k ], [ %i.et, %bb.j ]
  %i.hl = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  store <4 x float> %i.hh, ptr %i.hl, align 8
  %.sroa.751.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  store <4 x float> %i.hi, ptr %.sroa.751.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 288
  store <4 x float> %i.hj, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 304
  store <4 x float> %i.hk, ptr %.sroa.15.0..sroa_idx, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 13 uses
  %i.ho = load ptr, ptr %i.hm, align 8, !tbaa !93
  %i.hp = load ptr, ptr %i.hn, align 8, !tbaa !93 ; 2 uses
  %i.hq = icmp eq ptr %i.ho, %i.hp
  br i1 %i.hq, label %._crit_edge, label %_ZN4core5arrayIN5scene9SB3dChunkEE7getLastEv.exit23.lr.ph

_ZN4core5arrayIN5scene9SB3dChunkEE7getLastEv.exit23.lr.ph: ; preds = %bb.l
  %i.hr = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 240
  br label %_ZN4core5arrayIN5scene9SB3dChunkEE7getLastEv.exit23

._crit_edge:                                      ; preds = %.critedge, %bb.l
  call void @__assert_fail(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 206, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5scene9SB3dChunkEE7getLastEv) #28
  unreachable

_ZN4core5arrayIN5scene9SB3dChunkEE7getLastEv.exit23: ; preds = %_ZN4core5arrayIN5scene9SB3dChunkEE7getLastEv.exit23.lr.ph, %.critedge
  %i.ia = phi ptr [ %i.hp, %_ZN4core5arrayIN5scene9SB3dChunkEE7getLastEv.exit23.lr.ph ], [ %i.mh, %.critedge ] ; 2 uses
  %i.ib = getelementptr inbounds i8, ptr %i.ia, i64 -8
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !95
  %i.id = getelementptr inbounds i8, ptr %i.ia, i64 -12
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !96
  %i.if = sext i32 %i.ie to i64
  %i.ig = add nsw i64 %i.ic, %i.if
  %i.ih = load ptr, ptr %i.i, align 8, !tbaa !74  ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !14
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  %i.ik = load ptr, ptr %i.ij, align 8
  %i.il = call noundef i64 %i.ik(ptr noundef nonnull align 8 dereferenceable(8) %i.ih)
  %.not140.not.not.not.not = icmp sle i64 %i.ig, %i.il ; 2 uses
  br i1 %.not140.not.not.not.not, label %bb.ag, label %bb.m

bb.m:                                             ; preds = %_ZN4core5arrayIN5scene9SB3dChunkEE7getLastEv.exit23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.im = load ptr, ptr %i.i, align 8, !tbaa !74  ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !14
  %i.io = load ptr, ptr %i.in, align 8
  %i.ip = call noundef i64 %i.io(ptr noundef nonnull align 8 dereferenceable(8) %i.im, ptr noundef nonnull %3, i64 noundef 8) ; 0 uses
  %i.iq = load ptr, ptr %i.i, align 8, !tbaa !74  ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !14
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  %i.it = load ptr, ptr %i.is, align 8
  %i.iu = call noundef i64 %i.it(ptr noundef nonnull align 8 dereferenceable(8) %i.iq)
  %i.iv = add nsw i64 %i.iu, -8                   ; 2 uses
  %i.iw = load i32, ptr %i.hr, align 4, !tbaa !87
  %i.ix = call i32 @llvm.smax.i32(i32 %i.iw, i32 0)
  %.sroa.speculated.i = add nuw nsw i32 %i.ix, 8  ; 2 uses
  %i.iy = load i8, ptr %3, align 4, !tbaa !72     ; 2 uses
  %i.iz = load i8, ptr %i.hs, align 1, !tbaa !72  ; 2 uses
  %i.ja = load i8, ptr %i.ht, align 2, !tbaa !72  ; 2 uses
  %i.jb = load i8, ptr %i.hu, align 1, !tbaa !72  ; 2 uses
  %i.jc = load ptr, ptr %i.hn, align 8, !tbaa !88 ; 10 uses
  %i.jd = load ptr, ptr %i.hv, align 8, !tbaa !83
  %.not.i.i.i = icmp eq ptr %i.jc, %i.jd
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 %i.iy, ptr %i.jc, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jc, i64 1
  store i8 %i.iz, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jc, i64 2
  store i8 %i.ja, ptr %.sroa.6.0..sroa_idx, align 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jc, i64 3
  store i8 %i.jb, ptr %.sroa.7.0..sroa_idx, align 1, !tbaa !72
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  store i32 %.sroa.speculated.i, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !89
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  store i64 %i.iv, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !90
  %i.je = load ptr, ptr %i.hn, align 8, !tbaa !88
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16 ; 2 uses
  store ptr %i.jf, ptr %i.hn, align 8, !tbaa !88
  %.pre = load ptr, ptr %i.hm, align 8, !tbaa !93
  br label %_ZN4core5arrayIN5scene9SB3dChunkEE9push_backEOS2_.exit

bb.o:                                             ; preds = %bb.m
  %i.jg = load ptr, ptr %i.hm, align 8, !tbaa !82 ; 5 uses
  %i.jh = ptrtoint ptr %i.jc to i64
  %i.ji = ptrtoint ptr %i.jg to i64               ; 2 uses
  %i.jj = sub i64 %i.jh, %i.ji                    ; 3 uses
  %i.jk = icmp eq i64 %i.jj, 9223372036854775792
  br i1 %i.jk, label %bb.p, label %_ZNKSt6vectorIN5scene9SB3dChunkESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #29
  unreachable
end_hunk_0
