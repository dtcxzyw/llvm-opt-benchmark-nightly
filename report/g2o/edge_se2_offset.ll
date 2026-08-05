begin_hunk_0_@_ZNK3g2o13EdgeSE2Offset5writeERSo:bb.a
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.p)
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %i.y = tail call noundef zeroext i1 @_ZNK3g2o8BaseEdgeILi3ENS_3SE2EE22writeInformationMatrixERSo(ptr noundef nonnull align 16 dereferenceable(304) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret i1 %i.y
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o8BaseEdgeILi3ENS_3SE2EE22writeInformationMatrixERSo(ptr noundef nonnull align 16 dereferenceable(304) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load double, ptr %i.a, align 16, !tbaa !56
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.b)
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.f = load double, ptr %i.e, align 8, !tbaa !56
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.f)
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = load double, ptr %i.i, align 16, !tbaa !56
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.j)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.n = load double, ptr %i.m, align 16, !tbaa !56
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.n)
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.r = load double, ptr %i.q, align 8, !tbaa !56
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.r)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.v = load double, ptr %i.u, align 16, !tbaa !56
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.v)
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !42
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %1, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !128
  %i.ae = icmp eq i32 %i.ad, 0
  ret i1 %i.ae
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define void @_ZN3g2o13EdgeSE2Offset12computeErrorEv(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(464) initializes((280, 304)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !125 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load double, ptr %i.a, align 16, !noalias !142 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.sroa.411.16.copyload = load <2 x double>, ptr %i.f, align 16, !tbaa !66
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.h = tail call double @sin(double noundef %i.e) #24, !noalias !145 ; 2 uses
  %i.i = tail call double @cos(double noundef %i.e) #24, !noalias !145 ; 2 uses
  %i.j = fneg double %i.h
  %.sroa.0.0.vec.insert.i.i.i = insertelement <2 x double> poison, double %i.i, i64 0
  %.sroa.0.8.vec.insert.i.i.i = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i, double %i.h, i64 1
  %.sroa.5.16.vec.insert.i.i.i = insertelement <2 x double> poison, double %i.j, i64 0
  %.sroa.5.24.vec.insert.i.i.i = insertelement <2 x double> %.sroa.5.16.vec.insert.i.i.i, double %i.i, i64 1
  %i.k = load <2 x double>, ptr %i.g, align 16, !noalias !150 ; 2 uses
  %i.l = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.m = fmul <2 x double> %.sroa.0.8.vec.insert.i.i.i, %i.l
  %i.n = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.o = fmul <2 x double> %.sroa.5.24.vec.insert.i.i.i, %i.n
  %i.p = fadd <2 x double> %i.m, %i.o
  %i.q = fadd <2 x double> %.sroa.411.16.copyload, %i.p
  %i.r = load double, ptr %i.d, align 16, !tbaa !8, !noalias !142
  %i.s = fadd double %i.e, %i.r
  %i.t = fadd double %i.s, f0x400921FB54442D18
  %i.u = tail call double @fmod(double noundef %i.t, double noundef f0x401921FB54442D18) #24, !noalias !142 ; 2 uses
  %i.v = fcmp ugt double %i.u, 0.000000e+00
  %.0.v.i.i.i = select i1 %i.v, double f0xC00921FB54442D18, double f0x400921FB54442D18
  %.0.i.i.i = fadd double %i.u, %.0.v.i.i.i       ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !126  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.aa = tail call double @sin(double noundef %.0.i.i.i) #24, !noalias !151 ; 2 uses
  %i.ab = tail call double @cos(double noundef %.0.i.i.i) #24, !noalias !151 ; 2 uses
  %i.ac = fneg double %i.aa
  %.sroa.0.0.vec.insert.i.i.i1 = insertelement <2 x double> poison, double %i.ab, i64 0
  %.sroa.0.8.vec.insert.i.i.i2 = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i1, double %i.aa, i64 1
  %.sroa.5.16.vec.insert.i.i.i3 = insertelement <2 x double> poison, double %i.ac, i64 0
  %.sroa.5.24.vec.insert.i.i.i4 = insertelement <2 x double> %.sroa.5.16.vec.insert.i.i.i3, double %i.ab, i64 1
  %i.ad = load <2 x double>, ptr %i.z, align 16, !noalias !158 ; 2 uses
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = fmul <2 x double> %.sroa.0.8.vec.insert.i.i.i2, %i.ae
  %i.ag = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ah = fmul <2 x double> %.sroa.5.24.vec.insert.i.i.i4, %i.ag
  %i.ai = fadd <2 x double> %i.af, %i.ah
  %i.aj = fadd <2 x double> %i.q, %i.ai
  %i.ak = load double, ptr %i.y, align 16, !tbaa !8, !noalias !159
  %i.al = fadd double %.0.i.i.i, %i.ak
  %i.am = fadd double %i.al, f0x400921FB54442D18
  %i.an = tail call double @fmod(double noundef %i.am, double noundef f0x401921FB54442D18) #24, !noalias !159 ; 2 uses
  %i.ao = fcmp ugt double %i.an, 0.000000e+00
  %.0.v.i.i.i5 = select i1 %i.ao, double f0xC00921FB54442D18, double f0x400921FB54442D18
  %.0.i.i.i6 = fadd double %i.an, %.0.v.i.i.i5
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 280
  store <2 x double> %i.aj, ptr %i.ap, align 8, !tbaa !66
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 296
  store double %.0.i.i.i6, ptr %i.aq, align 8, !tbaa !56
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3g2o13EdgeSE2Offset23setMeasurementFromStateEv(ptr noundef nonnull align 16 dereferenceable(464) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.g2o::SE2", align 16         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !125 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !126  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.g = load double, ptr %i.c, align 16, !noalias !160 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, ptr noundef nonnull align 16 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !163
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.k = tail call double @sin(double noundef %i.g) #24, !noalias !164 ; 2 uses
  %i.l = tail call double @cos(double noundef %i.g) #24, !noalias !164 ; 2 uses
  %i.m = fneg double %i.k
  %.sroa.0.0.vec.insert.i.i.i = insertelement <2 x double> poison, double %i.l, i64 0
  %.sroa.0.8.vec.insert.i.i.i = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i, double %i.k, i64 1
  %.sroa.5.16.vec.insert.i.i.i = insertelement <2 x double> poison, double %i.m, i64 0
  %.sroa.5.24.vec.insert.i.i.i = insertelement <2 x double> %.sroa.5.16.vec.insert.i.i.i, double %i.l, i64 1
  %i.n = load <2 x double>, ptr %i.j, align 16, !noalias !169 ; 2 uses
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = fmul <2 x double> %.sroa.0.8.vec.insert.i.i.i, %i.o
  %i.q = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.r = fmul <2 x double> %.sroa.5.24.vec.insert.i.i.i, %i.q
  %i.s = fadd <2 x double> %i.p, %i.r
  %i.t = load <2 x double>, ptr %i.h, align 16, !tbaa !66, !alias.scope !160
  %i.u = fadd <2 x double> %i.t, %i.s
  store <2 x double> %i.u, ptr %i.h, align 16, !tbaa !66, !alias.scope !160
  %i.v = load double, ptr %i.f, align 16, !tbaa !8, !noalias !160
  %i.w = fadd double %i.g, %i.v
  %i.x = fadd double %i.w, f0x400921FB54442D18
  %i.y = tail call double @fmod(double noundef %i.x, double noundef f0x401921FB54442D18) #24, !noalias !160 ; 2 uses
  %i.z = fcmp ugt double %i.y, 0.000000e+00
  %.0.v.i.i.i = select i1 %i.z, double f0xC00921FB54442D18, double f0x400921FB54442D18
  %.0.i.i.i = fadd double %i.y, %.0.v.i.i.i
  store double %.0.i.i.i, ptr %1, align 16, !tbaa !56, !alias.scope !160
  %i.aa = load ptr, ptr %0, align 16, !tbaa !42
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 208
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 16 dereferenceable(464) %0, ptr noundef nonnull align 16 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o13EdgeSE2Offset15initialEstimateERKSt3setIPNS_10HyperGraph6VertexESt4lessIS4_ESaIS4_EEPNS_16OptimizableGraph6VertexE(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(464) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %1, ptr nofree readnone captures(none) %2) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !125
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !170  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.l = load double, ptr %i.j, align 16, !noalias !188 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.445.16.copyload = load <2 x double>, ptr %i.m, align 16, !tbaa !66
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.o = tail call double @sin(double noundef %i.l) #24, !noalias !191 ; 2 uses
  %i.p = tail call double @cos(double noundef %i.l) #24, !noalias !191 ; 2 uses
  %i.q = fneg double %i.o
  %.sroa.0.0.vec.insert.i.i.i = insertelement <2 x double> poison, double %i.p, i64 0
  %.sroa.0.8.vec.insert.i.i.i = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i, double %i.o, i64 1
  %.sroa.5.16.vec.insert.i.i.i = insertelement <2 x double> poison, double %i.q, i64 0
  %.sroa.5.24.vec.insert.i.i.i = insertelement <2 x double> %.sroa.5.16.vec.insert.i.i.i, double %i.p, i64 1
  %i.r = load <2 x double>, ptr %i.n, align 16, !noalias !196 ; 2 uses
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x double> %.sroa.0.8.vec.insert.i.i.i, %i.s
  %i.u = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.v = fmul <2 x double> %.sroa.5.24.vec.insert.i.i.i, %i.u
  %i.w = fadd <2 x double> %i.t, %i.v
  %i.x = fadd <2 x double> %.sroa.445.16.copyload, %i.w
  %i.y = load double, ptr %i.k, align 16, !tbaa !8, !noalias !188
  %i.z = fadd double %i.l, %i.y
  %i.aa = fadd double %i.z, f0x400921FB54442D18
  %i.ab = tail call double @fmod(double noundef %i.aa, double noundef f0x401921FB54442D18) #24, !noalias !188 ; 2 uses
  %i.ac = fcmp ugt double %i.ab, 0.000000e+00
  %.0.v.i.i.i = select i1 %i.ac, double f0xC00921FB54442D18, double f0x400921FB54442D18
  %.0.i.i.i = fadd double %i.ab, %.0.v.i.i.i      ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !126
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !170 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !8, !noalias !197
  %i.aj = fsub double f0x400921FB54442D18, %i.ai
  %i.ak = tail call double @fmod(double noundef %i.aj, double noundef f0x401921FB54442D18) #24, !noalias !197 ; 2 uses
  %i.al = fcmp ugt double %i.ak, 0.000000e+00
  %.0.v.i.i = select i1 %i.al, double f0xC00921FB54442D18, double f0x400921FB54442D18
  %.0.i.i = fadd double %i.ak, %.0.v.i.i          ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.an = tail call double @sin(double noundef %.0.i.i) #24, !noalias !200 ; 2 uses
  %i.ao = tail call double @cos(double noundef %.0.i.i) #24, !noalias !200 ; 2 uses
  %i.ap = fneg double %i.an
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.ao, i64 0
  %.sroa.0.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i.i, double %i.an, i64 1
  %.sroa.5.16.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.ap, i64 0
  %.sroa.5.24.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.5.16.vec.insert.i.i.i.i, double %i.ao, i64 1
  %3 = load double, ptr %i.am, align 8, !tbaa !56, !noalias !211
  %4 = fneg double %3
  %5 = insertelement <2 x double> poison, double %4, i64 0
  %i.aq = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x double> %.sroa.0.8.vec.insert.i.i.i.i, %i.aq
  %6 = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %7 = load double, ptr %6, align 8, !tbaa !56, !noalias !211
  %8 = fneg double %7
  %9 = insertelement <2 x double> poison, double %8, i64 0
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %i.as = fmul <2 x double> %.sroa.5.24.vec.insert.i.i.i.i, %10
  %i.at = fadd <2 x double> %i.ar, %i.as          ; 2 uses
  %i.au = tail call double @sin(double noundef %.0.i.i.i) #24, !noalias !212 ; 2 uses
  %i.av = tail call double @cos(double noundef %.0.i.i.i) #24, !noalias !212 ; 2 uses
  %i.aw = fneg double %i.au
  %.sroa.0.0.vec.insert.i.i.i7 = insertelement <2 x double> poison, double %i.av, i64 0
  %.sroa.0.8.vec.insert.i.i.i8 = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i7, double %i.au, i64 1
  %.sroa.5.16.vec.insert.i.i.i9 = insertelement <2 x double> poison, double %i.aw, i64 0
  %.sroa.5.24.vec.insert.i.i.i10 = insertelement <2 x double> %.sroa.5.16.vec.insert.i.i.i9, double %i.av, i64 1
  %i.ax = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = fmul <2 x double> %.sroa.0.8.vec.insert.i.i.i8, %i.ax
  %i.az = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ba = fmul <2 x double> %.sroa.5.24.vec.insert.i.i.i10, %i.az
  %i.bb = fadd <2 x double> %i.ay, %i.ba
  %i.bc = fadd <2 x double> %i.x, %i.bb           ; 4 uses
  %i.bd = fadd double %.0.i.i.i, %.0.i.i
  %i.be = fadd double %i.bd, f0x400921FB54442D18
  %i.bf = tail call double @fmod(double noundef %i.be, double noundef f0x401921FB54442D18) #24, !noalias !219 ; 2 uses
  %i.bg = fcmp ugt double %i.bf, 0.000000e+00
  %.0.v.i.i.i11 = select i1 %i.bg, double f0xC00921FB54442D18, double f0x400921FB54442D18
  %.0.i.i.i12 = fadd double %i.bf, %.0.v.i.i.i11  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !220 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not10.i.i.i, label %_ZNKSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.bi, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.bj, %bb.a ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !50
  %i.bm = icmp ult ptr %i.bl, %i.c                ; 2 uses
  %.19.i.i.i = select i1 %i.bm, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.bm, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !225 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIPN3g2o10HyperGraph6VertexES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !226

_ZNKSt8_Rb_treeIPN3g2o10HyperGraph6VertexES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.bn = icmp eq ptr %.19.i.i.i, %i.bj
  br i1 %i.bn, label %_ZNKSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread, label %_ZNKSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE5countERKS3_.exit

_ZNKSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE5countERKS3_.exit: ; preds = %_ZNKSt8_Rb_treeIPN3g2o10HyperGraph6VertexES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !50
  %.not54 = icmp ult ptr %i.c, %i.bp
  br i1 %.not54, label %_ZNKSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNKSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE5countERKS3_.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.br = load double, ptr %i.bq, align 16, !noalias !227 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %.sroa.438.16.copyload = load <2 x double>, ptr %i.bs, align 16, !tbaa !66
  %i.bt = tail call double @sin(double noundef %i.br) #24, !noalias !230 ; 2 uses
  %i.bu = tail call double @cos(double noundef %i.br) #24, !noalias !230 ; 2 uses
  %i.bv = fneg double %i.bt
  %.sroa.0.0.vec.insert.i.i.i13 = insertelement <2 x double> poison, double %i.bu, i64 0
  %.sroa.0.8.vec.insert.i.i.i14 = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i13, double %i.bt, i64 1
  %.sroa.5.16.vec.insert.i.i.i15 = insertelement <2 x double> poison, double %i.bv, i64 0
  %.sroa.5.24.vec.insert.i.i.i16 = insertelement <2 x double> %.sroa.5.16.vec.insert.i.i.i15, double %i.bu, i64 1
  %i.bw = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bx = fmul <2 x double> %i.bw, %.sroa.0.8.vec.insert.i.i.i14
  %i.by = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bz = fmul <2 x double> %i.by, %.sroa.5.24.vec.insert.i.i.i16
  %i.ca = fadd <2 x double> %i.bz, %i.bx
  %i.cb = fadd <2 x double> %.sroa.438.16.copyload, %i.ca
  %i.cc = fadd double %.0.i.i.i12, %i.br
  br label %bb.c

_ZNKSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread: ; preds = %_ZNKSt8_Rb_treeIPN3g2o10HyperGraph6VertexES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i, %bb.a, %_ZNKSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE5countERKS3_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.ce = fsub double f0x400921FB54442D18, %.0.i.i.i12
  %i.cf = tail call double @fmod(double noundef %i.ce, double noundef f0x401921FB54442D18) #24, !noalias !235 ; 2 uses
  %i.cg = fcmp ugt double %i.cf, 0.000000e+00
  %.0.v.i.i19 = select i1 %i.cg, double f0xC00921FB54442D18, double f0x400921FB54442D18
  %.0.i.i20 = fadd double %i.cf, %.0.v.i.i19      ; 3 uses
  %i.ch = tail call double @sin(double noundef %.0.i.i20) #24, !noalias !238 ; 2 uses
  %i.ci = tail call double @cos(double noundef %.0.i.i20) #24, !noalias !238 ; 2 uses
  %i.cj = fneg double %i.ch
  %.sroa.0.0.vec.insert.i.i.i.i21 = insertelement <2 x double> poison, double %i.ci, i64 0
  %.sroa.0.8.vec.insert.i.i.i.i22 = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i.i21, double %i.ch, i64 1
  %.sroa.5.16.vec.insert.i.i.i.i23 = insertelement <2 x double> poison, double %i.cj, i64 0
  %.sroa.5.24.vec.insert.i.i.i.i24 = insertelement <2 x double> %.sroa.5.16.vec.insert.i.i.i.i23, double %i.ci, i64 1
  %.sroa.549.16.vec.extract = extractelement <2 x double> %i.bc, i64 0
  %i.ck = fneg double %.sroa.549.16.vec.extract
  %i.cl = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cn = fmul <2 x double> %i.cm, %.sroa.0.8.vec.insert.i.i.i.i22
  %i.co = fneg <2 x double> %i.bc
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cq = fmul <2 x double> %i.cp, %.sroa.5.24.vec.insert.i.i.i.i24
  %i.cr = fadd <2 x double> %i.cq, %i.cn          ; 2 uses
  %i.cs = load double, ptr %i.cd, align 16, !noalias !249 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %.sroa.434.16.copyload = load <2 x double>, ptr %i.ct, align 16, !tbaa !66
  %i.cu = tail call double @sin(double noundef %i.cs) #24, !noalias !252 ; 2 uses
  %i.cv = tail call double @cos(double noundef %i.cs) #24, !noalias !252 ; 2 uses
  %i.cw = fneg double %i.cu
  %.sroa.0.0.vec.insert.i.i.i25 = insertelement <2 x double> poison, double %i.cv, i64 0
  %.sroa.0.8.vec.insert.i.i.i26 = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i25, double %i.cu, i64 1
  %.sroa.5.16.vec.insert.i.i.i27 = insertelement <2 x double> poison, double %i.cw, i64 0
  %.sroa.5.24.vec.insert.i.i.i28 = insertelement <2 x double> %.sroa.5.16.vec.insert.i.i.i27, double %i.cv, i64 1
  %i.cx = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cy = fmul <2 x double> %i.cx, %.sroa.0.8.vec.insert.i.i.i26
  %i.cz = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.da = fmul <2 x double> %.sroa.5.24.vec.insert.i.i.i28, %i.cz
  %i.db = fadd <2 x double> %i.da, %i.cy
  %i.dc = fadd <2 x double> %.sroa.434.16.copyload, %i.db
  %i.dd = fadd double %.0.i.i20, %i.cs
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread, %bb.b
  %.sink69 = phi double [ %i.dd, %_ZNKSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread ], [ %i.cc, %bb.b ]
  %.sink64 = phi ptr [ %i.c, %_ZNKSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread ], [ %i.e, %bb.b ] ; 4 uses
  %.sink60 = phi <2 x double> [ %i.dc, %_ZNKSt3setIPN3g2o10HyperGraph6VertexESt4lessIS3_ESaIS3_EE5countERKS3_.exit.thread ], [ %i.cb, %bb.b ]
  %i.de = fadd double %.sink69, f0x400921FB54442D18
  %i.df = tail call double @fmod(double noundef %i.de, double noundef f0x401921FB54442D18) #24, !noalias !257 ; 2 uses
  %i.dg = fcmp ugt double %i.df, 0.000000e+00
  %.0.v.i.i.i29 = select i1 %i.dg, double f0xC00921FB54442D18, double f0x400921FB54442D18
  %.0.i.i.i30 = fadd double %i.df, %.0.v.i.i.i29
  %i.dh = getelementptr inbounds nuw i8, ptr %.sink64, i64 176
  store double %.0.i.i.i30, ptr %i.dh, align 16
  %i.di = getelementptr inbounds nuw i8, ptr %.sink64, i64 192
  store <2 x double> %.sink60, ptr %i.di, align 16, !tbaa !66
  %i.dj = load ptr, ptr %.sink64, align 16, !tbaa !42
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 216
  %i.dl = load ptr, ptr %i.dk, align 8
  tail call void %i.dl(ptr noundef nonnull align 16 dereferenceable(232) %.sink64)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o13EdgeSE2OffsetD0Ev(ptr noundef nonnull align 16 dereferenceable(464) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o16OptimizableGraph4EdgeD2Ev(ptr noundef nonnull align 16 dead_on_return(464) dereferenceable(464) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 464) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10HyperGraph4Edge11elementTypeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi3ENS_3SE2EJNS_9VertexSE2ES2_EE6resizeEm(ptr noundef nonnull align 16 dereferenceable(376) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o10HyperGraph4Edge6resizeEm(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o18BaseFixedSizedEdgeILi3ENS_3SE2EJNS_9VertexSE2ES2_EE16allVerticesFixedEv(ptr noundef nonnull align 16 dereferenceable(376) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.e = load i8, ptr %i.d, align 4, !tbaa !258, !range !268, !noundef !257
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZNK3g2o18BaseFixedSizedEdgeILi3ENS_3SE2EJNS_9VertexSE2ES2_EE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 100
  %i.j = load i8, ptr %i.i, align 4, !tbaa !258, !range !268, !noundef !257
  %i.k = trunc nuw i8 %i.j to i1
  br label %_ZNK3g2o18BaseFixedSizedEdgeILi3ENS_3SE2EJNS_9VertexSE2ES2_EE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit

_ZNK3g2o18BaseFixedSizedEdgeILi3ENS_3SE2EJNS_9VertexSE2ES2_EE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit: ; preds = %bb.a, %bb.b
  %i.l = phi i1 [ false, %bb.a ], [ %i.k, %bb.b ]
  ret i1 %i.l
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o13EdgeSE2Offset18setMeasurementDataEPKd(ptr noundef nonnull align 16 dereferenceable(464) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load <2 x double>, ptr %1, align 1, !tbaa !66 ; 3 uses
  %i.c = getelementptr i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  %.sroa.03.0.vec.extract = extractelement <2 x double> %i.b, i64 0
  store i64 %i.d, ptr %i.a, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <2 x double> %i.b, ptr %i.e, align 16
  %.cast = bitcast i64 %i.d to double
  %i.f = fsub double f0x400921FB54442D18, %.cast
  %i.g = tail call double @fmod(double noundef %i.f, double noundef f0x401921FB54442D18) #24, !noalias !269 ; 2 uses
  %i.h = fcmp ugt double %i.g, 0.000000e+00
  %.0.v.i.i = select i1 %i.h, double f0xC00921FB54442D18, double f0x400921FB54442D18
  %.0.i.i = fadd double %i.g, %.0.v.i.i           ; 3 uses
  %i.i = tail call double @sin(double noundef %.0.i.i) #24, !noalias !272 ; 2 uses
  %i.j = tail call double @cos(double noundef %.0.i.i) #24, !noalias !272 ; 2 uses
  %i.k = fneg double %i.i
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.j, i64 0
  %.sroa.0.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i.i, double %i.i, i64 1
  %.sroa.5.16.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.k, i64 0
end_hunk_0
