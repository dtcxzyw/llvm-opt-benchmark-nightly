Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/ASELoader?download=true
inline.NumInlined: 2170
inline.NumDeleted: 1074
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6Assimp11ASEImporter15ConvertMaterialERNS_3ASE8MaterialE:bb.a
  %i.fr = trunc nuw nsw i64 %i.fm to i32
  store i32 %i.fr, ptr %2, align 4
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ft = load ptr, ptr %i.fq, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fs, ptr align 1 %i.ft, i64 %i.fm, i1 false)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fm
  store i8 0, ptr %i.fu, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i74

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i74: ; preds = %bb.ap, %bb.ao
  %i.fv = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.fo, ptr noundef nonnull %2, ptr noundef nonnull @.str.18, i32 noundef 7, i32 noundef 0) ; 0 uses
  %i.fw = load float, ptr %i.fn, align 8
  %i.fx = fcmp ord float %i.fw, 0.000000e+00
  br i1 %i.fx, label %bb.aq, label %_ZN6Assimp14CopyASETextureER10aiMaterialRNS_4D3DS7TextureE13aiTextureType.exit75

bb.aq:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i74
  %i.fy = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.fo, ptr noundef nonnull align 8 dereferenceable(72) %i.fn, i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef 7, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %_ZN6Assimp14CopyASETextureER10aiMaterialRNS_4D3DS7TextureE13aiTextureType.exit75

_ZN6Assimp14CopyASETextureER10aiMaterialRNS_4D3DS7TextureE13aiTextureType.exit75: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i74, %bb.aq
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.ga = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.fo, ptr noundef nonnull %i.fz, i32 noundef 20, ptr noundef nonnull @.str.20, i32 noundef 7, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN6Assimp14CopyASETextureER10aiMaterialRNS_4D3DS7TextureE13aiTextureType.exit75, %bb.an
  %i.gb = load i64, ptr %i.z, align 8             ; 5 uses
  %.not63 = icmp eq i64 %i.gb, 0
  br i1 %.not63, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %10, i8 0, i64 1028, i1 false)
  %i.gc = icmp ugt i64 %i.gb, 1023
  br i1 %i.gc, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit76, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gd = trunc nuw nsw i64 %i.gb to i32
  store i32 %i.gd, ptr %10, align 4
  %i.ge = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.gf = load ptr, ptr %i.y, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ge, ptr align 1 %i.gf, i64 %i.gb, i1 false)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gb
  store i8 0, ptr %i.gg, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit76

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit76: ; preds = %bb.as, %bb.at
  %i.gh = load ptr, ptr %i.e, align 8
  %i.gi = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.gh, ptr noundef nonnull %10, ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.au

bb.au:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit76, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  ret void
}

declare void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8          ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #24
  br label %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !5

_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorI14aiVertexWeightSaIS1_EESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #24
  br label %_ZNSt12_Vector_baseISt6vectorI14aiVertexWeightSaIS1_EESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorI14aiVertexWeightSaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z34ComputeNormalsWithSmoothingsGroupsIN6Assimp3ASE4FaceEEvR23MeshWithSmoothingGroupsIT_E(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.aiVector3t, align 8          ; 5 uses
  %2 = alloca %"class.std::vector.38", align 8    ; 12 uses
  %3 = alloca %"class.Assimp::SGSpatialSort", align 8 ; 15 uses
  %4 = alloca %"class.std::vector.112", align 8   ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %0, align 8
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = sdiv exact i64 %i.g, 12                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store <2 x float> zeroinitializer, ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float 0.000000e+00, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 12                  ; 3 uses
  %i.q = icmp ugt i64 %i.h, %i.p
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = sub nuw nsw i64 %i.h, %i.p
  call void @_ZNSt6vectorI10aiVector3tIfESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.k, i64 noundef %i.r, ptr noundef nonnull align 4 dereferenceable(12) %1)
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.s = icmp ult i64 %i.h, %i.p
  br i1 %i.s, label %bb.d, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.t
  br i1 %.not.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit, label %_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.t, ptr %i.j, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not257 = icmp eq ptr %i.w, %i.x
  br i1 %.not257, label %.preheader217, label %.lr.ph

