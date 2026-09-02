Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/X3DImporter_Postprocess?download=true
inline.NumInlined: 858
inline.NumDeleted: 400
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK6Assimp11X3DImporter40PostprocessHelper_Matrix_GlobalToCurrentEv:bb.a
  %.not12 = icmp eq ptr %i.v, null
  br i1 %.not12, label %.loopexit, label %.preheader, !llvm.loop !7

.loopexit:                                        ; preds = %bb.d
  %.pre = load ptr, ptr %2, align 8, !noalias !12 ; 3 uses
  %.not5367 = icmp eq ptr %2, %.pre
  br i1 %.not5367, label %_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %.sroa.13.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.21.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.29.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e
  store <4 x float> %i.as, ptr %0, align 4
  store <4 x float> %i.ba, ptr %.sroa.13.0..sroa_idx27, align 4
  store <4 x float> %i.bi, ptr %.sroa.21.0..sroa_idx35, align 4
  store <4 x float> %i.bq, ptr %.sroa.29.0..sroa_idx43, align 4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.w = load ptr, ptr %.09.i.i, align 8          ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 80) #20
  %.not.i.i = icmp eq ptr %i.w, %2
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !10

_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit.critedge: ; preds = %bb.a, %.loopexit
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %0, align 4
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.d, align 4
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.f, align 4
  store float 1.000000e+00, ptr %i.h, align 4
  br label %_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit

_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit: ; preds = %.lr.ph.i.i, %_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.052.069 = phi ptr [ %2, %.lr.ph ], [ %i.ac, %bb.e ]
  %i.x = phi <4 x float> [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.lr.ph ], [ %i.as, %bb.e ] ; 4 uses
  %i.y = phi <4 x float> [ <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.lr.ph ], [ %i.ba, %bb.e ] ; 4 uses
  %i.z = phi <4 x float> [ <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, %.lr.ph ], [ %i.bi, %bb.e ] ; 4 uses
  %i.aa = phi <4 x float> [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %.lr.ph ], [ %i.bq, %bb.e ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.052.069, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8            ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ah = load <4 x float>, ptr %i.ad, align 4    ; 4 uses
  %i.ai = load <4 x float>, ptr %i.ae, align 4    ; 4 uses
  %i.aj = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ak = fmul <4 x float> %i.aj, %i.ai
  %i.al = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> zeroinitializer
  %i.am = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ah, <4 x float> %i.al, <4 x float> %i.ak)
  %i.an = load <4 x float>, ptr %i.af, align 4    ; 4 uses
  %i.ao = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ap = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.an, <4 x float> %i.ao, <4 x float> %i.am)
  %i.aq = load <4 x float>, ptr %i.ag, align 4    ; 4 uses
  %i.ar = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.as = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> %i.ar, <4 x float> %i.ap) ; 2 uses
  %i.at = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.au = fmul <4 x float> %i.at, %i.ai
  %i.av = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ah, <4 x float> %i.av, <4 x float> %i.au)
  %i.ax = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ay = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.an, <4 x float> %i.ax, <4 x float> %i.aw)
  %i.az = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ba = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> %i.az, <4 x float> %i.ay) ; 2 uses
  %i.bb = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bc = fmul <4 x float> %i.bb, %i.ai
  %i.bd = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> zeroinitializer
  %i.be = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ah, <4 x float> %i.bd, <4 x float> %i.bc)
  %i.bf = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.an, <4 x float> %i.bf, <4 x float> %i.be)
  %i.bh = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> %i.bh, <4 x float> %i.bg) ; 2 uses
  %i.bj = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bk = fmul <4 x float> %i.bj, %i.ai
  %i.bl = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ah, <4 x float> %i.bl, <4 x float> %i.bk)
  %i.bn = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.an, <4 x float> %i.bn, <4 x float> %i.bm)
  %i.bp = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> %i.bp, <4 x float> %i.bo) ; 2 uses
  %.not53 = icmp eq ptr %i.ac, %.pre
  br i1 %.not53, label %._crit_edge, label %bb.e, !llvm.loop !11

