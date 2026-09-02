Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/nclx?download=true
inline.NumInlined: 647
inline.NumDeleted: 362
begin_hunk_0_@_ZN5Kr_Kb8defaultsEv:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden <2 x float> @_Z9get_Kr_Kbtt(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #2 {
bb.a:
  %i.a = and i16 %0, -2
  %or.cond = icmp eq i16 %i.a, 12
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %switch.tableidx = add i16 %1, -1               ; 9 uses
  %i.b = icmp ult i16 %switch.tableidx, 22
  br i1 %i.b, label %switch.lookup, label %_Z20get_colour_primariest.exit

switch.lookup:                                    ; preds = %bb.b
  %i.c = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK12nclx_profile22get_nclx_color_profileEPP23heif_color_profile_nclx, i64 %i.c
  %switch.load = load float, ptr %switch.gep, align 4 ; 4 uses
  %i.d = zext nneg i16 %switch.tableidx to i64
  %switch.gep59 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK12nclx_profile22get_nclx_color_profileEPP23heif_color_profile_nclx.8, i64 %i.d
  %switch.load60 = load float, ptr %switch.gep59, align 4 ; 3 uses
  %i.e = zext nneg i16 %switch.tableidx to i64
  %switch.gep61 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK12nclx_profile22get_nclx_color_profileEPP23heif_color_profile_nclx.9, i64 %i.e
  %switch.load62 = load float, ptr %switch.gep61, align 4 ; 2 uses
  %i.f = zext nneg i16 %switch.tableidx to i64
  %switch.gep63 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK12nclx_profile22get_nclx_color_profileEPP23heif_color_profile_nclx.10, i64 %i.f
  %switch.load64 = load float, ptr %switch.gep63, align 4 ; 3 uses
  %i.g = zext nneg i16 %switch.tableidx to i64
  %switch.gep65 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK12nclx_profile22get_nclx_color_profileEPP23heif_color_profile_nclx.11, i64 %i.g
  %switch.load66 = load float, ptr %switch.gep65, align 4 ; 2 uses
  %i.h = zext nneg i16 %switch.tableidx to i64
  %switch.gep67 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK12nclx_profile22get_nclx_color_profileEPP23heif_color_profile_nclx.12, i64 %i.h
  %switch.load68 = load float, ptr %switch.gep67, align 4 ; 3 uses
  %i.i = zext nneg i16 %switch.tableidx to i64
  %switch.gep69 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK12nclx_profile22get_nclx_color_profileEPP23heif_color_profile_nclx.13, i64 %i.i
  %switch.load70 = load float, ptr %switch.gep69, align 4 ; 2 uses
  %i.j = zext nneg i16 %switch.tableidx to i64
  %switch.gep71 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK12nclx_profile22get_nclx_color_profileEPP23heif_color_profile_nclx.14, i64 %i.j
  %switch.load72 = load float, ptr %switch.gep71, align 4 ; 3 uses
  %i.k = insertelement <2 x float> poison, float %switch.load72, i64 0
  %i.l = insertelement <2 x float> %i.k, float %switch.load70, i64 1
  %i.m = insertelement <2 x float> poison, float %switch.load64, i64 0
  %i.n = insertelement <2 x float> %i.m, float %switch.load68, i64 1
  %i.o = insertelement <2 x float> poison, float %switch.load66, i64 0 ; 2 uses
  %i.p = insertelement <2 x float> %i.o, float %switch.load, i64 1
  %i.q = insertelement <2 x float> poison, float %switch.load60, i64 0
  %i.r = insertelement <2 x float> %i.q, float %switch.load64, i64 1
  %i.s = insertelement <2 x float> poison, float %switch.load, i64 0
  %i.t = insertelement <2 x float> %i.s, float %switch.load62, i64 1
  %i.u = insertelement <2 x float> poison, float %switch.load68, i64 0 ; 2 uses
  %i.v = insertelement <2 x float> %i.u, float %switch.load60, i64 1
  %i.w = insertelement <2 x float> %i.o, float %switch.load60, i64 1
  %i.x = insertelement <2 x float> %i.u, float %switch.load, i64 1
  %i.y = fadd <2 x float> %i.w, %i.x
  %i.z = fadd float %switch.load70, %switch.load72
  br label %_Z20get_colour_primariest.exit

_Z20get_colour_primariest.exit:                   ; preds = %bb.b, %switch.lookup
  %.sroa.1325.0 = phi float [ %switch.load, %switch.lookup ], [ 0.000000e+00, %bb.b ]
  %.sroa.37.0 = phi float [ %switch.load62, %switch.lookup ], [ 0.000000e+00, %bb.b ]
  %.sroa.48.0 = phi float [ %switch.load64, %switch.lookup ], [ 0.000000e+00, %bb.b ]
  %.sroa.60.0 = phi float [ %switch.load66, %switch.lookup ], [ 0.000000e+00, %bb.b ]
  %.sroa.72.0 = phi float [ %switch.load68, %switch.lookup ], [ 0.000000e+00, %bb.b ]
  %.sroa.84.0 = phi float [ %i.z, %switch.lookup ], [ 0.000000e+00, %bb.b ]
  %.sroa.96.0 = phi float [ %switch.load72, %switch.lookup ], [ 0.000000e+00, %bb.b ]
  %i.aa = phi <2 x float> [ %i.l, %switch.lookup ], [ zeroinitializer, %bb.b ] ; 2 uses
  %i.ab = phi <2 x float> [ %i.n, %switch.lookup ], [ zeroinitializer, %bb.b ] ; 2 uses
  %i.ac = phi <2 x float> [ %i.p, %switch.lookup ], [ zeroinitializer, %bb.b ] ; 2 uses
  %i.ad = phi <2 x float> [ %i.r, %switch.lookup ], [ zeroinitializer, %bb.b ] ; 4 uses
  %i.ae = phi <2 x float> [ %i.t, %switch.lookup ], [ zeroinitializer, %bb.b ] ; 3 uses
  %i.af = phi <2 x float> [ %i.v, %switch.lookup ], [ zeroinitializer, %bb.b ]
  %i.ag = phi <2 x float> [ %i.y, %switch.lookup ], [ zeroinitializer, %bb.b ]
  %i.ah = fadd <2 x float> %i.ae, %i.ad
  %i.ai = fsub <2 x float> splat (float 1.000000e+00), %i.ag ; 3 uses
  %i.aj = fsub <2 x float> splat (float 1.000000e+00), %i.ah ; 2 uses
  %i.ak = fneg <2 x float> %i.aj                  ; 2 uses
  %i.al = extractelement <2 x float> %i.ak, i64 1
  %i.am = fmul float %.sroa.72.0, %i.al
  %i.an = extractelement <2 x float> %i.ai, i64 0
  %i.ao = tail call float @llvm.fmuladd.f32(float %.sroa.48.0, float %i.an, float %i.am)
  %i.ap = fmul float %.sroa.1325.0, %i.ao
  %i.aq = fneg <2 x float> %i.ai
  %i.ar = fmul <2 x float> %i.ad, %i.aq
  %i.as = shufflevector <2 x float> %i.ab, <2 x float> %i.ad, <2 x i32> <i32 1, i32 2>
  %i.at = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.aj, <2 x float> %i.ar) ; 3 uses
  %i.au = extractelement <2 x float> %i.at, i64 1
  %i.av = tail call float @llvm.fmuladd.f32(float %.sroa.60.0, float %i.au, float %i.ap)
  %i.aw = extractelement <2 x float> %i.at, i64 0
  %i.ax = tail call float @llvm.fmuladd.f32(float %.sroa.37.0, float %i.aw, float %i.av)
  %i.ay = fmul float %.sroa.96.0, %i.ax           ; 2 uses
  %i.az = fcmp oeq float %i.ay, 0.000000e+00
  br i1 %i.az, label %bb.j, label %bb.c