.preheader217:                                    ; preds = %.lr.ph, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit
  %i.y = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.z = load ptr, ptr %0, align 8                ; 3 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = sdiv exact i64 %i.ac, 12
  %.not258 = icmp eq ptr %i.y, %i.z
  br i1 %.not258, label %._crit_edge, label %.lr.ph229

.lr.ph:                                           ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit, %.lr.ph
  %i.ae = phi ptr [ %i.bs, %.lr.ph ], [ %i.x, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit ]
  %i.af = phi i64 [ %i.bq, %.lr.ph ], [ 0, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit ]
  %.082221 = phi i32 [ %i.bp, %.lr.ph ], [ 0, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEmRKS1_.exit ]
  %i.ag = getelementptr inbounds nuw [132 x i8], ptr %i.ae, i64 %i.af ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = load ptr, ptr %0, align 8               ; 3 uses
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %i.ai ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %i.ar ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.at = load float, ptr %5, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %6 = load float, ptr %i.au, align 4
  %7 = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %8 = load float, ptr %7, align 4
  %i.av = load <2 x float>, ptr %i.ao, align 4    ; 2 uses
  %i.aw = load <2 x float>, ptr %i.ak, align 4    ; 3 uses
  %i.ax = fsub <2 x float> %i.av, %i.aw           ; 2 uses
  %9 = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ay = insertelement <2 x float> %9, float %i.at, i64 0
  %10 = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.az = insertelement <2 x float> %10, float %6, i64 0 ; 2 uses
  %i.ba = fsub <2 x float> %i.ay, %i.az           ; 2 uses
  %i.bb = load <2 x float>, ptr %i.as, align 4    ; 2 uses
  %11 = fsub <2 x float> %i.bb, %i.aw             ; 2 uses
  %12 = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bc = insertelement <2 x float> %12, float %8, i64 0
  %i.bd = fsub <2 x float> %i.bc, %i.az           ; 2 uses
  %13 = extractelement <2 x float> %11, i64 1
  %14 = fneg float %13
  %15 = extractelement <2 x float> %i.ba, i64 0
  %16 = fmul float %15, %14
  %17 = extractelement <2 x float> %i.ax, i64 1
  %i.be = extractelement <2 x float> %i.bd, i64 0
  %18 = call float @llvm.fmuladd.f32(float %17, float %i.be, float %16)
  %19 = fneg <2 x float> %i.bd
  %20 = fmul <2 x float> %i.ax, %19
  %21 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %11, <2 x float> %20) ; 2 uses
  %.sroa.0.0.vec.insert.i99 = insertelement <2 x float> poison, float %18, i64 0
  %22 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i99, <2 x float> %21, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.bf = load ptr, ptr %i.a, align 8
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %i.bf, i64 %i.ai ; 2 uses
  store <2 x float> %22, ptr %i.bg, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %23 = extractelement <2 x float> %21, i64 1     ; 3 uses
  store float %23, ptr %.sroa.4.0..sroa_idx, align 4
  %i.bh = load i32, ptr %i.al, align 4
  %i.bi = zext i32 %i.bh to i64
  %i.bj = load ptr, ptr %i.a, align 8
  %i.bk = getelementptr inbounds nuw [12 x i8], ptr %i.bj, i64 %i.bi ; 2 uses
  store <2 x float> %22, ptr %i.bk, align 4
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store float %23, ptr %.sroa.4.0..sroa_idx.1, align 4
  %i.bl = load i32, ptr %i.ap, align 4
  %i.bm = zext i32 %i.bl to i64
  %i.bn = load ptr, ptr %i.a, align 8
  %i.bo = getelementptr inbounds nuw [12 x i8], ptr %i.bn, i64 %i.bm ; 2 uses
  store <2 x float> %22, ptr %i.bo, align 4
  %.sroa.4.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store float %23, ptr %.sroa.4.0..sroa_idx.2, align 4
  %i.bp = add i32 %.082221, 1                     ; 2 uses
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = load ptr, ptr %i.v, align 8
  %i.bs = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = sdiv exact i64 %i.bv, 132
  %i.bx = icmp ugt i64 %i.bw, %i.bq
  br i1 %i.bx, label %.lr.ph, label %.preheader217, !llvm.loop !129