.lr.ph.i.i16:                                     ; preds = %bb.c, %.lr.ph.i.i16
  %.09.i.i17 = phi ptr [ %i.br, %.lr.ph.i.i16 ], [ %i.t, %bb.c ] ; 2 uses
  %i.br = load ptr, ptr %.09.i.i17, align 8       ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i17, i64 noundef 80) #20
  %.not.i.i18 = icmp eq ptr %i.br, %2
  br i1 %.not.i.i18, label %_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit19, label %.lr.ph.i.i16, !llvm.loop !10

_ZNSt7__cxx1110_List_baseI12aiMatrix4x4tIfESaIS2_EED2Ev.exit19: ; preds = %.lr.ph.i.i16, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %i.s
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp11X3DImporter33PostprocessHelper_CollectMetadataERK18X3DNodeElementBaseRNSt7__cxx114listIPS1_SaIS6_EEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(120) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(76) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %.sroa.05.015 = load ptr, ptr %i.a, align 8     ; 2 uses
  %.not16 = icmp eq ptr %.sroa.05.015, %i.a
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.05.017 = phi ptr [ %.sroa.05.015, %.lr.ph ], [ %.sroa.05.0, %bb.e ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.05.017, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load i32, ptr %i.e, align 8
  switch i32 %i.f, label %bb.e [
    i32 1, label %bb.c
    i32 2, label %bb.c
    i32 3, label %bb.c
    i32 4, label %bb.c
    i32 6, label %bb.c
    i32 5, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.g = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.c, align 8
  store ptr %i.i, ptr %i.h, align 8
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  %i.j = load i64, ptr %i.b, align 8
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.b, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_ZNK6Assimp11X3DImporter33PostprocessHelper_CollectMetadataERK18X3DNodeElementBaseRNSt7__cxx114listIPS1_SaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(76) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.05.0 = load ptr, ptr %.sroa.05.017, align 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.05.0, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK6Assimp11X3DImporter35PostprocessHelper_ElementIsMetadataE11X3DElemType(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(120) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = add i32 %1, -1
  %or.cond9 = icmp ult i32 %i.a, 6
  ret i1 %or.cond9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK6Assimp11X3DImporter31PostprocessHelper_ElementIsMeshE11X3DElemType(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(120) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = insertelement <6 x i32> poison, i32 %1, i64 0 ; 2 uses
  %i.b = shufflevector <6 x i32> %i.a, <6 x i32> poison, <6 x i32> zeroinitializer
  %i.c = add <6 x i32> %i.b, <i32 -7, i32 -15, i32 -19, i32 -24, i32 -11, i32 -31>
  %i.d = shufflevector <6 x i32> %i.a, <6 x i32> poison, <2 x i32> zeroinitializer
  %i.e = icmp eq <2 x i32> %i.d, <i32 18, i32 14>
  %i.f = icmp ult <6 x i32> %i.c, <i32 4, i32 3, i32 2, i32 7, i32 3, i32 2>
  %i.g = shufflevector <6 x i1> %i.f, <6 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.h = shufflevector <2 x i1> %i.e, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.i = shufflevector <8 x i1> %i.g, <8 x i1> %i.h, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.j = icmp eq i32 %1, 33
  %i.k = bitcast <8 x i1> %i.i to i8
  %i.l = icmp ne i8 %i.k, 0
  %op.rdx = or i1 %i.l, %i.j
  ret i1 %op.rdx
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp11X3DImporter22Postprocess_BuildLightERK18X3DNodeElementBaseRNSt7__cxx114listIP7aiLightSaIS7_EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.aiMatrix4x4t, align 4        ; 20 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZNK6Assimp11X3DImporter40PostprocessHelper_Matrix_GlobalToCurrentEv(ptr dead_on_unwind nonnull writable sret(%class.aiMatrix4x4t) align 4 %3, ptr noundef nonnull align 8 dereferenceable(120) %0)
  %i.a = tail call noalias noundef nonnull dereferenceable(1132) ptr @_Znwm(i64 noundef 1132) #19 ; 24 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1132) %i.a, i8 0, i64 1072, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1076 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1116 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.c, i8 0, i64 40, i1 false)
  store <4 x float> <float f0x40C90FDB, float f0x40C90FDB, float 0.000000e+00, float 0.000000e+00>, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8              ; 4 uses
  %i.g = icmp ugt i64 %i.f, 1023
  br i1 %i.g, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = trunc nuw nsw i64 %i.f to i32
  store i32 %i.i, ptr %i.a, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 1 %i.k, i64 %i.f, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  store i8 0, ptr %i.l, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.a, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1108
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.q = load float, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1080
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1092
  %i.u = load <4 x float>, ptr %i.m, align 4      ; 3 uses
  %i.v = load <2 x float>, ptr %i.n, align 4, !noalias !16
  %i.w = shufflevector <4 x float> %i.u, <4 x float> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x float> %i.w, %i.v
  store <2 x float> %i.x, ptr %i.o, align 4
  %i.y = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 poison, i32 0>
  %i.z = insertelement <4 x float> %i.y, float %i.q, i64 2 ; 2 uses
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> %i.u, <4 x i32> <i32 2, i32 2, i32 7, i32 0>
  %i.ab = fmul <4 x float> %i.z, %i.aa            ; 3 uses
  %i.ac = shufflevector <4 x float> %i.ab, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.ac, ptr %i.r, align 4
  %i.ad = extractelement <4 x float> %i.ab, i64 2
  store float %i.ad, ptr %i.s, align 4
  store <4 x float> %i.ab, ptr %i.t, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8
  switch i32 %i.af, label %bb.f [
    i32 41, label %bb.c
    i32 42, label %bb.d
    i32 43, label %bb.e
  ]

bb.c:                                             ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 1028
  store i32 1, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 1044 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ai, ptr noundef nonnull align 4 dereferenceable(12) %i.ah, i64 12, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 1052
  %i.ak = load <3 x float>, ptr %i.ai, align 4    ; 5 uses
  %i.al = load float, ptr %i.ai, align 4
  %i.am = load <8 x float>, ptr %3, align 4       ; 4 uses
  %i.an = shufflevector <3 x float> %i.ak, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ao = shufflevector <8 x float> %i.am, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.ap = fmul <2 x float> %i.an, %i.ao
  %i.aq = shufflevector <8 x float> %i.am, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.ar = shufflevector <3 x float> %i.ak, <3 x float> poison, <2 x i32> zeroinitializer
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> %i.ar, <2 x float> %i.ap)
  %i.at = shufflevector <8 x float> %i.am, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.au = shufflevector <3 x float> %i.ak, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> %i.au, <2 x float> %i.as)
  %i.aw = shufflevector <8 x float> %i.am, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.ax = fadd <2 x float> %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.az = load float, ptr %i.ay, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.bb = load float, ptr %i.ba, align 4
  %i.bc = extractelement <3 x float> %i.ak, i64 1
  %i.bd = fmul float %i.bc, %i.bb
  %i.be = tail call float @llvm.fmuladd.f32(float %i.az, float %i.al, float %i.bd)
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bg = load float, ptr %i.bf, align 4
  %i.bh = extractelement <3 x float> %i.ak, i64 2
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.bh, float %i.be)
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.bk = load float, ptr %i.bj, align 4
  %i.bl = fadd float %i.bk, %i.bi
  store <2 x float> %i.ax, ptr %i.ai, align 4
  store float %i.bl, ptr %i.aj, align 4
  br label %bb.o

bb.d:                                             ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 1028
  store i32 2, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 1032 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bo, ptr noundef nonnull align 4 dereferenceable(12) %i.bn, i64 12, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 1040
  %i.bq = load <3 x float>, ptr %i.bo, align 4    ; 5 uses
  %i.br = load float, ptr %i.bo, align 4
  %i.bs = load <8 x float>, ptr %3, align 4       ; 4 uses
  %i.bt = shufflevector <3 x float> %i.bq, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bu = shufflevector <8 x float> %i.bs, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.bv = fmul <2 x float> %i.bt, %i.bu
  %i.bw = shufflevector <8 x float> %i.bs, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.bx = shufflevector <3 x float> %i.bq, <3 x float> poison, <2 x i32> zeroinitializer
  %i.by = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.bx, <2 x float> %i.bv)
  %i.bz = shufflevector <8 x float> %i.bs, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.ca = shufflevector <3 x float> %i.bq, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.ca, <2 x float> %i.by)
  %i.cc = shufflevector <8 x float> %i.bs, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.cd = fadd <2 x float> %i.cb, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cf = load float, ptr %i.ce, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ch = load float, ptr %i.cg, align 4
  %i.ci = extractelement <3 x float> %i.bq, i64 1
  %i.cj = fmul float %i.ci, %i.ch
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.br, float %i.cj)
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cm = load float, ptr %i.cl, align 4
  %i.cn = extractelement <3 x float> %i.bq, i64 2
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.cn, float %i.ck)
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.cq = load float, ptr %i.cp, align 4
  %i.cr = fadd float %i.cq, %i.co
  store <2 x float> %i.cd, ptr %i.bo, align 4
  store float %i.cr, ptr %i.bp, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 1068
  %i.cu = load <2 x float>, ptr %i.cs, align 8
  store <2 x float> %i.cu, ptr %i.ct, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.cw = load float, ptr %i.cv, align 8
  store float %i.cw, ptr %i.c, align 4
  br label %bb.o