bb.c:                                             ; preds = %_Z20get_colour_primariest.exit
  %i.ba = fsub float 1.000000e+00, %.sroa.84.0
  %i.bb = fmul <2 x float> %i.ac, %i.ak
  %i.bc = fneg <2 x float> %i.af
  %i.bd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.ai, <2 x float> %i.bb)
  %i.be = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x float> %i.be, %i.bd
  %i.bg = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.at, <2 x float> %i.bf)
  %i.bi = fmul nnan <2 x float> %i.ae, %i.bc
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ad, <2 x float> %i.bi)
  %i.bk = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.bj, <2 x float> %i.bh)
  %i.bn = fmul <2 x float> %i.ab, %i.bm
  %i.bo = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bp = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bq = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = fdiv <2 x float> %i.bp, %i.bq
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  switch i16 %0, label %bb.j [
    i16 1, label %bb.e
    i16 4, label %bb.f
    i16 5, label %bb.g
    i16 6, label %bb.g
    i16 7, label %bb.h
    i16 9, label %bb.i
    i16 10, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  br label %bb.j

bb.g:                                             ; preds = %bb.d, %bb.d
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  br label %bb.j

bb.i:                                             ; preds = %bb.d, %bb.d
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %_Z20get_colour_primariest.exit, %bb.d, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.sroa.033.1 = phi <2 x float> [ <float 2.627000e-01, float 5.930000e-02>, %bb.i ], [ zeroinitializer, %bb.d ], [ <float 2.126000e-01, float 7.220000e-02>, %bb.e ], [ <float 3.000000e-01, float 1.100000e-01>, %bb.f ], [ <float 2.990000e-01, float 1.140000e-01>, %bb.g ], [ <float 2.120000e-01, float 8.700000e-02>, %bb.h ], [ zeroinitializer, %_Z20get_colour_primariest.exit ], [ %i.br, %bb.c ]
  ret <2 x float> %.sroa.033.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN25YCbCr_to_RGB_coefficients8defaultsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.YCbCr_to_RGB_coefficients) align 4 captures(none) initializes((0, 1), (4, 20)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 1, ptr %0, align 4, !tbaa !21
  store <4 x float> <float 1.402000e+00, float -3.441360e-01, float -7.141360e-01, float 1.772000e+00>, ptr %i.a, align 4, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_Z29get_YCbCr_to_RGB_coefficientstt(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.YCbCr_to_RGB_coefficients) align 4 captures(none) initializes((0, 1), (4, 20)) %0, i16 noundef zeroext %1, i16 noundef zeroext %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call <2 x float> @_Z9get_Kr_Kbtt(i16 noundef zeroext %1, i16 noundef zeroext %2) ; 4 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %i.a, i64 1 ; 2 uses
  %i.b = fcmp une float %.sroa.0.4.vec.extract, 0.000000e+00
  %.sroa.0.0.vec.extract12 = extractelement <2 x float> %i.a, i64 0 ; 2 uses
  %i.c = fcmp une float %.sroa.0.0.vec.extract12, 0.000000e+00
  %or.cond = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = fsub <2 x float> splat (float 1.000000e+00), %i.a ; 2 uses
  %i.e = fmul <2 x float> %i.a, splat (float 2.000000e+00)
  %i.f = fadd float %.sroa.0.4.vec.extract, %.sroa.0.0.vec.extract12
  %i.g = insertelement <4 x float> <float -0.000000e+00, float poison, float poison, float -0.000000e+00>, float %i.f, i64 1
  %i.h = fadd <4 x float> %i.g, <float 2.000000e+00, float -1.000000e+00, float poison, float 2.000000e+00>
  %i.i = shufflevector <4 x float> %i.h, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3> ; 2 uses
  %i.j = fmul <2 x float> %i.e, %i.d
  %i.k = shufflevector <2 x float> %i.d, <2 x float> %i.j, <4 x i32> <i32 0, i32 3, i32 2, i32 1> ; 2 uses
  %i.l = fmul <4 x float> %i.k, %i.i
  %i.m = fdiv <4 x float> %i.k, %i.i
  %i.n = shufflevector <4 x float> %i.l, <4 x float> %i.m, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.o = phi <4 x float> [ %i.n, %bb.b ], [ <float 1.402000e+00, float -3.441360e-01, float -7.141360e-01, float 1.772000e+00>, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 1, ptr %0, align 4, !tbaa !23
  store <4 x float> %i.o, ptr %i.p, align 4, !tbaa !20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_Z29get_RGB_to_YCbCr_coefficientstt(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.RGB_to_YCbCr_coefficients) align 4 captures(none) initializes((0, 1), (4, 40)) %0, i16 noundef zeroext %1, i16 noundef zeroext %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call <2 x float> @_Z9get_Kr_Kbtt(i16 noundef zeroext %1, i16 noundef zeroext %2) ; 5 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %i.a, i64 1 ; 3 uses
  %i.b = fcmp une float %.sroa.0.4.vec.extract, 0.000000e+00
  %.sroa.0.0.vec.extract16 = extractelement <2 x float> %i.a, i64 0 ; 3 uses
  %i.c = fcmp une float %.sroa.0.0.vec.extract16, 0.000000e+00
  %or.cond = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = fsub float 1.000000e+00, %.sroa.0.0.vec.extract16 ; 2 uses
  %i.e = fsub float 1.000000e+00, %.sroa.0.4.vec.extract
  %i.f = fsub float %i.d, %.sroa.0.4.vec.extract  ; 3 uses
  %i.g = insertelement <2 x float> %i.a, float %i.f, i64 1
  %i.h = fneg <2 x float> %i.g
  %3 = insertelement <2 x float> poison, float %i.e, i64 0
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer
  %5 = fdiv <2 x float> %i.h, %4
  %6 = fmul <2 x float> %5, splat (float 5.000000e-01)
  %7 = insertelement <2 x float> %i.a, float %i.f, i64 0
  %8 = fneg <2 x float> %7
  %i.i = insertelement <2 x float> poison, float %i.d, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = fdiv <2 x float> %8, %i.j
  %i.l = fmul <2 x float> %i.k, splat (float 5.000000e-01)
  %i.m = shufflevector <2 x float> %i.a, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.n = insertelement <4 x float> %i.m, float %i.f, i64 0
  %i.o = shufflevector <2 x float> %6, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.p = shufflevector <4 x float> %i.n, <4 x float> %i.o, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink38 = phi float [ %.sroa.0.0.vec.extract16, %bb.b ], [ 2.990000e-01, %bb.a ]
  %i.q = phi <4 x float> [ %i.p, %bb.b ], [ <float 5.870000e-01, float 1.140000e-01, float -1.687350e-01, float -3.312640e-01>, %bb.a ]
  %i.r = phi <2 x float> [ %i.l, %bb.b ], [ <float -4.186880e-01, float -8.131200e-02>, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 1, ptr %0, align 4, !tbaa !23
  store float %.sink38, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x float> %i.q, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> splat (float 5.000000e-01), ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x float> %i.r, ptr %i.v, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN25RGB_to_YCbCr_coefficients8defaultsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.RGB_to_YCbCr_coefficients) align 4 captures(none) initializes((0, 1), (4, 40)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 1, ptr %0, align 4, !tbaa !24
  store <4 x float> <float 2.990000e-01, float 5.870000e-01, float 1.140000e-01, float -1.687350e-01>, ptr %i.a, align 4, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  store <4 x float> <float -3.312640e-01, float 5.000000e-01, float 5.000000e-01, float -4.186880e-01>, ptr %i.b, align 4, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float -8.131200e-02, ptr %i.c, align 4, !tbaa !20
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN18color_profile_nclx5parseER14BitstreamRange(ptr dead_on_unwind noalias writable sret(%class.Error) align 8 %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(41) %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__1::basic_string", align 8 ; 12 uses
  %i.a = tail call noundef zeroext i8 @_ZN14BitstreamRange24wait_for_available_bytesEm(ptr noundef nonnull align 8 dereferenceable(41) %2, i64 noundef 7)
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.f, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i8 0, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %i.b, align 1, !tbaa !26
  invoke void @_ZN5ErrorC1E15heif_error_code18heif_suberror_codeRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, i32 noundef 100, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit
  %i.c = load i8, ptr %3, align 8
  %i.d = trunc i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.g = load i64, ptr %3, align 8
  %i.h = and i64 %i.g, -2
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.h) #23
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZN5ErrorC2ERKS_.exit

bb.d:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load i8, ptr %3, align 8
  %i.k = trunc i8 %i.j to i1
  br i1 %i.k, label %bb.e, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit8

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.n = load i64, ptr %3, align 8
  %i.o = and i64 %i.n, -2
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.o) #23
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit8

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit8: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.i

bb.f:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i16 @_ZN14BitstreamRange6read16Ev(ptr noundef nonnull align 8 dereferenceable(41) %2)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.p, ptr %i.q, align 8, !tbaa !27
  %i.r = tail call noundef zeroext i16 @_ZN14BitstreamRange6read16Ev(ptr noundef nonnull align 8 dereferenceable(41) %2)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %i.r, ptr %i.s, align 2, !tbaa !32
  %i.t = tail call noundef zeroext i16 @_ZN14BitstreamRange6read16Ev(ptr noundef nonnull align 8 dereferenceable(41) %2)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i16 %i.t, ptr %i.u, align 4, !tbaa !33
  %i.v = tail call noundef zeroext i8 @_ZN14BitstreamRange5read8Ev(ptr noundef nonnull align 8 dereferenceable(41) %2)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 14
  %.lobit = lshr i8 %i.v, 7
  store i8 %.lobit, ptr %i.w, align 2, !tbaa !34
  %i.x = load i64, ptr @_ZN5Error2OkE, align 8
  store i64 %i.x, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), align 8
  %i.aa = trunc i8 %i.z to i1
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), i64 24, i1 false), !tbaa.struct !35
  br label %_ZN5ErrorC2ERKS_.exit