._crit_edge.loopexit:                             ; preds = %.lr.ph229
  %foldExtExtBinop = fsub <2 x float> %i.db, %i.cz
  %i.by = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop323 = fsub <2 x float> %i.db, %i.cz ; 2 uses
  %i.bz = fsub float %.sroa.speculated, %.sroa.speculated196 ; 2 uses
  %foldExtExtBinop325 = fmul <2 x float> %foldExtExtBinop323, %foldExtExtBinop323
  %i.ca = extractelement <2 x float> %foldExtExtBinop325, i64 1
  %i.cb = call float @llvm.fmuladd.f32(float %i.by, float %i.by, float %i.ca)
  %i.cc = call float @llvm.fmuladd.f32(float %i.bz, float %i.bz, float %i.cb)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader217
  %i.cd = phi float [ 1.200000e+21, %.preheader217 ], [ %i.cc, %._crit_edge.loopexit ]
  %i.ce = call noundef float @sqrtf(float noundef %i.cd) #23
  %i.cf = fmul float %i.ce, f0x3727C5AC           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.cg = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ch = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj                    ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not301 = icmp eq ptr %i.cg, %i.ch
  br i1 %.not301, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.cm = sdiv exact i64 %i.ck, 12
  %i.cn = icmp ugt i64 %i.cm, 768614336404564650
  br i1 %i.cn, label %.noexc133, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i

.noexc133:                                        ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #25
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.e
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #26 ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cp, i8 0, i64 %i.ck, i1 false)
  store ptr %i.cp, ptr %2, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.ck ; 2 uses
  store ptr %i.cq, ptr %i.cl, align 8
  store ptr %i.cq, ptr %i.co, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