bb.e:                                             ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 1028
  store i32 3, ptr %i.cx, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 1032 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cz, ptr noundef nonnull align 4 dereferenceable(12) %i.cy, i64 12, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 1040
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 28
  %7 = load <3 x float>, ptr %i.cz, align 4       ; 5 uses
  %8 = load float, ptr %i.cz, align 4
  %i.df = load <8 x float>, ptr %3, align 4       ; 4 uses
  %i.dg = load float, ptr %i.de, align 4
  %i.dh = load <4 x float>, ptr %i.dc, align 4
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %9 = shufflevector <3 x float> %7, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dj = shufflevector <8 x float> %i.df, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %10 = fmul <2 x float> %9, %i.dj
  %i.dk = shufflevector <8 x float> %i.df, <8 x float> poison, <2 x i32> <i32 0, i32 4> ; 2 uses
  %11 = shufflevector <3 x float> %7, <3 x float> poison, <2 x i32> zeroinitializer
  %12 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dk, <2 x float> %11, <2 x float> %10)
  %i.dl = shufflevector <8 x float> %i.df, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %13 = shufflevector <3 x float> %7, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %14 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %13, <2 x float> %12)
  %i.dm = shufflevector <8 x float> %i.df, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %15 = fadd <2 x float> %14, %i.dm
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 32
  store <2 x float> %15, ptr %i.cz, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 1044 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dp, ptr noundef nonnull align 4 dereferenceable(12) %i.do, i64 12, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 1052
  %i.dr = load <2 x float>, ptr %i.dd, align 4    ; 2 uses
  %i.ds = load <2 x float>, ptr %i.da, align 4    ; 2 uses
  %16 = load <3 x float>, ptr %i.dp, align 4      ; 5 uses
  %17 = load float, ptr %i.dp, align 4
  %18 = shufflevector <2 x float> %i.ds, <2 x float> %i.dr, <2 x i32> <i32 0, i32 2>
  %i.dt = shufflevector <3 x float> %16, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.du = fmul <2 x float> %18, %i.dt
  %i.dv = shufflevector <3 x float> %16, <3 x float> poison, <2 x i32> zeroinitializer
  %i.dw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dk, <2 x float> %i.dv, <2 x float> %i.du)
  %19 = shufflevector <2 x float> %i.ds, <2 x float> %i.dr, <2 x i32> <i32 1, i32 3>
  %i.dx = shufflevector <3 x float> %16, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.dy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> %i.dx, <2 x float> %i.dw)
  %20 = insertelement <2 x float> %i.di, float %i.dg, i64 1
  %21 = fadd <2 x float> %20, %i.dy
  %22 = load <4 x float>, ptr %i.dn, align 4      ; 4 uses
  %23 = shufflevector <3 x float> %7, <3 x float> %16, <2 x i32> <i32 1, i32 4>
  %i.dz = shufflevector <4 x float> %22, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %24 = fmul <2 x float> %23, %i.dz
  %25 = shufflevector <4 x float> %22, <4 x float> poison, <2 x i32> zeroinitializer
  %26 = insertelement <2 x float> poison, float %8, i64 0
  %27 = insertelement <2 x float> %26, float %17, i64 1
  %i.ea = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> %27, <2 x float> %24)
  %i.eb = shufflevector <4 x float> %22, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %28 = shufflevector <3 x float> %7, <3 x float> %16, <2 x i32> <i32 2, i32 5>
  %i.ec = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eb, <2 x float> %28, <2 x float> %i.ea)
  %i.ed = shufflevector <4 x float> %22, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.ee = fadd <2 x float> %i.ed, %i.ec           ; 2 uses
  %i.ef = extractelement <2 x float> %i.ee, i64 0
  store float %i.ef, ptr %i.db, align 4
  store <2 x float> %21, ptr %i.dp, align 4
  %i.eg = extractelement <2 x float> %i.ee, i64 1
  store float %i.eg, ptr %i.dq, align 4
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 1068
  %i.ej = load <2 x float>, ptr %i.eh, align 8
  store <2 x float> %i.ej, ptr %i.ei, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.el = load float, ptr %i.ek, align 8
  store float %i.el, ptr %i.c, align 4
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.en = load <2 x float>, ptr %i.em, align 4
  store <2 x float> %i.en, ptr %i.d, align 4
  br label %bb.o