bb.h:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 24), align 8, !tbaa !26
  %i.ac = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 16), align 8, !tbaa !26
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef %i.ab, i64 noundef %i.ac)
  br label %_ZN5ErrorC2ERKS_.exit

_ZN5ErrorC2ERKS_.exit:                            ; preds = %bb.h, %bb.g, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  ret void
}

declare noundef zeroext i8 @_ZN14BitstreamRange24wait_for_available_bytesEm(ptr noundef nonnull align 8 dereferenceable(41), i64 noundef) local_unnamed_addr #7

declare void @_ZN5ErrorC1E15heif_error_code18heif_suberror_codeRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #7

declare i32 @__gxx_personality_v0(...)

declare noundef zeroext i16 @_ZN14BitstreamRange6read16Ev(ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #7

declare noundef zeroext i8 @_ZN14BitstreamRange5read8Ev(ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN18color_profile_nclx10parse_nclcER14BitstreamRange(ptr dead_on_unwind noalias writable sret(%class.Error) align 8 %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(41) %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__1::basic_string", align 8 ; 12 uses
  %i.a = tail call noundef zeroext i8 @_ZN14BitstreamRange24wait_for_available_bytesEm(ptr noundef nonnull align 8 dereferenceable(41) %2, i64 noundef 6)
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.f, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i8 0, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %i.b, align 1, !tbaa !26
  invoke void @_ZN5ErrorC1E15heif_error_code18heif_suberror_codeRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, i32 noundef 100, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit
  %i.c = load i8, ptr %3, align 8
  %i.d = trunc i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.g = load i64, ptr %3, align 8
  %i.h = and i64 %i.g, -2
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.h) #23
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZN5ErrorC2ERKS_.exit

bb.d:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load i8, ptr %3, align 8
  %i.k = trunc i8 %i.j to i1
  br i1 %i.k, label %bb.e, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit7

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.n = load i64, ptr %3, align 8
  %i.o = and i64 %i.n, -2
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.o) #23
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit7

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit7: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.i

bb.f:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i16 @_ZN14BitstreamRange6read16Ev(ptr noundef nonnull align 8 dereferenceable(41) %2)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.p, ptr %i.q, align 8, !tbaa !27
  %i.r = tail call noundef zeroext i16 @_ZN14BitstreamRange6read16Ev(ptr noundef nonnull align 8 dereferenceable(41) %2)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %i.r, ptr %i.s, align 2, !tbaa !32
  %i.t = tail call noundef zeroext i16 @_ZN14BitstreamRange6read16Ev(ptr noundef nonnull align 8 dereferenceable(41) %2) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i16 %i.t, ptr %i.u, align 4, !tbaa !33
  %i.v = icmp eq i16 %i.t, 0
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.x = zext i1 %i.v to i8
  store i8 %i.x, ptr %i.w, align 2, !tbaa !34
  %i.y = load i64, ptr @_ZN5Error2OkE, align 8
  store i64 %i.y, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), align 8
  %i.ab = trunc i8 %i.aa to i1
end_hunk_0