.lr.ph229:                                        ; preds = %.preheader217, %.lr.ph229
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph229 ], [ 0, %.preheader217 ] ; 2 uses
  %.sroa.13193.0225 = phi float [ %.sroa.speculated196, %.lr.ph229 ], [ 1.000000e+10, %.preheader217 ] ; 2 uses
  %.sroa.13.0222 = phi float [ %.sroa.speculated, %.lr.ph229 ], [ -1.000000e+10, %.preheader217 ] ; 2 uses
  %i.cr = phi <2 x float> [ %i.db, %.lr.ph229 ], [ splat (float -1.000000e+10), %.preheader217 ] ; 2 uses
  %i.cs = phi <2 x float> [ %i.cz, %.lr.ph229 ], [ splat (float 1.000000e+10), %.preheader217 ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [12 x i8], ptr %i.z, i64 %indvars.iv ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load float, ptr %i.cu, align 4          ; 4 uses
  %i.cw = fcmp olt float %i.cv, %.sroa.13193.0225
  %.sroa.speculated196 = select i1 %i.cw, float %i.cv, float %.sroa.13193.0225 ; 2 uses
  %i.cx = load <2 x float>, ptr %i.ct, align 4    ; 4 uses
  %i.cy = fcmp olt <2 x float> %i.cx, %i.cs
  %i.cz = select <2 x i1> %i.cy, <2 x float> %i.cx, <2 x float> %i.cs ; 3 uses
  %i.da = fcmp olt <2 x float> %i.cr, %i.cx
  %i.db = select <2 x i1> %i.da, <2 x float> %i.cx, <2 x float> %i.cr ; 3 uses
  %i.dc = fcmp olt float %.sroa.13.0222, %i.cv
  %.sroa.speculated = select i1 %i.dc, float %i.cv, float %.sroa.13.0222 ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.dd = and i64 %indvars.iv.next, 4294967295
  %i.de = icmp ugt i64 %i.ad, %i.dd
  br i1 %i.de, label %.lr.ph229, label %._crit_edge.loopexit, !llvm.loop !130

_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit: ; preds = %._crit_edge, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.df = phi ptr [ %i.cp, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ null, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZN6Assimp13SGSpatialSortC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit
  %i.dg = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.dh = load ptr, ptr %i.v, align 8
  %.not236 = icmp eq ptr %i.dg, %i.dh
  br i1 %.not236, label %._crit_edge238, label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.j
  %.sroa.0172.0237 = phi ptr [ %i.eb, %bb.j ], [ %i.dg, %bb.f ] ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0172.0237, i64 12 ; 3 uses
  %i.dj = load i32, ptr %.sroa.0172.0237, align 4 ; 2 uses
  %i.dk = zext i32 %i.dj to i64
  %i.dl = load ptr, ptr %0, align 8
  %i.dm = getelementptr inbounds nuw [12 x i8], ptr %i.dl, i64 %i.dk
  %i.dn = load i32, ptr %i.di, align 4
  invoke void @_ZN6Assimp13SGSpatialSort3AddERK10aiVector3tIfEjj(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.dm, i32 noundef %i.dj, i32 noundef %i.dn)
          to label %bb.h unwind label %bb.k

._crit_edge238:                                   ; preds = %bb.j, %bb.f
  invoke void @_ZN6Assimp13SGSpatialSort7PrepareEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.l unwind label %bb.o

bb.g:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.h:                                             ; preds = %.preheader
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0172.0237, i64 4
  %i.dq = load i32, ptr %i.dp, align 4            ; 2 uses
  %i.dr = zext i32 %i.dq to i64
  %i.ds = load ptr, ptr %0, align 8
  %i.dt = getelementptr inbounds nuw [12 x i8], ptr %i.ds, i64 %i.dr
  %i.du = load i32, ptr %i.di, align 4
  invoke void @_ZN6Assimp13SGSpatialSort3AddERK10aiVector3tIfEjj(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.dt, i32 noundef %i.dq, i32 noundef %i.du)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0172.0237, i64 8
  %i.dw = load i32, ptr %i.dv, align 4            ; 2 uses
  %i.dx = zext i32 %i.dw to i64
  %i.dy = load ptr, ptr %0, align 8
  %i.dz = getelementptr inbounds nuw [12 x i8], ptr %i.dy, i64 %i.dx
  %i.ea = load i32, ptr %i.di, align 4
  invoke void @_ZN6Assimp13SGSpatialSort3AddERK10aiVector3tIfEjj(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.dz, i32 noundef %i.dw, i32 noundef %i.ea)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0172.0237, i64 132 ; 2 uses
  %i.ec = load ptr, ptr %i.v, align 8
  %.not = icmp eq ptr %i.eb, %i.ec
  br i1 %.not, label %._crit_edge238, label %.preheader, !llvm.loop !131

bb.k:                                             ; preds = %bb.i, %bb.h, %.preheader
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %._crit_edge238
  %i.ee = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ef = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i114 = icmp eq ptr %i.ee, %i.ef
  br i1 %.not.i.i114, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = sdiv exact i64 %i.ei, 12
  %i.ek = add nsw i64 %i.ej, 63                   ; 2 uses
  %i.el = lshr i64 %i.ek, 3
  %i.em = and i64 %i.el, 2305843009213693944
  %i.en = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.em) #26
          to label %bb.n unwind label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i ; 3 uses

bb.n:                                             ; preds = %bb.m
  %i.eo = lshr i64 %i.ek, 6                       ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.eo
  %.idx.i = shl nuw nsw i64 %i.eo, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.en, i8 0, i64 %.idx.i, i1 false)
  br label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i:           ; preds = %bb.m
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %bb.n, %bb.l
  %.sroa.16168.0 = phi ptr [ null, %bb.l ], [ %i.ep, %bb.n ] ; 4 uses
  %.sroa.0160.0 = phi ptr [ null, %bb.l ], [ %i.en, %bb.n ] ; 10 uses
  %i.er = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.es = load ptr, ptr %i.v, align 8
  %.not213253 = icmp eq ptr %i.er, %i.es
  br i1 %.not213253, label %._crit_edge256, label %.lr.ph255

.lr.ph255:                                        ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.p

._crit_edge256:                                   ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.ev = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI10aiVector3tIfESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.ac unwind label %bb.ag     ; 0 uses

bb.o:                                             ; preds = %._crit_edge238
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %.lr.ph255, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.sroa.0155.0254 = phi ptr [ %i.er, %.lr.ph255 ], [ %i.fk, %_ZNSt6vectorIjSaIjEED2Ev.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0155.0254, i64 12 ; 3 uses
  %i.ey = load i32, ptr %.sroa.0155.0254, align 4 ; 2 uses
  %i.ez = zext i32 %i.ey to i64                   ; 2 uses
end_hunk_0