bb.f:                                             ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.eo = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ep = load i32, ptr %i.ae, align 8
  invoke void @_Z12ai_to_stringI11X3DElemTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, i32 noundef %i.ep)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread

bb.g:                                             ; preds = %bb.f
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.thread

bb.h:                                             ; preds = %bb.g
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.1)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN17DeadlyImportErrorC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.eo, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.p unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread: ; preds = %bb.f
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.k:                                             ; preds = %bb.h
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.l:                                             ; preds = %bb.j, %bb.i
  %.0 = phi i1 [ false, %bb.j ], [ true, %bb.i ]  ; 2 uses
  %i.es = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.et = load ptr, ptr %4, align 8               ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.ew = load i64, ptr %i.eu, align 8
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k
  %.pn = phi { ptr, i32 } [ %i.er, %bb.k ], [ %i.es, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.es, %bb.l ] ; 4 uses
  %.1 = phi i1 [ true, %bb.k ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0, %bb.l ] ; 2 uses
  %i.ey = load ptr, ptr %5, align 8               ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fb = load i64, ptr %i.ez, align 8
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  %i.fd = load ptr, ptr %6, align 8               ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.thread: ; preds = %bb.g
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fh = load ptr, ptr %6, align 8               ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.thread
  %i.fk = load i64, ptr %i.fi, align 8
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fl) #20
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %i.fm = load i64, ptr %i.fe, align 8
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fn) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br i1 %.1, label %bb.m, label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br i1 %.1, label %bb.m, label %bb.n

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.thread
  %.pn.pn.pn68.ph = phi { ptr, i32 } [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.thread ], [ %i.eq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread ], [ %i.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %.pn.pn.pn68 = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %.pn.pn.pn68.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.eo) #18
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %.pn.pn.pn67 = phi { ptr, i32 } [ %.pn.pn.pn68, %bb.m ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn.pn.pn67

bb.o:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.fo = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store ptr %i.a, ptr %i.fp, align 8
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.fo, ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8
  %i.fs = add i64 %i.fr, 1
  store i64 %i.fs, ptr %i.fq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.p:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #18 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = sub i64 4611686018427387903, %i.c
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2, i64 noundef %i.a) ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8
  %i.h = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  store ptr %i.h, ptr %0, align 8
  %i.o = load i64, ptr %i.i, align 8
  store i64 %i.o, ptr %i.g, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = phi i64 [ %i.l, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.r, align 8
  store ptr %i.i, ptr %i.f, align 8
  store i64 0, ptr %i.q, align 8
  store i8 0, ptr %i.i, align 8
  ret void
end_hunk_0
