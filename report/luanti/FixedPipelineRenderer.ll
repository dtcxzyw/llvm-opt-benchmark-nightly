Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/FixedPipelineRenderer?download=true
inline.NumInlined: 461
inline.NumDeleted: 26
begin_hunk_0
@.str = private unnamed_addr constant [11 x i8] c"uWVPMatrix\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"uWVMatrix\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"uFogEnable\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"uFogType\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"uFogColor\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"uFogStart\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"uFogEnd\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"uFogDensity\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"uThickness\00", align 1
@_ZTVN5video23COpenGL3MaterialSolidCBE = constant { [7 x ptr], [5 x ptr] } { [7 x ptr] [ptr inttoptr (i64 88 to ptr), ptr null, ptr @_ZTIN5video23COpenGL3MaterialSolidCBE, ptr @_ZN5video23COpenGL3MaterialSolidCB13OnSetMaterialERKNS_9SMaterialE, ptr @_ZN5video23COpenGL3MaterialSolidCB14OnSetConstantsEPNS_25IMaterialRendererServicesEi, ptr @_ZN5video23COpenGL3MaterialSolidCBD1Ev, ptr @_ZN5video23COpenGL3MaterialSolidCBD0Ev], [5 x ptr] [ptr inttoptr (i64 -88 to ptr), ptr inttoptr (i64 -88 to ptr), ptr @_ZTIN5video23COpenGL3MaterialSolidCBE, ptr @_ZTv0_n24_N5video23COpenGL3MaterialSolidCBD1Ev, ptr @_ZTv0_n24_N5video23COpenGL3MaterialSolidCBD0Ev] }, align 8
@_ZTTN5video23COpenGL3MaterialSolidCBE = unnamed_addr constant [6 x ptr] [ptr getelementptr inbounds inrange(-24, 32) ({ [7 x ptr], [5 x ptr] }, ptr @_ZTVN5video23COpenGL3MaterialSolidCBE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 32) ({ [7 x ptr], [5 x ptr] }, ptr @_ZTCN5video23COpenGL3MaterialSolidCBE0_NS_22COpenGL3MaterialBaseCBE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 32) ({ [7 x ptr], [5 x ptr] }, ptr @_ZTCN5video23COpenGL3MaterialSolidCBE0_NS_26IShaderConstantSetCallBackE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [7 x ptr], [5 x ptr] }, ptr @_ZTCN5video23COpenGL3MaterialSolidCBE0_NS_26IShaderConstantSetCallBackE, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [7 x ptr], [5 x ptr] }, ptr @_ZTCN5video23COpenGL3MaterialSolidCBE0_NS_22COpenGL3MaterialBaseCBE, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [7 x ptr], [5 x ptr] }, ptr @_ZTVN5video23COpenGL3MaterialSolidCBE, i32 0, i32 1, i32 3)], align 8
@.str.9 = private unnamed_addr constant [10 x i8] c"uTMatrix0\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"uAlphaRef\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"uTextureUsage0\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"uTextureUnit0\00", align 1
@_ZTVN5video33COpenGL3MaterialOneTextureBlendCBE = constant { [7 x ptr], [5 x ptr] } { [7 x ptr] [ptr inttoptr (i64 88 to ptr), ptr null, ptr @_ZTIN5video33COpenGL3MaterialOneTextureBlendCBE, ptr @_ZN5video33COpenGL3MaterialOneTextureBlendCB13OnSetMaterialERKNS_9SMaterialE, ptr @_ZN5video33COpenGL3MaterialOneTextureBlendCB14OnSetConstantsEPNS_25IMaterialRendererServicesEi, ptr @_ZN5video33COpenGL3MaterialOneTextureBlendCBD1Ev, ptr @_ZN5video33COpenGL3MaterialOneTextureBlendCBD0Ev], [5 x ptr] [ptr inttoptr (i64 -88 to ptr), ptr inttoptr (i64 -88 to ptr), ptr @_ZTIN5video33COpenGL3MaterialOneTextureBlendCBE, ptr @_ZTv0_n24_N5video33COpenGL3MaterialOneTextureBlendCBD1Ev, ptr @_ZTv0_n24_N5video33COpenGL3MaterialOneTextureBlendCBD0Ev] }, align 8
@_ZTTN5video33COpenGL3MaterialOneTextureBlendCBE = unnamed_addr constant [6 x ptr] [ptr getelementptr inbounds inrange(-24, 32) ({ [7 x ptr], [5 x ptr] }, ptr @_ZTVN5video33COpenGL3MaterialOneTextureBlendCBE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 32) ({ [7 x ptr], [5 x ptr] }, ptr @_ZTCN5video33COpenGL3MaterialOneTextureBlendCBE0_NS_22COpenGL3MaterialBaseCBE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 32) ({ [7 x ptr], [5 x ptr] }, ptr @_ZTCN5video33COpenGL3MaterialOneTextureBlendCBE0_NS_26IShaderConstantSetCallBackE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [7 x ptr], [5 x ptr] }, ptr @_ZTCN5video33COpenGL3MaterialOneTextureBlendCBE0_NS_26IShaderConstantSetCallBackE, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [7 x ptr], [5 x ptr] }, ptr @_ZTCN5video33COpenGL3MaterialOneTextureBlendCBE0_NS_22COpenGL3MaterialBaseCBE, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [7 x ptr], [5 x ptr] }, ptr @_ZTVN5video33COpenGL3MaterialOneTextureBlendCBE, i32 0, i32 1, i32 3)], align 8
@.str.13 = private unnamed_addr constant [11 x i8] c"uBlendType\00", align 1
@_ZTCN5video22COpenGL3MaterialBaseCBE0_NS_26IShaderConstantSetCallBackE = constant { [7 x ptr], [5 x ptr] } { [7 x ptr] [ptr inttoptr (i64 56 to ptr), ptr null, ptr @_ZTIN5video26IShaderConstantSetCallBackE, ptr @_ZN5video26IShaderConstantSetCallBack13OnSetMaterialERKNS_9SMaterialE, ptr @__cxa_pure_virtual, ptr @_ZN5video26IShaderConstantSetCallBackD1Ev, ptr @_ZN5video26IShaderConstantSetCallBackD0Ev], [5 x ptr] [ptr inttoptr (i64 -56 to ptr), ptr inttoptr (i64 -56 to ptr), ptr @_ZTIN5video26IShaderConstantSetCallBackE, ptr @_ZTv0_n24_N5video26IShaderConstantSetCallBackD1Ev, ptr @_ZTv0_n24_N5video26IShaderConstantSetCallBackD0Ev] }, align 8
@_ZTIN5video26IShaderConstantSetCallBackE = linkonce_odr constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN5video26IShaderConstantSetCallBackE, i32 0, i32 1, ptr @_ZTI17IReferenceCounted, i64 -6141 }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN5video26IShaderConstantSetCallBackE = linkonce_odr constant [37 x i8] c"N5video26IShaderConstantSetCallBackE\00", comdat, align 1
@_ZTI17IReferenceCounted = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS17IReferenceCounted }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS17IReferenceCounted = linkonce_odr constant [20 x i8] c"17IReferenceCounted\00", comdat, align 1
@_ZTIN5video22COpenGL3MaterialBaseCBE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5video22COpenGL3MaterialBaseCBE, ptr @_ZTIN5video26IShaderConstantSetCallBackE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5video22COpenGL3MaterialBaseCBE = constant [33 x i8] c"N5video22COpenGL3MaterialBaseCBE\00", align 1
@_ZTCN5video23COpenGL3MaterialSolidCBE0_NS_22COpenGL3MaterialBaseCBE = constant { [7 x ptr], [5 x ptr] } { [7 x ptr] [ptr inttoptr (i64 88 to ptr), ptr null, ptr @_ZTIN5video22COpenGL3MaterialBaseCBE, ptr @_ZN5video22COpenGL3MaterialBaseCB13OnSetMaterialERKNS_9SMaterialE, ptr @_ZN5video22COpenGL3MaterialBaseCB14OnSetConstantsEPNS_25IMaterialRendererServicesEi, ptr @_ZN5video22COpenGL3MaterialBaseCBD1Ev, ptr @_ZN5video22COpenGL3MaterialBaseCBD0Ev], [5 x ptr] [ptr inttoptr (i64 -88 to ptr), ptr inttoptr (i64 -88 to ptr), ptr @_ZTIN5video22COpenGL3MaterialBaseCBE, ptr @_ZTv0_n24_N5video22COpenGL3MaterialBaseCBD1Ev, ptr @_ZTv0_n24_N5video22COpenGL3MaterialBaseCBD0Ev] }, align 8
@_ZTCN5video23COpenGL3MaterialSolidCBE0_NS_26IShaderConstantSetCallBackE = constant { [7 x ptr], [5 x ptr] } { [7 x ptr] [ptr inttoptr (i64 88 to ptr), ptr null, ptr @_ZTIN5video26IShaderConstantSetCallBackE, ptr @_ZN5video26IShaderConstantSetCallBack13OnSetMaterialERKNS_9SMaterialE, ptr @__cxa_pure_virtual, ptr @_ZN5video26IShaderConstantSetCallBackD1Ev, ptr @_ZN5video26IShaderConstantSetCallBackD0Ev], [5 x ptr] [ptr inttoptr (i64 -88 to ptr), ptr inttoptr (i64 -88 to ptr), ptr @_ZTIN5video26IShaderConstantSetCallBackE, ptr @_ZTv0_n24_N5video26IShaderConstantSetCallBackD1Ev, ptr @_ZTv0_n24_N5video26IShaderConstantSetCallBackD0Ev] }, align 8
@_ZTIN5video23COpenGL3MaterialSolidCBE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5video23COpenGL3MaterialSolidCBE, ptr @_ZTIN5video22COpenGL3MaterialBaseCBE }, align 8
@_ZTSN5video23COpenGL3MaterialSolidCBE = constant [34 x i8] c"N5video23COpenGL3MaterialSolidCBE\00", align 1
@_ZTCN5video33COpenGL3MaterialOneTextureBlendCBE0_NS_22COpenGL3MaterialBaseCBE = constant { [7 x ptr], [5 x ptr] } { [7 x ptr] [ptr inttoptr (i64 88 to ptr), ptr null, ptr @_ZTIN5video22COpenGL3MaterialBaseCBE, ptr @_ZN5video22COpenGL3MaterialBaseCB13OnSetMaterialERKNS_9SMaterialE, ptr @_ZN5video22COpenGL3MaterialBaseCB14OnSetConstantsEPNS_25IMaterialRendererServicesEi, ptr @_ZN5video22COpenGL3MaterialBaseCBD1Ev, ptr @_ZN5video22COpenGL3MaterialBaseCBD0Ev], [5 x ptr] [ptr inttoptr (i64 -88 to ptr), ptr inttoptr (i64 -88 to ptr), ptr @_ZTIN5video22COpenGL3MaterialBaseCBE, ptr @_ZTv0_n24_N5video22COpenGL3MaterialBaseCBD1Ev, ptr @_ZTv0_n24_N5video22COpenGL3MaterialBaseCBD0Ev] }, align 8
@_ZTCN5video33COpenGL3MaterialOneTextureBlendCBE0_NS_26IShaderConstantSetCallBackE = constant { [7 x ptr], [5 x ptr] } { [7 x ptr] [ptr inttoptr (i64 88 to ptr), ptr null, ptr @_ZTIN5video26IShaderConstantSetCallBackE, ptr @_ZN5video26IShaderConstantSetCallBack13OnSetMaterialERKNS_9SMaterialE, ptr @__cxa_pure_virtual, ptr @_ZN5video26IShaderConstantSetCallBackD1Ev, ptr @_ZN5video26IShaderConstantSetCallBackD0Ev], [5 x ptr] [ptr inttoptr (i64 -88 to ptr), ptr inttoptr (i64 -88 to ptr), ptr @_ZTIN5video26IShaderConstantSetCallBackE, ptr @_ZTv0_n24_N5video26IShaderConstantSetCallBackD1Ev, ptr @_ZTv0_n24_N5video26IShaderConstantSetCallBackD0Ev] }, align 8
@_ZTIN5video33COpenGL3MaterialOneTextureBlendCBE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5video33COpenGL3MaterialOneTextureBlendCBE, ptr @_ZTIN5video22COpenGL3MaterialBaseCBE }, align 8
@_ZTSN5video33COpenGL3MaterialOneTextureBlendCBE = constant [44 x i8] c"N5video33COpenGL3MaterialOneTextureBlendCBE\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5video22COpenGL3MaterialBaseCBC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(53) initializes((0, 9), (12, 53)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.b, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8, !tbaa !8
  %i.h = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.h, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l
  store ptr %i.j, ptr %i.m, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.n, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.o, i8 -1, i64 36, i1 false)
  store float 1.000000e+00, ptr %i.p, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 0, ptr %i.q, align 4, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5video22COpenGL3MaterialBaseCBC1Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(53) initializes((0, 9), (12, 53), (56, 68)) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 1, ptr %i.b, align 8, !tbaa !17
  store ptr getelementptr inbounds nuw inrange(-24, 32) (i8, ptr @_ZTVN5video22COpenGL3MaterialBaseCBE, i64 24), ptr %0, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5video22COpenGL3MaterialBaseCBE, i64 80), ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.c, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.d, i8 -1, i64 36, i1 false)
  store float 1.000000e+00, ptr %i.e, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 0, ptr %i.f, align 4, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5video22COpenGL3MaterialBaseCB13OnSetMaterialERKNS_9SMaterialE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(53) initializes((48, 53)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(127) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 126
  %i.b = load i8, ptr %i.a, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = lshr i8 %i.b, 6
  %.lobit = and i8 %i.d, 1
  store i8 %.lobit, ptr %i.c, align 4, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.f = load float, ptr %i.e, align 4, !tbaa !19 ; 2 uses
  %i.g = fcmp ogt float %i.f, 0.000000e+00
  %i.h = select i1 %i.g, float %i.f, float 1.000000e+00
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.h, ptr %i.i, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5video22COpenGL3MaterialBaseCB14OnSetConstantsEPNS_25IMaterialRendererServicesEi(ptr noundef nonnull align 8 dereferenceable(53) %0, ptr noundef %1, i32 %2) unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.core::CMatrix4", align 16   ; 22 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.video::SColor", align 4     ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.video::SColorf", align 16   ; 4 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !10, !range !28, !noundef !29
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %1, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i32 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.r, ptr %i.s, align 4, !tbaa !30
  %i.t = load ptr, ptr %1, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef i32 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.w, ptr %i.x, align 8, !tbaa !31
  %i.y = load ptr, ptr %1, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef i32 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !32
  %i.ad = load ptr, ptr %1, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef i32 %i.af(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !33
  %i.ai = load ptr, ptr %1, align 8, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef i32 %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.al, ptr %i.am, align 4, !tbaa !34
  %i.an = load ptr, ptr %1, align 8, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef i32 %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.5)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !35
  %i.as = load ptr, ptr %1, align 8, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef i32 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.6)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !36
  %i.ax = load ptr, ptr %1, align 8, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call noundef i32 %i.az(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.7)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !37
  %i.bc = load ptr, ptr %1, align 8, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call noundef i32 %i.be(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !38
  store i8 0, ptr %i.l, align 8, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bh = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call noundef nonnull align 4 dereferenceable(64) ptr %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i32 noundef 1) ; 16 uses
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = tail call noundef nonnull align 4 dereferenceable(64) ptr %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i32 noundef 0) ; 4 uses
  %i.bp = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call noundef nonnull align 4 dereferenceable(64) ptr %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i32 noundef 2) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %6 = load float, ptr %i.bk, align 4, !tbaa !42, !noalias !39
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %7 = load float, ptr %i.bu, align 4, !tbaa !42, !noalias !39
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %8 = load float, ptr %i.bw, align 4, !tbaa !42, !noalias !39
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.by = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %9 = load float, ptr %i.by, align 4, !tbaa !42, !noalias !39
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.cc = load <4 x float>, ptr %i.bo, align 4, !tbaa !42, !noalias !39 ; 4 uses
  %i.cd = load <4 x float>, ptr %i.bt, align 4, !tbaa !42, !noalias !39 ; 4 uses
  %10 = insertelement <4 x float> poison, float %7, i64 0
  %i.ce = shufflevector <4 x float> %10, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cf = fmul <4 x float> %i.ce, %i.cd
  %11 = insertelement <4 x float> poison, float %6, i64 0
  %i.cg = shufflevector <4 x float> %11, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ch = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cc, <4 x float> %i.cg, <4 x float> %i.cf)
  %i.ci = load <4 x float>, ptr %i.bv, align 4, !tbaa !42, !noalias !39 ; 4 uses
  %12 = insertelement <4 x float> poison, float %8, i64 0
  %i.cj = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ck = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ci, <4 x float> %i.cj, <4 x float> %i.ch)
  %i.cl = load <4 x float>, ptr %i.bx, align 4, !tbaa !42, !noalias !39 ; 4 uses
  %13 = insertelement <4 x float> poison, float %9, i64 0
  %i.cm = shufflevector <4 x float> %13, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> %i.cm, <4 x float> %i.ck)
  store <4 x float> %i.cn, ptr %3, align 16, !tbaa !42, !alias.scope !39
  %i.co = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %14 = load float, ptr %i.co, align 4, !tbaa !42, !noalias !39
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  %15 = load float, ptr %i.cp, align 4, !tbaa !42, !noalias !39
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %16 = load float, ptr %i.cq, align 4, !tbaa !42, !noalias !39
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bk, i64 28
  %17 = load float, ptr %i.cr, align 4, !tbaa !42, !noalias !39
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 28
  %18 = insertelement <4 x float> poison, float %15, i64 0
  %i.cw = shufflevector <4 x float> %18, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cx = fmul <4 x float> %i.cd, %i.cw
  %19 = insertelement <4 x float> poison, float %14, i64 0
  %i.cy = shufflevector <4 x float> %19, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cc, <4 x float> %i.cy, <4 x float> %i.cx)
  %20 = insertelement <4 x float> poison, float %16, i64 0
  %i.da = shufflevector <4 x float> %20, <4 x float> poison, <4 x i32> zeroinitializer
  %i.db = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ci, <4 x float> %i.da, <4 x float> %i.cz)
  %21 = insertelement <4 x float> poison, float %17, i64 0
  %i.dc = shufflevector <4 x float> %21, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> %i.dc, <4 x float> %i.db)
  store <4 x float> %i.dd, ptr %i.cs, align 16, !tbaa !42, !alias.scope !39
  %i.de = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %22 = load float, ptr %i.de, align 4, !tbaa !42, !noalias !39
  %i.df = getelementptr inbounds nuw i8, ptr %i.bk, i64 36
  %23 = load float, ptr %i.df, align 4, !tbaa !42, !noalias !39
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %24 = load float, ptr %i.dg, align 4, !tbaa !42, !noalias !39
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bk, i64 44
  %25 = load float, ptr %i.dh, align 4, !tbaa !42, !noalias !39
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 44
  %26 = insertelement <4 x float> poison, float %23, i64 0
  %i.dm = shufflevector <4 x float> %26, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dn = fmul <4 x float> %i.cd, %i.dm
  %27 = insertelement <4 x float> poison, float %22, i64 0
  %i.do = shufflevector <4 x float> %27, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cc, <4 x float> %i.do, <4 x float> %i.dn)
  %28 = insertelement <4 x float> poison, float %24, i64 0
  %i.dq = shufflevector <4 x float> %28, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ci, <4 x float> %i.dq, <4 x float> %i.dp)
  %29 = insertelement <4 x float> poison, float %25, i64 0
  %i.ds = shufflevector <4 x float> %29, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> %i.ds, <4 x float> %i.dr)
  store <4 x float> %i.dt, ptr %i.di, align 16, !tbaa !42, !alias.scope !39
  %i.du = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %30 = load float, ptr %i.du, align 4, !tbaa !42, !noalias !39
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bk, i64 52
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !42, !noalias !39
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !42, !noalias !39
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bk, i64 60
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !42, !noalias !39
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.ef = insertelement <4 x float> poison, float %i.dw, i64 0
  %i.eg = shufflevector <4 x float> %i.ef, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eh = fmul <4 x float> %i.cd, %i.eg
  %31 = insertelement <4 x float> poison, float %30, i64 0
  %i.ei = shufflevector <4 x float> %31, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ej = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cc, <4 x float> %i.ei, <4 x float> %i.eh)
  %i.ek = insertelement <4 x float> poison, float %i.dy, i64 0
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> zeroinitializer
  %i.em = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ci, <4 x float> %i.el, <4 x float> %i.ej)
  %i.en = insertelement <4 x float> poison, float %i.ea, i64 0
  %i.eo = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ep = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> %i.eo, <4 x float> %i.em)
  store <4 x float> %i.ep, ptr %i.eb, align 16, !tbaa !42, !alias.scope !39
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !31
  %i.es = load ptr, ptr %1, align 8, !tbaa !8
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 64
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = call noundef zeroext i1 %i.eu(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.er, ptr noundef nonnull %3, i32 noundef 16) ; 0 uses
  %i.ew = load <4 x float>, ptr %3, align 16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.ey = load <4 x float>, ptr %i.bz, align 4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.fa = load <4 x float>, ptr %i.ca, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.fc = load <4 x float>, ptr %i.cb, align 4
  %i.fd = load <4 x float>, ptr %i.cs, align 16
  %i.fe = load <4 x float>, ptr %i.ct, align 4
  %i.ff = load <4 x float>, ptr %i.cu, align 8
  %i.fg = load <4 x float>, ptr %i.cv, align 4
  %i.fh = load <4 x float>, ptr %i.di, align 16
  %i.fi = load <4 x float>, ptr %i.dj, align 4
  %i.fj = load <4 x float>, ptr %i.dk, align 8
  %i.fk = load <4 x float>, ptr %i.dl, align 4
  %i.fl = load <4 x float>, ptr %i.eb, align 16
  %i.fm = load float, ptr %i.ec, align 4, !tbaa !42, !noalias !43
  %i.fn = load float, ptr %i.ed, align 8, !tbaa !42, !noalias !43
  %i.fo = load float, ptr %i.ee, align 4, !tbaa !42, !noalias !43
  %i.fp = load <4 x float>, ptr %i.bs, align 4, !tbaa !42, !noalias !43 ; 4 uses
  %i.fq = load <4 x float>, ptr %i.ex, align 4, !tbaa !42, !noalias !43 ; 4 uses
  %i.fr = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fs = fmul <4 x float> %i.fr, %i.fq
  %i.ft = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fp, <4 x float> %i.ft, <4 x float> %i.fs)
  %i.fv = load <4 x float>, ptr %i.ez, align 4, !tbaa !42, !noalias !43 ; 4 uses
  %i.fw = shufflevector <4 x float> %i.fa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fv, <4 x float> %i.fw, <4 x float> %i.fu)
  %i.fy = load <4 x float>, ptr %i.fb, align 4, !tbaa !42, !noalias !43 ; 4 uses
  %i.fz = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ga = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fy, <4 x float> %i.fz, <4 x float> %i.fx)
  store <4 x float> %i.ga, ptr %3, align 16
  %i.gb = shufflevector <4 x float> %i.fe, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gc = fmul <4 x float> %i.fq, %i.gb
  %i.gd = shufflevector <4 x float> %i.fd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ge = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fp, <4 x float> %i.gd, <4 x float> %i.gc)
  %i.gf = shufflevector <4 x float> %i.ff, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fv, <4 x float> %i.gf, <4 x float> %i.ge)
  %i.gh = shufflevector <4 x float> %i.fg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fy, <4 x float> %i.gh, <4 x float> %i.gg)
  store <4 x float> %i.gi, ptr %i.cs, align 16
  %i.gj = shufflevector <4 x float> %i.fi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gk = fmul <4 x float> %i.fq, %i.gj
  %i.gl = shufflevector <4 x float> %i.fh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fp, <4 x float> %i.gl, <4 x float> %i.gk)
  %i.gn = shufflevector <4 x float> %i.fj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.go = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fv, <4 x float> %i.gn, <4 x float> %i.gm)
  %i.gp = shufflevector <4 x float> %i.fk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fy, <4 x float> %i.gp, <4 x float> %i.go)
  store <4 x float> %i.gq, ptr %i.di, align 16
  %i.gr = insertelement <4 x float> poison, float %i.fm, i64 0
  %i.gs = shufflevector <4 x float> %i.gr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gt = fmul <4 x float> %i.fq, %i.gs
  %i.gu = shufflevector <4 x float> %i.fl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fp, <4 x float> %i.gu, <4 x float> %i.gt)
  %i.gw = insertelement <4 x float> poison, float %i.fn, i64 0
  %i.gx = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fv, <4 x float> %i.gx, <4 x float> %i.gv)
  %i.gz = insertelement <4 x float> poison, float %i.fo, i64 0
  %i.ha = shufflevector <4 x float> %i.gz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fy, <4 x float> %i.ha, <4 x float> %i.gy)
  store <4 x float> %i.hb, ptr %i.eb, align 16
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !30
  %i.he = load ptr, ptr %1, align 8, !tbaa !8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 64
  %i.hg = load ptr, ptr %i.hf, align 8
  %i.hh = call noundef zeroext i1 %i.hg(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.hd, ptr noundef nonnull %3, i32 noundef 16) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.hj = load i8, ptr %i.hi, align 4, !tbaa !16, !range !28, !noundef !29 ; 2 uses
  %i.hk = zext nneg i8 %i.hj to i32
  store i32 %i.hk, ptr %i.a, align 4, !tbaa !46
  %i.hl = trunc nuw i8 %i.hj to i1
  br i1 %i.hl, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 1, ptr %i.b, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %i.hm = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 480
  %i.ho = load ptr, ptr %i.hn, align 8
  call void %i.ho(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %i.f)
  %i.hp = load float, ptr %i.c, align 4, !tbaa !42
  %i.hq = fcmp ogt float %i.hp, 1.638400e+04
  %i.hr = load float, ptr %i.d, align 4
  %i.hs = fcmp ogt float %i.hr, 1.638400e+04
  %or.cond = select i1 %i.hq, i1 true, i1 %i.hs
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.a, align 4, !tbaa !46
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  %i.ht = load i32, ptr %i.b, align 4, !tbaa !48
  store i32 %i.ht, ptr %i.g, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %.sroa.0.0.copyload = load i32, ptr %4, align 4, !tbaa !46 ; 4 uses
  %i.hu = lshr i32 %.sroa.0.0.copyload, 24
  %i.hv = lshr i32 %.sroa.0.0.copyload, 8
  %i.hw = lshr i32 %.sroa.0.0.copyload, 16
  %i.hx = insertelement <4 x i32> poison, i32 %i.hw, i64 0
  %i.hy = insertelement <4 x i32> %i.hx, i32 %i.hv, i64 1
  %i.hz = insertelement <4 x i32> %i.hy, i32 %.sroa.0.0.copyload, i64 2
  %i.ia = insertelement <4 x i32> %i.hz, i32 %i.hu, i64 3
  %i.ib = and <4 x i32> %i.ia, <i32 255, i32 255, i32 255, i32 -1>
  %i.ic = uitofp <4 x i32> %i.ib to <4 x float>
  %i.id = fmul nnan <4 x float> %i.ic, splat (float f0x3B808081)
  store <4 x float> %i.id, ptr %5, align 16, !tbaa !42
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !33
  %i.ig = load ptr, ptr %1, align 8, !tbaa !8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 72
  %i.ii = load ptr, ptr %i.ih, align 8
  %i.ij = call noundef zeroext i1 %i.ii(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.if, ptr noundef nonnull %i.g, i32 noundef 1) ; 0 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !34
  %i.im = load ptr, ptr %1, align 8, !tbaa !8
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 64
  %i.io = load ptr, ptr %i.in, align 8
  %i.ip = call noundef zeroext i1 %i.io(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.il, ptr noundef nonnull %5, i32 noundef 4) ; 0 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !35
  %i.is = load ptr, ptr %1, align 8, !tbaa !8
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 64
  %i.iu = load ptr, ptr %i.it, align 8
  %i.iv = call noundef zeroext i1 %i.iu(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.ir, ptr noundef nonnull %i.c, i32 noundef 1) ; 0 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !36
  %i.iy = load ptr, ptr %1, align 8, !tbaa !8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 64
  %i.ja = load ptr, ptr %i.iz, align 8
  %i.jb = call noundef zeroext i1 %i.ja(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.ix, ptr noundef nonnull %i.d, i32 noundef 1) ; 0 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !37
  %i.je = load ptr, ptr %1, align 8, !tbaa !8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 64
  %i.jg = load ptr, ptr %i.jf, align 8
  %i.jh = call noundef zeroext i1 %i.jg(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.jd, ptr noundef nonnull %i.e, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !32
  %i.jk = load ptr, ptr %1, align 8, !tbaa !8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 72
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = call noundef zeroext i1 %i.jm(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.jj, ptr noundef nonnull %i.a, i32 noundef 1) ; 0 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !38
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.jr = load ptr, ptr %1, align 8, !tbaa !8
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 64
  %i.jt = load ptr, ptr %i.js, align 8
  %i.ju = call noundef zeroext i1 %i.jt(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.jp, ptr noundef nonnull %i.jq, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
end_hunk_0
